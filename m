Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z3MKo-0001NK-5d
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 10:37:17 +0000
Received: by wiwd19 with SMTP id d19so14438247wiw.0
 for <barebox@lists.infradead.org>; Fri, 12 Jun 2015 03:36:51 -0700 (PDT)
From: Peter Korsgaard <peter@korsgaard.com>
References: <1434005650-28131-1-git-send-email-s.hauer@pengutronix.de>
 <1434005650-28131-3-git-send-email-s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 12:36:48 +0200
In-Reply-To: <1434005650-28131-3-git-send-email-s.hauer@pengutronix.de>
 (Sascha Hauer's message of "Thu, 11 Jun 2015 08:54:08 +0200")
Message-ID: <87fv5xi56n.fsf@dell.be.48ers.dk>
MIME-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

Hi,

 > This adds the ability to control barebox over serial lines. The regular
 > console is designed for human input and is unsuitable for controlling
 > barebox from scripts since characters can be lost on both ends, the data
 > stream contains escape sequences and the prompt cannot be easily matched
 > upon.
 > This approach is based on the RATP protocol. RATP packages start with a
 > binary 0x01 which does not occur in normal console data. Whenever a
 > 0x01 character is detected in the console barebox goes into RATP mode.
 > The RATP packets contain a simple structure with a command/respone
 > type and data for that type. Currently defined types are:


> +int barebox_ratp(struct console_device *cdev)
 > +{
 > +	void *buf = xmalloc(512);
 > +	int ret;
 > +	size_t len;
 > +	struct ratp_ctx *ctx;
 > +	struct ratp *ratp;
 > +
 > +	ctx = xzalloc(sizeof(*ctx));
 > +	ratp = &ctx->ratp;
 > +
 > +	ratp->send = ratp_send;
 > +	ratp->recv = ratp_recv;
 > +	ctx->cdev = cdev;
 > +
 > +	ret = ratp_establish(ratp, false, 0);
 > +	if (ret < 0)
 > +		return ret;
 > +
 > +	ret = ratp_console_register(ctx);
 > +	if (ret)
 > +		return ret;

You're leaking ctx and buf here (and buf below as well).

 > +
 > +	while (1) {
 > +		ret = ratp_poll(ratp);
 > +		if (ret == -EINTR)
 > +			goto out;
 > +		if (ratp_closed(ratp))
 > +			goto out;
 > +
 > +		len = 512;
 > +		ret = ratp_recv_data(ratp, buf, &len);
 > +		if (ret == -EAGAIN)
 > +			continue;
 > +
 > +		if (ret < 0)
 > +			goto out;
 > +
 > +		ret = ratp_bb_dispatch(ctx, buf, len);
 > +		if (ret)
 > +			break;
 > +	}
 > +out:
 > +
 > +	console_unregister(&ctx->ratp_console);
 > +
 > +	free(ctx);
 > +
 > +	return ret;
 > +}


> +++ b/crypto/Kconfig
 > @@ -2,6 +2,7 @@ config CRC32
 >  	bool
 
 >  config CRC16
 > +	default y

Why?

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
