Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TirDi-0000a0-0E
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 18:39:51 +0000
Date: Wed, 12 Dec 2012 19:39:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121212183946.GX10369@pengutronix.de>
References: <1355223567-12671-1-git-send-email-jlu@pengutronix.de>
 <1355223567-12671-2-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355223567-12671-2-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] arm: omap: timers: split omap3/4 timer into a
 separate header
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 11, 2012 at 11:59:26AM +0100, Jan Luebbe wrote:
> This prepares for adding the AM33xx timer.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-omap/include/mach/omap3-timer.h |   56 +++++++++++++++++++++++++
>  arch/arm/mach-omap/include/mach/timers.h      |   56 +++++--------------------
>  2 files changed, 67 insertions(+), 45 deletions(-)
>  create mode 100644 arch/arm/mach-omap/include/mach/omap3-timer.h
> 
> diff --git a/arch/arm/mach-omap/include/mach/omap3-timer.h b/arch/arm/mach-omap/include/mach/omap3-timer.h
> new file mode 100644
> index 0000000..e8dad9a
> --- /dev/null
> +++ b/arch/arm/mach-omap/include/mach/omap3-timer.h
> +
> +/** General Purpose timer regs offsets (32 bit regs) */
> +#define TIDR			0x0      /* r */

Defines without namespace become very painful sooner or later. You won't
be able to compile multiple versions of the timer. There is a high risk
that they conflict with other defines.

Please move these defines into the C file using it. They are used in a
single file only.

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
