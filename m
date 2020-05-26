Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdSfe-0003zF-Oe
 for barebox@lists.infradead.org; Tue, 26 May 2020 06:02:40 +0000
Date: Tue, 26 May 2020 08:02:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200526060235.GT11869@pengutronix.de>
References: <20200525103349.19449-1-s.hauer@pengutronix.de>
 <20200525103349.19449-21-s.hauer@pengutronix.de>
 <15f6548d-e48c-5202-1cf6-d806846b2ba7@emlix.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15f6548d-e48c-5202-1cf6-d806846b2ba7@emlix.com>
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
To: Daniel =?iso-8859-15?Q?Gl=F6ckner?= <dg@emlix.com>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

On Mon, May 25, 2020 at 09:45:49PM +0200, Daniel Gl=F6ckner wrote:
> Hello Sascha,
> =

> Am 25.05.20 um 12:33 schrieb Sascha Hauer:
> > This removes the may_send mechanism from fastboot over UDP. Without this
> > fastboot transfers get stuck when on the command line something like
> > "sleep 10" is executed before or during a fastboot session. In this case
> > while (fbn->may_send =3D=3D MAY_NOT_SEND) will never become false and
> > barebox is cought in that loop.
> =

> I am not able to reproduce the problem you have without this patch.
> If I start "sleep 10" on the serial console and then use fastboot to
> execute something else, the host will repeat the UDP packet with the
> command until the sleep is over. At that point the board sends an ACK
> packet and starts to execute the command.
> =

> Starting a big download and then executing sleep 10 on the console
> also works. The download continues while sleep is executing. Only the
> "Downloading XXXX bytes finished" info message and the final "OKAY"
> packet are delayed by the sleep since that is done from inside the
> poller.

Same here. It turned out that barebox got stuck because of the
idle_slice_acquire/release I had removed from common/poller.c. With
these added back it works as expected. Sorry for the noise.

> =

> What were the exact commands you used to trigger the problem?
> What kind of network connection do you use?
> =

> I know that Barebox will get stuck when the host stops talking to us
> before we had the opportunity to send the final OKAY, but that is not
> what you describe. If you use a sleep 100, the host will time out
> before the sleep is done. After the sleep the command is still in
> fbn->command, so it will be acked and executed. Since the host no
> longer talks to us, it will not send us an empty packet with the next
> sequence number, so the loop in fastboot_write_net will never terminate.
> =

> The only way to get out of this situation with the current code
> (omitting patch 20) is to start a new fastboot session. The INIT packet
> of the new session will set reinit to true, which discards all messages
> the old session wants to send. If this is not acceptable, I suggest
> adding a timeout >=3D 60 seconds to that loop in fastboot_write_net and
> setting reinit when it expires. We can make the timeout a kconfig option
> which defaults to 60 if you prefer.

Yes, we should add a timeout to this loop. Being stuck in an endless
loop never is a good user experience. How about this?

| diff --git a/net/fastboot.c b/net/fastboot.c
| index 42c432c678..f579666335 100644
| --- a/net/fastboot.c
| +++ b/net/fastboot.c
| @@ -144,12 +144,29 @@ static int fastboot_write_net(struct fastboot *fb, =
const char *buf,
|  	struct fastboot_header response_header;
|  	uchar *packet;
|  	uchar *packet_base;
| +	uint64_t start;
| +	int selapsed =3D 5;
|  =

|  	if (fbn->reinit)
|  		return 0;
|  =

| +	start =3D get_time_ns();
| +
|  	while (fbn->may_send =3D=3D MAY_NOT_SEND) {
|  		poller_call();
| +
| +		if (is_timeout(start, selapsed * SECOND)) {
| +			pr_err("No fastboot packet from host for %d seconds\n",
| +			       selapsed);
| +
| +			if (selapsed > 60) {
| +				pr_err("Giving up\n");
| +				fbn->reinit =3D true;
| +			}
| +
| +			selapsed +=3D 5;
| +		}
| +
|  		if (fbn->reinit)
|  			return 0;
|  	}

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
