Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ej6Lt-00070E-Kg
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 16:44:15 +0000
Received: by mail-wm0-x236.google.com with SMTP id r78so5136287wme.0
 for <barebox@lists.infradead.org>; Tue, 06 Feb 2018 08:44:02 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180206092439.vt3h5us4z2d3zywq@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180206092439.vt3h5us4z2d3zywq@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 6 Feb 2018 17:43:40 +0100
Message-ID: <CAAP7ucJpAKqBaDTPTw8OwG38GUred+4KROri3BCxWt8f0HDqTg@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 00/10] ratp: new generic RATP command support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>
>> The first patches (1-5) break the current RATP API, by introducing
>> the concept of requests, responses and indications:
>>  * Requests sent to one endpoint are expected to be replied with
>>    a response by the peer endpoint.
>>  * Indications are messages sent from one endpoint to another which
>>    are not expected to be replied.
>
> I do not see why we have to break the RATP API. I mean currently we
> have BB_RATP_TYPE_COMMAND and BB_RATP_TYPE_COMMAND_RETURN which you
> convert to .type = BB_RATP_TYPE_COMMAND, .flags = 0 | RESPONSE.
>
> I see that using flags looks somewhat nicer, but besides of that,
> what is your selling point to break the API?
>

Well, it was just easier to say "if I send a request of type X, I
expect back a response of the same type X". It avoids the need of
having to define which command id is expected as response for which
command id request. I don't think I have any other selling point :)
Being so early in the amount of commands we have in RATP, thought this
could be a good improvement. Maybe I'm biased because I'm used to
talking to mobile broadband modems, and that is how all protocols I
know are defined. That said, changing this to keep the API would still
be very easy, it's no big deal.

-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
