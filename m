Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T1NKU-0004Mv-Sv
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 20:03:08 +0000
Date: Tue, 14 Aug 2012 22:03:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120814200305.GC1451@pengutronix.de>
References: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344927873-19506-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH 0/3 v2] omap: 4460 support
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 14, 2012 at 09:04:30AM +0200, Jan Weitzel wrote:
> Add support for OMAP4460 cpu
> on top of ed358834 (next)
> 
> v2: merge usage of omap4_scale_vcores to 1/3
>     avoid volatile int*

Applied, thanks

Sascha

> 
> 
> Jan Weitzel (3):
>   Add support for OMAP4460 TPS62361
>   OMAP4460: ram init changes
>   OMAP4460: clock init
> 
>  arch/arm/boards/panda/lowlevel.c                |    4 +-
>  arch/arm/boards/panda/mux.c                     |    8 +++
>  arch/arm/boards/pcm049/lowlevel.c               |   15 ++++--
>  arch/arm/boards/pcm049/mux.c                    |    8 +++
>  arch/arm/boards/phycard-a-xl2/lowlevel.c        |   13 ++++-
>  arch/arm/boards/phycard-a-xl2/mux.c             |    8 +++
>  arch/arm/mach-omap/include/mach/omap4-clock.h   |   19 +++++++
>  arch/arm/mach-omap/include/mach/omap4-silicon.h |   13 +++++-
>  arch/arm/mach-omap/omap4_clock.c                |   58 +++++++++++++++++-----
>  arch/arm/mach-omap/omap4_generic.c              |   60 +++++++++++++++++++++--
>  10 files changed, 181 insertions(+), 25 deletions(-)
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
