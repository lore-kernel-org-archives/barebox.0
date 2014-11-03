Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XlGb2-00063H-PA
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 12:18:58 +0000
Date: Mon, 3 Nov 2014 13:18:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141103121834.GE14482@pengutronix.de>
References: <1414104361-15956-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1414104361-15956-3-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1414104361-15956-3-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/3] mxs: iomux-imx23/imx28: unify mode definition
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Oct 24, 2014 at 12:46:00AM +0200, Uwe Kleine-K=F6nig wrote:
> i.MX23 and i.MX28 iomux mode definitions differ for no good reason.
> =

> Compared to the two previous definitions this introduces a few flags
> that are not used yet but this changes in the next commit to detect
> broken definitions.
> =

> Apart from different constants this commit intends to be a no-op. If
> there are changes in the register values there is either a bug in this
> patch or the used mode is broken (e.g. a pullup value is defined for a
> pin that has a bitkeeper).
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  arch/arm/mach-mxs/include/mach/iomux-imx23.h | 61 ---------------------
>  arch/arm/mach-mxs/include/mach/iomux-imx28.h | 60 --------------------
>  arch/arm/mach-mxs/include/mach/iomux.h       | 82 ++++++++++++++++++++++=
++++++
>  3 files changed, 82 insertions(+), 121 deletions(-)
> =

> diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx23.h b/arch/arm/mach=
-mxs/include/mach/iomux-imx23.h
> index 39d69810ef08..1e225f8fc51b 100644
> --- a/arch/arm/mach-mxs/include/mach/iomux-imx23.h
> +++ b/arch/arm/mach-mxs/include/mach/iomux-imx23.h
> @@ -9,72 +9,11 @@
>   * but WITHOUT ANY WARRANTY; without even the implied warranty of
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
>   * GNU General Public License for more details.
> - *
>   */
>  =

> -/* 3322222222221111111111
> - * 10987654321098765432109876543210
> - *                              ^^^_ Register Number
> - *                          ^^^^____ Bit offset
> - *                        ^^________ Function
> - *                       ^__________ Drive strength feature present
> - *                      ^___________ Pull up present
> - *                    ^^____________ Drive strength setting
> - *                   ^______________ Pull up / bit keeper setting
> - *                  ^_______________ Voltage select present
> - *                 ^________________ Voltage selection
> - *             ^____________________ direction if enabled as GPIO (1 =3D=
 output)
> - *            ^_____________________ initial output value if enabled as =
GPIO and configured as output
> - *           ^______________________ Bit keeper present
> - */
>  #ifndef __ASM_MACH_IOMUX_MX23_H
>  #define __ASM_MACH_IOMUX_MX23_H
>  =

> -/* control pad's function */
> -#define FBIT_SHIFT (3)
> -#define PORTF(bank,bit)	(((bit) << FBIT_SHIFT) | (bank))
> -#define GET_PORTF(x) ((x) & 0x7)
> -#define GET_FBITPOS(x) (((x) >> FBIT_SHIFT) & 0xf)
> -#define GET_GPIO_NO(x) ((GET_PORTF(x) << 4) + GET_FBITPOS(m))
> -#define FUNC_SHIFT 7
> -#define FUNC(x)	((x) << FUNC_SHIFT)
> -#define GET_FUNC(x) (((x) >> FUNC_SHIFT) & 3)
> -#define IS_GPIO (3)
> -
> -/* control pad's GPIO feature if enabled */
> -#define GPIO_OUT (1 << 19)
> -#define GPIO_VALUE(x) ((x) << 20)
> -#define GPIO_IN (0 << 19)
> -#define GET_GPIODIR(x) (!!((x) & (1 << 19)))
> -#define GET_GPIOVAL(x) (!!((x) & (1 << 20)))
> -
> -/* control pad's drive strength */
> -#define SE (1 << 9)
> -#define SE_PRESENT(x) (!!((x) & SE))
> -#define STRENGTH(x) ((x) << 11)
> -#define S4MA 0	/* used to define a 4 mA drive strength */
> -#define S8MA 1	/* used to define a 8 mA drive strength */
> -#define S12MA 2	/* used to define a 12 mA drive strength */
> -#define S16MA 3	/* used to define a 16 mA drive strength, not all pads c=
an drive this current! */
> -#define GET_STRENGTH(x) (((x) >> 11) & 0x3)
> -
> -/* control pad's pull up / bit keeper feature */
> -#define PE (1 << 10)
> -#define BK (1 << 21)
> -#define PE_PRESENT(x) (!!((x) & PE))
> -#define BK_PRESENT(x) (!!((x) & BK))
> -#define PULLUP(x) ((x) << 13)
> -#define BITKEEPER(x) ((x) << 14)
> -#define GET_PULLUP(x) (!!((x) & (1 << 13)))
> -#define GET_BITKEEPER(x) (!!((x) & BITKEEPER(1)))
> -
> -/* control pad's voltage feature */
> -#define VE (1 << 14)
> -#define VE_PRESENT(x) (!!((x) & VE))
> -#define VE_1_8V (0 << 15)
> -#define VE_2_5V (0 << 15) /* don't ask my why, RTFM */
> -#define GET_VOLTAGE(x) (!!((x) & (1 << 15)))
> -
>  /* Bank 0, pins 0 ... 15, GPIO pins 0 ... 15 */
>  #define GPMI_D15		(FUNC(0) | PORTF(0, 15) | SE | PE)
>  #define GPMI_D15_AUART2_TX	(FUNC(1) | PORTF(0, 15) | SE | PE)
> diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach=
-mxs/include/mach/iomux-imx28.h
> index c9ab8a93aea2..6119f3caf98d 100644
> --- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
> +++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
> @@ -10,69 +10,9 @@
>   * GNU General Public License for more details.
>   */
>  =

> -/* 3322222222221111111111
> - * 10987654321098765432109876543210
> - *                            ^^^^^_ Bit offset
> - *                         ^^^______ Register Number
> - *                       ^^_________ Function
> - *                      ^___________ Drive strength feature present
> - *                     ^____________ Pull up present
> - *                   ^^_____________ Drive strength setting
> - *                  ^_______________ Pull up / bit keeper setting
> - *                 ^________________ Voltage select present
> - *                ^_________________ Voltage selection
> - *            ^_____________________ direction if enabled as GPIO (1 =3D=
 output)
> - *           ^______________________ initial output value if enabled as =
GPIO
> - *                                   and configured as output
> - *          ^_______________________ Bit keeper present
> - */
>  #ifndef __MACH_IOMUX_IMX28_H
>  #define __MACH_IOMUX_IMX28_H
>  =

> -/* control pad's function */
> -#define FBANK_SHIFT (5)
> -#define PORTF(bank,bit)	(((bank) << FBANK_SHIFT) | (bit))
> -#define GET_GPIO_NO(x) ((x) & 0xff)
> -#define FUNC_SHIFT 8
> -#define FUNC(x)	((x) << FUNC_SHIFT)
> -#define GET_FUNC(x) (((x) >> FUNC_SHIFT) & 3)
> -#define IS_GPIO (3)
> -
> -/* control pad's GPIO feature if enabled */
> -#define GPIO_OUT (1 << 20)
> -#define GPIO_VALUE(x) ((x) << 21)
> -#define GPIO_IN (0 << 20)
> -#define GET_GPIODIR(x) (!!((x) & (1 << 20)))
> -#define GET_GPIOVAL(x) (!!((x) & (1 << 21)))
> -
> -/* control pad's drive strength */
> -#define SE (1 << 10)
> -#define SE_PRESENT(x) (!!((x) & SE))
> -#define STRENGTH(x) ((x) << 12)
> -#define S4MA 0	/* used to define a 4 mA drive strength */
> -#define S8MA 1	/* used to define a 8 mA drive strength */
> -#define S12MA 2	/* used to define a 12 mA drive strength */
> -#define S16MA 3	/* used to define a 16 mA drive strength,
> -		   not all pads can drive this current! */
> -#define GET_STRENGTH(x) (((x) >> 12) & 0x3)
> -
> -/* control pad's pull up / bit keeper feature */
> -#define PE (1 << 11)
> -#define BK (1 << 22)
> -#define PE_PRESENT(x) (!!((x) & PE))
> -#define BK_PRESENT(x) (!!((x) & BK))
> -#define PULLUP(x) ((x) << 14)
> -#define BITKEEPER(x) ((x) << 14)
> -#define GET_PULLUP(x) (!!((x) & PULLUP(1)))
> -#define GET_BITKEEPER(x) (!!((x) & BITKEEPER(1)))
> -
> -/* control pad's voltage feature */
> -#define VE (1 << 15)
> -#define VE_PRESENT(x) (!!((x) & VE))
> -#define VE_1_8V (0 << 16)
> -#define VE_3_3V (1 << 16)
> -#define GET_VOLTAGE(x) (!!((x) & (1 << 16)))
> -
>  /* Bank 0, GPIO pins 0 ... 31 */
>  #define GPMI_RESETN		(FUNC(0) | PORTF(0, 28) | SE | VE | PE)
>  #define GPMI_RESETN_SSP3_CMD	(FUNC(1) | PORTF(0, 28) | SE | VE | PE)
> diff --git a/arch/arm/mach-mxs/include/mach/iomux.h b/arch/arm/mach-mxs/i=
nclude/mach/iomux.h
> index 84496c6b8497..a647439303fc 100644
> --- a/arch/arm/mach-mxs/include/mach/iomux.h
> +++ b/arch/arm/mach-mxs/include/mach/iomux.h
> @@ -18,10 +18,92 @@
>  =

>  #include <types.h>
>  =

> +/*
> + * The muxable pins on i.MX23 are organized in 4 banks. On i.MX28 there =
are 7
> + * banks. Each bank has up to 32 pins each. Furthermore for each pin som=
e of the
> + * following properties can be configured:
> + *  - drive strength: 4 mA, 8 mA, 12 mA or 16 mA
> + *  - pull up enabled or bit keeper enabled (a pin cannot have both)
> + *  - voltage: 1.8 V, 2.5 V (i.MX23 only) or 3.3 V (i.MX28 only)
> + *  - function: 0..3, with 3 being the GPIO functionality
> + *
> + * So a configuration for a given pin can be described in an unsigned in=
teger of
> + * length 32:
> + *  - [ 4: 0] bank pin
> + *  - [ 7: 5] bank
> + *  - [    8] 1 iff pin has a switchable pull up
> + *  - [    9] 1 iff pin has a switchable bit keeper
> + *  - [   10] 1 iff pin has switchable drive strength
> + *  - [   11] 1 iff pin has switchable voltage
> + *  - [13:12] function
> + *  - [   14] 1 for enabled pull up
> + *  - [   15] 1 iff [14] is a valid pull up value
> + *  - [   16] 1 for enabled bit keeper
> + *  - [   17] 1 iff [16] is a valid bit keeper value
> + *  - [19:18] value for drive strength i -> i * 4 mA
> + *  - [   20] 1 iff [19:18] is valid
> + *  - [   21] 0 for 1.8 V, 1 for 2.5 V resp. 3.3 V
> + *  - [   22] 1 iff [21] is valid
> + *  - [   23] 1 iff configure as GPIO out if function =3D=3D 3 (i.e. GPI=
O)
> + *  - [   24] initial value iff configured as GPIO out
> + *  - [   25] error
> + */
> +
> +#define BANKPIN(p)	(((p) & 31) | ERROR((p) & ~31))
> +#define BANK(b)		((((b) & 7) << 5) | (ERROR((b) & ~7)))
> +#define PE		(1 << 8)
> +#define BK		(1 << 9)
> +#define SE		(1 << 10)
> +#define VE		(1 << 11)
> +#define FUNC(f)		((((f) & 3) << 12) | (ERROR((f) & ~3)))
> +#define PULLUP(p)	((((p) & 1) << 14) | PEVALID | ERROR((p) & ~1))
> +#define PEVALID		(1 << 15)
> +#define BITKEEPER(b)	((((b) & 1) << 16) | BKVALID | ERROR((b) & ~1))
> +#define BKVALID		(1 << 17)
> +#define STRENGTH(s)	((((s) & 3) << 18) | SEVALID | ERROR((s) & ~3))
> +#define S4MA		0
> +#define S8MA		1
> +#define S12MA		2
> +#define S16MA		3
> +#define SEVALID		(1 << 20)
> +#define VOLTAGE(v)	((((v) & 1) << 21) | VEVALID | ERROR((v) & ~1))
> +#define VE_1_8V		VOLTAGE(0)
> +#define VEVALID		(1 << 22)
> +
> +#define GPIO_OUT	(1 << 23)
> +#define GPIO_IN		(0 << 23)
> +#define GPIO_VALUE(v)	((((v) & 1) << 24) | ERROR((v) & ~1))
> +
> +#define ERROR(x)	(!!(x) << 25)
> +
> +#define GET_GPIO_NO(m)	((m) & 0xff)
> +#define GET_FUNC(m)	(((m) >> 12) & 3)
> +#define PE_PRESENT(m)	((m) & PE)
> +#define GET_PULLUP(m)	(((m) >> 14) & 1)
> +#define BK_PRESENT(m)	((m) & BK)
> +#define GET_BITKEEPER(m)(((m) >> 16) & 1)
> +#define SE_PRESENT(m)	((m) & SE)
> +#define GET_STRENGTH(m)	(((m) >> 18) & 3)
> +#define VE_PRESENT(m)	((m) & VE)
> +#define GET_VOLTAGE(m)	(((m) >> 21) & 1)
> +#define GET_GPIODIR(m)	(!!((m) & GPIO_OUT))
> +#define GET_GPIOVAL(m)	(!!((m) & GPIO_VALUE(1)))
> +#define IS_GPIO		3
> +
>  #if defined CONFIG_ARCH_IMX23
> +/*
> + * The pin definition of i.MX23 are strange. Bank 0's pins 0 .. 15 are d=
efined
> + * using PORTF(0, 0) .. PORTF(0, 15). Its pins 16 .. 31 however use PORT=
F(1, 0)
> + * .. PORTF(1, 15). So the PORTF macro is more ugly than necessary.
> + */
> +# define PORTF(bank,bit)	(BANK((bank) / 2) | BANKPIN((((bank) & 1) << 4)=
 | (bit)) | ERROR((bit) & ~15) | ERROR((bank) & ~7)

This lacks a closing brace at the end. Fixed this.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
