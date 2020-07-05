Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1js5HW-00066v-1z
 for barebox@lists.infradead.org; Sun, 05 Jul 2020 14:06:10 +0000
Date: Sun, 5 Jul 2020 16:06:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200705140605.GM15485@pengutronix.de>
References: <20200703162017.8217-1-giorgio.nicole@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200703162017.8217-1-giorgio.nicole@arcor.de>
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
Subject: Re: [PATCH] imx-image: added support for the optional 'count'
 parameter of the 'check data' command in the DCD.
To: giorgio.nicole@arcor.de
Cc: barebox@lists.infradead.org

Hi Giorgio,.

On Fri, Jul 03, 2020 at 06:20:17PM +0200, giorgio.nicole@arcor.de wrote:
> From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
> =

> The command 'check data' can be used in the DCD table for an IMX soc
> to test the content of memory addresses, typically registers of some
> soc controller.
> This command supports an optional 'count' parameter that, when given,
> tells the ROM code how many times at most it's allowed to poll the
> memory address to meet the given logical condition. If the 'count'
> is not present in the command the ROM polls indefinitely.
> (See the IMX7D Ref. Manual at =A76.6.7.2.2).
> =

> With this patch it's possible to have the following command in the DCD:
> =

>  ...
>  check 32 until_any_bit_set 0x307900c4 0x1 500
>  ...
> =

> =

> Signed-off-by: Giorgio Dal Molin <giorgio.nicole@arcor.de>
> ---
>  arch/arm/mach-imx/include/mach/imx-header.h |  2 +-
>  scripts/imx/imx-image.c                     |  4 +++-
>  scripts/imx/imx.c                           | 10 +++++++---
>  3 files changed, 11 insertions(+), 5 deletions(-)
> =

> diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-=
imx/include/mach/imx-header.h
> index dc8e2eee2..57644067c 100644
> --- a/arch/arm/mach-imx/include/mach/imx-header.h
> +++ b/arch/arm/mach-imx/include/mach/imx-header.h
> @@ -106,7 +106,7 @@ struct config_data {
>  	uint32_t first_opcode;
>  	int cpu_type;
>  	int (*check)(const struct config_data *data, uint32_t cmd,
> -		     uint32_t addr, uint32_t mask);
> +			uint32_t addr, uint32_t mask, uint32_t count);
>  	int (*write_mem)(const struct config_data *data, uint32_t addr,
>  			 uint32_t val, int width, int set_bits, int clear_bits);
>  	int (*nop)(const struct config_data *data);
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index ec7444a77..0cd970ea8 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -495,7 +495,7 @@ static void write_dcd(const char *outfile)
>  }
>  =

>  static int check(const struct config_data *data, uint32_t cmd, uint32_t =
addr,
> -		 uint32_t mask)
> +		 uint32_t mask, uint32_t count)
>  {
>  	if (data->header_version !=3D 2) {
>  		fprintf(stderr, "DCD check command is not available or "
> @@ -512,6 +512,8 @@ static int check(const struct config_data *data, uint=
32_t cmd, uint32_t addr,
>  	dcdtable[curdcd++] =3D htobe32(cmd);
>  	dcdtable[curdcd++] =3D htobe32(addr);
>  	dcdtable[curdcd++] =3D htobe32(mask);
> +	if ( ((cmd & (0xffff<<8)) >> 8) > sizeof(uint32_t)*3 )

It's not very clear what you mean here. Can we replace this with

	if (count)

We do not have the possibility to explicitly pass a zero count anymore
then, but that doesn't seem to be very useful anyway.

> +		dcdtable[curdcd++] =3D htobe32(count);
>  =

>  	return 0;
>  }
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index ea576c22d..879bd897e 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -92,7 +92,7 @@ static void do_cmd_check_usage(void)
>  =

>  static int do_cmd_check(struct config_data *data, int argc, char *argv[])
>  {
> -	uint32_t addr, mask, cmd;
> +	uint32_t addr, mask, cmd, count=3D0, len=3D3;

Whitespaces left and right of operators please, if in doubt pass through
./scripts/checkpatch.pl please.

Regards,
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
