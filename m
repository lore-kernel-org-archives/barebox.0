Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmB5h-0005Ue-KP
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 07:37:50 +0000
Date: Mon, 7 Dec 2020 08:37:47 +0100
Message-ID: <20201207073747.GG3977@pengutronix.de>
References: <1607010050-98351-1-git-send-email-r.karszniewicz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1607010050-98351-1-git-send-email-r.karszniewicz@phytec.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: OCOTP: read serial number with correct
 endianness
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 03, 2020 at 04:40:50PM +0100, Robert Karszniewicz wrote:
> The serial number is stored with the low bytes first, as can be seen in
> Linux commit 8267ff89b713 ("ARM: imx: Add serial number support for
> i.MX6/7 SoCs").  The same goes for i.MX8M.
> 
> Also renamed the macro to the more descriptive name from Linux.
> 
> Fixes: c4d9463d969b ("i.MX: Introduce imx_ocotp_read_uid()")
> Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
> ---
>  arch/arm/mach-imx/include/mach/ocotp.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/include/mach/ocotp.h b/arch/arm/mach-imx/include/mach/ocotp.h
> index 7ba5da156b76..20205c5da759 100644
> --- a/arch/arm/mach-imx/include/mach/ocotp.h
> +++ b/arch/arm/mach-imx/include/mach/ocotp.h
> @@ -26,8 +26,8 @@
>  #define OCOTP_BIT(n)		FIELD_PREP(OCOTP_BIT_MASK, n)
>  #define OCOTP_WIDTH(n)		FIELD_PREP(OCOTP_WIDTH_MASK, (n) - 1)
>  
> -#define OCOTP_OFFSET_CFG0	0x410
> -#define OCOTP_OFFSET_CFG1	0x420
> +#define OCOTP_UID_L		0x410
> +#define OCOTP_UID_H		0x420
>  
>  
>  int imx_ocotp_read_field(uint32_t field, unsigned *value);
> @@ -39,9 +39,9 @@ static inline u64 imx_ocotp_read_uid(void __iomem *ocotp)
>  {
>  	u64 uid;
>  
> -	uid  = readl(ocotp + OCOTP_OFFSET_CFG0);
> +	uid  = readl(ocotp + OCOTP_UID_H);
>  	uid <<= 32;
> -	uid |= readl(ocotp + OCOTP_OFFSET_CFG1);
> +	uid |= readl(ocotp + OCOTP_UID_L);
>  
>  	return uid;
>  }
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
