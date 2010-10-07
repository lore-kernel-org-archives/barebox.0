Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P3ueF-0003Iv-Lm
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 17:52:56 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 7 Oct 2010 19:51:24 +0200
References: <1286457858-29771-1-git-send-email-jbe@pengutronix.de>
	<1286457858-29771-8-git-send-email-jbe@pengutronix.de>
	<20101007171003.GK28242@pengutronix.de>
In-Reply-To: <20101007171003.GK28242@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010071951.24867.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/7] Add S3C2440 MCI card support
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> [...]
> > +#define CLOCKRATE_MIN (1 * 1000 * 1000)
>
> Isn't this a bit high? I thought the initialization frequnency should be
> 400Khz at maximum. Or does the hardware not allow lower rates?

I see you know more about MCI cards than me. This limit is a new fact to me.

Maybe this is the reason why the old 16 MiB MMC fails... will check.

And no: There is *mostly* no limit for the minimal clockrate. I should 
calculate it at runtime, because it depends on some other settings in the 
clock tree. In the i.MX23 driver I do so already.

> [...]
> > +/**
> > + * Prepare engine's bits for the next command transfer
> > + * @param cmd_flags MCI's command flags
> > + * @param data_flags MCI's data flags
> > + * @return Register bits for this transfer
> > + */
> > +static uint32_t s3c_prepare_command_setup(unsigned cmd_flags, unsigned
> > data_flags) +{
> > +	uint32_t reg;
> > +
> > +	/* source (=host) */
> > +	reg = SDICMDCON_SENDERHOST;
> > +
> > +	if (cmd_flags & MMC_RSP_PRESENT) {
> > +		reg |= SDICMDCON_WAITRSP;
> > +		pr_debug("Command with response\n");
> > +	}
> > +	if (cmd_flags & MMC_RSP_136) {
> > +		reg |= SDICMDCON_LONGRSP;
> > +		pr_debug("Command with long response\n");
> > +	}
> > +	if (cmd_flags & MMC_RSP_CRC)
> > +		; /* FIXME */
> > +	if (cmd_flags & MMC_RSP_BUSY)
> > +		; /* FIXME */
> > +	if (cmd_flags & MMC_RSP_OPCODE)
> > +		; /* FIXME */
>
> It's ok that these flags are not handled in the first run, but I think
> the driver should issue a warning when one of these flags is set.

I'm still not sure what bits to set in the various registers to match these 
settings. So, a warning would be a good idea.

> [...]

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
