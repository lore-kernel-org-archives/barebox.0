Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDp3k-0008BA-Q5
 for barebox@lists.infradead.org; Wed, 02 May 2018 10:32:31 +0000
Date: Wed, 2 May 2018 12:32:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502103216.e2beep74jby7ufrd@pengutronix.de>
References: <20180427054946.11687-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] i.MX51, 53 reset reason detection support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 26, 2018 at 10:49:40PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patchset is a followup to "i.MX reset reason detection support"
> series I submited a couple of days ago. Mostly bits and pieces needed
> for i.MX51 and i.MX53 integration with the rest of reset reason code.
> 
> Feedback is wellcome!
> 
> Sascha:
> 
> Let me know if you want me to squash these patches back into original
> "i.MX reset reason detection support" series and re-submit it.

Applied, thanks. No need to squash the patches.

Sascha

> 
> Thanks,
> Andrey Smirnov
> 
> Andrey Smirnov (6):
>   ARM: i.MX51: Replace expicit casts with IOMEM
>   ARM: i.MX: Fix incorrect IMX_SRC_SRSR_CSU_RESET
>   ARM: i.MX: Make imx6_reset_reasons global
>   ARM: i.MX: Introduce IMX_SRC_SRSR
>   ARM: i.MX53: Record reset reason as a part of startup
>   ARM: i.MX51: Record reset reason as a part of startup
> 
>  arch/arm/mach-imx/imx.c                       |  9 +++++++++
>  arch/arm/mach-imx/imx51.c                     | 20 ++++++++++++--------
>  arch/arm/mach-imx/imx53.c                     |  4 ++++
>  arch/arm/mach-imx/imx6.c                      | 11 +----------
>  arch/arm/mach-imx/include/mach/reset-reason.h |  8 ++++----
>  arch/arm/mach-imx/vf610.c                     |  2 +-
>  6 files changed, 31 insertions(+), 23 deletions(-)
> 
> -- 
> 2.14.3
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
