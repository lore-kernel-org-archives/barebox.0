Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4MNS-0005Bn-5u
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 04:52:07 +0000
Date: Mon, 15 Jun 2015 06:51:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150615045139.GI6325@pengutronix.de>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-3-git-send-email-s.hauer@pengutronix.de>
 <87fv5xi56n.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fv5xi56n.fsf@dell.be.48ers.dk>
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
Subject: Re: [PATCH 2/4] barebox remote control
To: Peter Korsgaard <peter@korsgaard.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Peter,

On Fri, Jun 12, 2015 at 12:36:48PM +0200, Peter Korsgaard wrote:
> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> Hi,
> 
>  > This adds the ability to control barebox over serial lines. The regular
>  > console is designed for human input and is unsuitable for controlling
>  > barebox from scripts since characters can be lost on both ends, the data
>  > stream contains escape sequences and the prompt cannot be easily matched
>  > upon.
>  > This approach is based on the RATP protocol. RATP packages start with a
>  > binary 0x01 which does not occur in normal console data. Whenever a
>  > 0x01 character is detected in the console barebox goes into RATP mode.
>  > The RATP packets contain a simple structure with a command/respone
>  > type and data for that type. Currently defined types are:
> 
> 
> > +int barebox_ratp(struct console_device *cdev)
>  > +{
>  > +	void *buf = xmalloc(512);
>  > +	int ret;
>  > +	size_t len;
>  > +	struct ratp_ctx *ctx;
>  > +	struct ratp *ratp;
>  > +
>  > +	ctx = xzalloc(sizeof(*ctx));
>  > +	ratp = &ctx->ratp;
>  > +
>  > +	ratp->send = ratp_send;
>  > +	ratp->recv = ratp_recv;
>  > +	ctx->cdev = cdev;
>  > +
>  > +	ret = ratp_establish(ratp, false, 0);
>  > +	if (ret < 0)
>  > +		return ret;
>  > +
>  > +	ret = ratp_console_register(ctx);
>  > +	if (ret)
>  > +		return ret;
> 
> You're leaking ctx and buf here (and buf below as well).

Thanks, will fix.

> 
>  > +
>  > +	while (1) {
>  > +		ret = ratp_poll(ratp);
>  > +		if (ret == -EINTR)
>  > +			goto out;
>  > +		if (ratp_closed(ratp))
>  > +			goto out;
>  > +
>  > +		len = 512;
>  > +		ret = ratp_recv_data(ratp, buf, &len);
>  > +		if (ret == -EAGAIN)
>  > +			continue;
>  > +
>  > +		if (ret < 0)
>  > +			goto out;
>  > +
>  > +		ret = ratp_bb_dispatch(ctx, buf, len);
>  > +		if (ret)
>  > +			break;
>  > +	}
>  > +out:
>  > +
>  > +	console_unregister(&ctx->ratp_console);
>  > +
>  > +	free(ctx);
>  > +
>  > +	return ret;
>  > +}
> 
> 
> > +++ b/crypto/Kconfig
>  > @@ -2,6 +2,7 @@ config CRC32
>  >  	bool
>  
>  >  config CRC16
>  > +	default y
> 
> Why?

This is not necessary, it's a leftover from development.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
