Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPr7-0003nE-TY
 for barebox@lists.infradead.org; Fri, 18 Oct 2019 10:51:41 +0000
Date: Fri, 18 Oct 2019 12:51:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191018105135.b3o3ew2k7uuejkrp@pengutronix.de>
References: <20191017060928.23882-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017060928.23882-1-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: socfpga: reset-manager: fix Wmissing-prototypes
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Oct 17, 2019 at 08:09:26AM +0200, Steffen Trumtrar wrote:
> Fix the following warnings
> 
> arch/arm/mach-socfpga/arria10-reset-manager.c:152:6: warning: no previous prototype for
> 'arria10_reset_deassert_shared_peripherals_q1' [-Wmissing-prototypes]
>   152 | void arria10_reset_deassert_shared_peripherals_q1(uint32_t *mask0,
>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-socfpga/arria10-reset-manager.c:226:6: warning: no previous prototype for
> 'arria10_reset_deassert_shared_peripherals_q2' [-Wmissing-prototypes]
>   226 | void arria10_reset_deassert_shared_peripherals_q2(uint32_t *mask0,
>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-socfpga/arria10-reset-manager.c:272:6: warning: no previous prototype for
> 'arria10_reset_deassert_shared_peripherals_q3' [-Wmissing-prototypes]
>   272 | void arria10_reset_deassert_shared_peripherals_q3(uint32_t *mask0,
>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> arch/arm/mach-socfpga/arria10-reset-manager.c:329:6: warning: no previous prototype for
> 'arria10_reset_deassert_shared_peripherals_q4' [-Wmissing-prototypes]
>   329 | void arria10_reset_deassert_shared_peripherals_q4(uint32_t *mask0, uint32_t *mask1)
>       |      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  arch/arm/mach-socfpga/include/mach/arria10-reset-manager.h | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

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
