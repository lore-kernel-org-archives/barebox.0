Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEWAd-0006ht-Vd
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 05:20:53 +0000
Date: Mon, 13 Jul 2015 07:20:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150713052025.GB18700@pengutronix.de>
References: <1436357910-4785-1-git-send-email-s.hauer@pengutronix.de>
 <559D2602.8060001@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <559D2602.8060001@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX: Add i.MX5 debug functions
To: Enrico Joerns <ejo@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 08, 2015 at 03:30:42PM +0200, Enrico Joerns wrote:
> On 07/08/2015 02:18 PM, Sascha Hauer wrote:
> >We recently introduced ungate_all_peripherals and SoC specific low
> >level UART init functions. Add some more for i.MX5 SoCs.
> >
> >Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> >---
> >  arch/arm/mach-imx/include/mach/debug_ll.h | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> >diff --git a/arch/arm/mach-imx/include/mach/debug_ll.h b/arch/arm/mach-imx/include/mach/debug_ll.h
> >index ab939b3..f2f4768 100644
> >--- a/arch/arm/mach-imx/include/mach/debug_ll.h
> >+++ b/arch/arm/mach-imx/include/mach/debug_ll.h
> >@@ -75,6 +75,11 @@ static inline void imx51_uart_setup_ll(void)
> >  	__imx_uart_setup_ll(54000000);
> >  }
> >
> >+static inline void imx53_uart_setup_ll(void)
> >+{
> >+	__imx_uart_setup_ll(66666666);
> >+}
> >+
> 
> Currently, the patch does not compile when CONFIG_DEBUG_LL is unset.
> Seems you forgot to add this line to your patch:

Fixed that up, thanks

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
