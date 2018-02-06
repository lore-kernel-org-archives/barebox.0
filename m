Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ej6RD-0000q0-Di
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 16:49:45 +0000
Received: by mail-wm0-x22e.google.com with SMTP id 143so4996710wma.5
 for <barebox@lists.infradead.org>; Tue, 06 Feb 2018 08:49:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20180206093002.nzokloyjtn7g46l5@pengutronix.de>
References: <20180202111442.12444-1-aleksander@aleksander.es>
 <20180202111442.12444-7-aleksander@aleksander.es>
 <20180206093002.nzokloyjtn7g46l5@pengutronix.de>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 6 Feb 2018 17:49:10 +0100
Message-ID: <CAAP7uc+Mt=u1Tnua3Dgq3-5nHs8C6jFX6JnqwsFKcMcJt4vOkw@mail.gmail.com>
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
Subject: Re: [PATCH 06/10] ratp: implement generic command support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> +
>> +#define BAREBOX_RATP_CMD_START(_name)                                                        \
>> +extern const struct ratp_command __barebox_cmd_##_name;                                      \
>
> You shouldn't use the same name as the existing barebox commands,
> otherwise there might be name clashes. Add some _ratp_ to it.
>

Ah, sure.

>> +const struct ratp_command __barebox_cmd_##_name                                              \
>> +     __attribute__ ((unused,section (".barebox_ratp_cmd_" __stringify(_name)))) = {  \
>> +     .id             = BB_RATP_TYPE_##_name,
>
> I am not sure if I like the magic construction of the id field. Being
> able to grep for BB_RATP_TYPE_PING and finding the user has advantages.
> How about manually setting the field in the body of the command instead
> of constructing it?
>

You mean doing this instead?

BAREBOX_RATP_CMD_START(PING)
    .cmd = ratp_cmd_ping,
    .id = BB_RATP_TYPE_PING
BAREBOX_RATP_CMD_END


-- 
Aleksander
https://aleksander.es

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
