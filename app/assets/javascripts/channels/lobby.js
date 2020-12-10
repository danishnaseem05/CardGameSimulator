const subscribe_to_room = function(room_number) {
    console.log("Hi, welcome to " + room_number);
    App.lobby = App.cable.subscriptions.create({
            channel: "LobbyChannel",
            room: room_number
        },
        {
            connected() {
                // Called when the subscription is ready for use on the server

            },
            disconnected() {
                // Called when the subscription has been terminated by the server

            },
            received(data) {
                // Called when there's incoming data on the websocket for this channel
                // for each data['pile'], updated cards
                let transferReload = document.getElementById('transferCardsPopup').style.display === "";
                console.log($('#transfer_cards_details_header').attr('data-source-pile'))
                console.log(data['pile'])
                let transferID = data['pile']===$('#transfer_cards_details_header').attr('data-source-pile')
                if(transferReload && transferID){
                    $.ajax({
                        type: 'GET',
                        url: $('#pile_detail').parent().attr('action'),
                        timeout: 50000,
                        success: updateTransferPopup,
                        error: function(xhrObj, testStatus, exception) { alert('Error!'); }
                    });
                }else{
                    $.ajax({
                        type: 'GET',
                        url: "/rooms/"+String(room_number),
                        timeout: 50000,
                        success: updateLobby,
                        error: function(xhrObj, testStatus, exception) { alert('Error!'); }
                    });
                }

            }
        }
    );
};
let updateLobby = function(data, xhrObj, testStatus){
    //------------- PreCondition ---------------

    // Show cards center-top table
    let saveValue = -1
    for (let i = 0; i < $('#card-table tr').length; i++) {
        if(String($("tr#"+String(i)).css("display")) === "block"){
            saveValue = i;
            break;
        }
    }

    // General Popups
    let stateReload = null;
    let stateId = null;
    $('.popup').each(()=>{
        if($(this).css('display') == "" || $(this).css('display') == "block"){
            stateReload = $(this).html();
            stateId = this.id;
        }
    });


    //------------ Reset game room ----------------
    $("#game-room").empty().html(data);


    //------------ Post Condition -------------

    // Show piles
    if(saveValue !== -1){
        $("tr#"+String(saveValue)).css("display", "block")
    }


    // General Popup
    if(stateReload != null){
        $('#'+stateId).html(stateReload)
        document.getElementById(stateId).style.display="";
    }


}

let updateTransferPopup = (data, xhrObj, testStatus) => {
    $('#transferCardsPopup').empty().html(data).show();
}