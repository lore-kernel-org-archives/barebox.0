Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCpRJ-0000sG-KO
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 13:31:06 +0000
Message-ID: <559D2602.8060001@pengutronix.de>
Date: Wed, 08 Jul 2015 15:30:42 +0200
From: Enrico Joerns <ejo@pengutronix.de>
MIME-Version: 1.0
References: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM: i.MX: Add i.MX5 debug functions
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

On 07/08/2015 02:18 PM, Sascha Hauer wrote:
> We recently introduced ungate_all_peripherals and SoC specific low
> level UART init functions. Add some more for i.MX5 SoCs.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   arch/arm/mach-imx/include/mach/debug_ll.h | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
>
> diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> index ab939b3..f2f4768 100644
> --- a/arch/arm/mach-imx/include/mach/debug_ll.h
> +++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> @@ -75,6 +75,11 @@ static inline void imx51_uart_setup_ll(void)
>   	__imx_uart_setup_ll(54000000);
>   }
>
> +static inline void imx53_uart_setup_ll(void)
> +{
> +	__imx_uart_setup_ll(66666666);
> +}
> +

Currently, the patch does not compile when CONFIG_DEBUG_LL is unset.
Seems you forgot to add this line to your patch:

 From b0135fa957a0ebe053349f4442b20006ba5509bf Mon Sep 17 00:00:00 2001
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 8 Jul 2015 15:29:02 +0200
Subject: [PATCH] fixup! ARM: i.MX: Add i.MX5 debug functions

---
  arch/arm/mach-imx/include/mach/debug_ll.h | 1 +
  1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h 
b/arch/arm/mach-imx/include/mach/debug_ll.h
index f2f4768..eceac40 100644
--- a/arch/arm/mach-imx/include/mach/debug_ll.h
+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
@@ -108,6 +108,7 @@ static inline void imx_uart_setup_ll(void __iomem 
*uartbase,
  }

  static inline void imx51_uart_setup_ll(void) {}
+static inline void imx53_uart_setup_ll(void) {}
  static inline void imx6_uart_setup_ll(void)  {}

  #endif /* CONFIG_DEBUG_LL */
-- 
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
