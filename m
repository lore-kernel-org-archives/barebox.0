Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RpiRy-0004ut-R1
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 15:38:24 +0000
Received: from mail239.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 1AE6E1004A20
 for <barebox@lists.infradead.org>; Tue, 24 Jan 2012 16:39:59 +0100 (CET)
Date: Tue, 24 Jan 2012 16:38:15 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120124163815.479a3059@eb-e6520>
In-Reply-To: <1327413231-17495-6-git-send-email-w.sang@pengutronix.de>
References: <1327413231-17495-1-git-send-email-w.sang@pengutronix.de>
 <1327413231-17495-6-git-send-email-w.sang@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/5] net: fec_imx: configure FEC for 10Mbit when necessary
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Wolfram,

Le Tue, 24 Jan 2012 14:53:51 +0100,
Wolfram Sang <w.sang@pengutronix.de> a =E9crit :

> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  drivers/net/fec_imx.c |   11 +++++++++++
>  1 files changed, 11 insertions(+), 0 deletions(-)
> =

> diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
> index 45af78f..653b488 100644
> --- a/drivers/net/fec_imx.c
> +++ b/drivers/net/fec_imx.c
> @@ -373,6 +373,17 @@ static int fec_open(struct eth_device *edev)
>  		ret =3D miidev_wait_aneg(&fec->miidev);
>  		if (ret)
>  			return ret;
> +
> +		ret =3D miidev_get_status(&fec->miidev);
> +		if (ret < 0)
> +			return ret;
> +
> +		if (ret & MIIDEV_STATUS_IS_10MBIT) {
> +			u32 rcntl =3D readl(fec->regs + FEC_R_CNTRL);
> +			rcntl |=3D FEC_R_CNTRL_RMII_10T;
> +			writel(rcntl, fec->regs + FEC_R_CNTRL);
> +		}
> +
>  		miidev_print_status(&fec->miidev);
>  	}
>  =


I didn't check the code where this patch is inserted but if the fec is
similar to the MX25 one, you need to set this bit only when wired in
RMII so maybe you need a test for the way the PHY is wired.

Here is what is in the kernel for the i.MX25 :
http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linux-2.6.git;a=3Dcomm=
itdiff;h=3D8d82f219c2d476811cd3157a39c7b5c1f045ebc3;hp=3D25cecd7e355bf90b8f=
ea039bd06947bb3234e77d

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
