Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5nEZ-0007zc-Nk
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:03:01 +0000
Date: Mon, 18 Mar 2019 09:02:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318080257.oqogbpmcc3ykcpmd@pengutronix.de>
References: <20190313033147.20507-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190313033147.20507-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: i.MX7: Make sure CNTFRQ is initialized early
 enough
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2019 at 08:31:46PM -0700, Andrey Smirnov wrote:
> We need to make sure that CNTFRQ is initialized before corresponding
> clocksource driver tries to use it, otherwise we'll end up crashing
> due to division by zero.
> 
> We can't convert imx7_timer_init() to be an initcall since it is an
> i.MX7 specific task, but CPU type information won't be availible until
> after imx_init() gets executed at postcore_initcall() level. To solve
> this move all of the necessary code to be a part of
> imx7_cpu_lowlevel_init().
> 
> Note, that original code both hardcoded frequency value to 8MHz as
> well as tried to write it to the first element of the frequency mode
> table which appears to be read-only on i.MX7. So while we are at it,
> simplify the code by adding set_cntfrq() implementation for ARMv7 and
> copy the code we already using for i.MX8MQ.
> 
> Fixes: dece70752 ("clocksource: Enable architected timer support for CPU_V7")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/include/asm/system.h |  5 +++++
>  arch/arm/mach-imx/cpu_init.c  | 13 +++++++++++++
>  arch/arm/mach-imx/imx7.c      | 35 -----------------------------------
>  3 files changed, 18 insertions(+), 35 deletions(-)

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
