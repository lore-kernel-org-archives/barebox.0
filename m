Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S22pN-0000hR-Il
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 15:49:31 +0000
Received: from mail98.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 0EE99FF9A76
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2012 16:52:08 +0100 (CET)
Date: Mon, 27 Feb 2012 16:40:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120227154023.GD3318@game.jcrosoft.org>
References: <20120222073359.GL3852@pengutronix.de>
 <1330330813-21605-1-git-send-email-eric@eukrea.com>
 <1330330813-21605-6-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330330813-21605-6-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH v2 6/7] mx53-loco: add board revision support
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 09:20 Mon 27 Feb     , Eric B=E9nard wrote:
> - this is taken from freescale-mx35-3-stack/3stack.c and allows
> this board to run Freescale's kernel which relies on the system
> revision to configure the correct PMIC.
> =

> - On rev0 boards (with DA9053), the log is :
> detected i.MX53 rev 2.1
> MCIMX53-START board 1.0
> =

> On newer boards (rev A or B with MC34708), the log is :
> mc34708-i2c@mc34708-i2c0: MC34708 ID: 0x0014
> detected i.MX53 rev 2.1
> MCIMX53-START-R board 1.0 rev B
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/boards/freescale-mx53-loco/board.c |   51 +++++++++++++++++++++=
++++++
>  1 files changed, 51 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/board=
s/freescale-mx53-loco/board.c
> index 66ff040..6c0e1d1 100644
> --- a/arch/arm/boards/freescale-mx53-loco/board.c
> +++ b/arch/arm/boards/freescale-mx53-loco/board.c
> @@ -103,6 +103,31 @@ static struct i2c_board_info i2c_devices[] =3D {
>  	},
>  };
>  =

> +/*
> + * Revision to be passed to kernel. The kernel provided
> + * by freescale relies on this.
> + *
> + * C --> CPU type
> + * S --> Silicon revision
> + * B --> Board rev
> + *
> + * 31    20     16     12    8      4     0
> + *        | Cmaj | Cmin | B  | Smaj | Smin|
> + *
> + * e.g 0x00053120 --> i.MX35, Cpu silicon rev 2.0, Board rev 2
> +*/
> +static unsigned int loco_system_rev =3D 0x00053000;
> +
> +static void set_silicon_rev( int rev)
> +{
> +	loco_system_rev =3D loco_system_rev | (rev & 0xFF);
> +}
> +
> +static void set_board_rev(int rev)
> +{
> +	loco_system_rev =3D  (loco_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
> +}
> +
>  static int loco_mem_init(void)
>  {
>  	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
> @@ -149,6 +174,8 @@ static int loco_devices_init(void)
>  =

>  	loco_fec_reset();
>  =

> +	set_silicon_rev(imx_silicon_revision());
> +
>  	armlinux_set_bootparams((void *)0x70000100);
>  	armlinux_set_architecture(MACH_TYPE_MX53_LOCO);
>  =

> @@ -177,3 +204,27 @@ static int loco_console_init(void)
>  }
>  =

>  console_initcall(loco_console_init);
> +
> +static int loco_pmic_init(void)
> +{
> +	struct mc34708 *mc34708;
> +	int rev;
> +
> +	mc34708 =3D mc34708_get();
> +	if (!mc34708) {
> +		/* so we have a DA9053 based board */
> +		printf("MCIMX53-START board 1.0\n");
> +		armlinux_set_revision(loco_system_rev);
> +		return 0;
> +	}
here I still don't like the idea to check the pointer

check the file exist is the rigght way

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
