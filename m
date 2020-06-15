Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jks6D-00015R-Cm
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 16:36:48 +0000
References: <20200525103349.19449-1-s.hauer@pengutronix.de>
 <20200525103349.19449-21-s.hauer@pengutronix.de>
 <15f6548d-e48c-5202-1cf6-d806846b2ba7@emlix.com>
 <20200526060235.GT11869@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <bbfa7ccc-8a6d-5bed-c610-ce34d9611d33@emlix.com>
Date: Mon, 15 Jun 2020 18:36:36 +0200
MIME-Version: 1.0
In-Reply-To: <20200526060235.GT11869@pengutronix.de>
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 20/20] fastboot net: remove may_send
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hello Sascha,

Am 26.05.20 um 08:02 schrieb Sascha Hauer:
> On Mon, May 25, 2020 at 09:45:49PM +0200, Daniel Gl=F6ckner wrote:
>> I know that Barebox will get stuck when the host stops talking to us
>> before we had the opportunity to send the final OKAY, but that is not
>> what you describe. If you use a sleep 100, the host will time out
>> before the sleep is done. After the sleep the command is still in
>> fbn->command, so it will be acked and executed. Since the host no
>> longer talks to us, it will not send us an empty packet with the next
>> sequence number, so the loop in fastboot_write_net will never terminate.
>>
>> The only way to get out of this situation with the current code
>> (omitting patch 20) is to start a new fastboot session. The INIT packet
>> of the new session will set reinit to true, which discards all messages
>> the old session wants to send. If this is not acceptable, I suggest
>> adding a timeout >=3D 60 seconds to that loop in fastboot_write_net and
>> setting reinit when it expires. We can make the timeout a kconfig option
>> which defaults to 60 if you prefer.
> =

> Yes, we should add a timeout to this loop. Being stuck in an endless
> loop never is a good user experience. How about this?

In this special case setting reinit might have been enough (because
active_download must be false when we want to send a message while
may_send =3D=3D MAY_NOT_SEND, fastboot.active doesn't really matter, and
command[0] will be cleared once we exit from fastboot_exec_cmd), but
there were other situations that didn't correctly handle connection
timeout/abort. That's why I reworked and unified these parts.

I liked your idea of printing a message every 5 seconds and integrated
it almost unchanged.

Patch series follows in a moment.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
