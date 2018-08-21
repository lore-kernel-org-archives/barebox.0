Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs1JY-0006t8-RT
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 07:42:58 +0000
Date: Tue, 21 Aug 2018 09:42:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180821074245.u5lytub5qgqz2znr@pengutronix.de>
References: <20180810104220.4391-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180810104220.4391-1-bst@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: imx: add fusemap entries for i.MX6SDL silicon
 revision >=1.4
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2018 at 12:42:19PM +0200, Bastian Stender wrote:
> Signed-off-by: Bastian Stender <bst@pengutronix.de>
> ---
>  arch/arm/mach-imx/include/mach/ocotp-fusemap.h | 6 ++++++
>  1 file changed, 6 insertions(+)

Applied (this patch and 2/2 from v2 sent separately), thanks.

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
> index 44b58ca6e8..aec50dbf8a 100644
> --- a/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
> +++ b/arch/arm/mach-imx/include/mach/ocotp-fusemap.h
> @@ -23,7 +23,11 @@
>  #define OCOTP_BOOT_CFG2			(OCOTP_WORD(0x450) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
>  #define OCOTP_BOOT_CFG3			(OCOTP_WORD(0x450) | OCOTP_BIT(16) | OCOTP_WIDTH(8))
>  #define OCOTP_BOOT_CFG4			(OCOTP_WORD(0x450) | OCOTP_BIT(24) | OCOTP_WIDTH(8))
> +/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
> +#define OCOTP_SDP_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
>  #define OCOTP_SEC_CONFIG_1		(OCOTP_WORD(0x460) | OCOTP_BIT(1) | OCOTP_WIDTH(1))
> +/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
> +#define OCOTP_SDP_READ_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(2) | OCOTP_WIDTH(1))
>  #define OCOTP_DIR_BT_DIS		(OCOTP_WORD(0x460) | OCOTP_BIT(3) | OCOTP_WIDTH(1))
>  #define OCOTP_BT_FUSE_SEL		(OCOTP_WORD(0x460) | OCOTP_BIT(4) | OCOTP_WIDTH(1))
>  #define OCOTP_SJC_DISABLE		(OCOTP_WORD(0x460) | OCOTP_BIT(20) | OCOTP_WIDTH(1))
> @@ -31,6 +35,8 @@
>  #define OCOTP_JTAG_SMODE		(OCOTP_WORD(0x460) | OCOTP_BIT(22) | OCOTP_WIDTH(2))
>  #define OCOTP_KTE			(OCOTP_WORD(0x460) | OCOTP_BIT(26) | OCOTP_WIDTH(1))
>  #define OCOTP_JTAG_HEO			(OCOTP_WORD(0x460) | OCOTP_BIT(27) | OCOTP_WIDTH(1))
> +/* available on i.MX6SDL silicon revision >=1.4, "reserved" elsewhere */
> +#define OCOTP_FORCE_INTERNAL_BOOT	(OCOTP_WORD(0x460) | OCOTP_BIT(31) | OCOTP_WIDTH(1))
>  #define OCOTP_NAND_READ_CMD_CODE1	(OCOTP_WORD(0x470) | OCOTP_BIT(0) | OCOTP_WIDTH(8))
>  #define OCOTP_NAND_READ_CMD_CODE2	(OCOTP_WORD(0x470) | OCOTP_BIT(8) | OCOTP_WIDTH(8))
>  #define OCOTP_TEMP_SENSE		(OCOTP_WORD(0x4e0) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
> -- 
> 2.18.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
