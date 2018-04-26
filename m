Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBgQa-0004ND-Je
 for barebox@lists.infradead.org; Thu, 26 Apr 2018 12:55:20 +0000
Date: Thu, 26 Apr 2018 14:54:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180426125456.afjcgysoq5ehb7tv@pengutronix.de>
References: <20180421010538.16488-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180421010538.16488-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/10] i.MX reset reason detection support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 20, 2018 at 06:05:28PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This patchset is the result of my work on adding support for detecting
> and reporting reset reason as can be obtained from System Reset
> Controller (to be more precise via SRSR register) on i.MX family of
> SoC.
> 
> Currently list of supported SoC is as follows:
> 
> 	  - i.MX6 (tested on i.MX6Q)
> 	  - i.MX7 (tested on i.MX7D)
> 	  - VFxxx (tested on VF610)
> 
> 
> Changes since [v1]:
> 
> 	- i.MX reset reason detection code was converted to do detect
>           the source with bitmasking as opposed to having a switch
>           statement, due to potential problems with the latter as was
>           pointed out by Philipp in [thread1]
> 
> 	- Change above also allowed to unify VFxxx and i.MX codepaths
>           without the need to introduce a dedicated VFxxx centric
>           function
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-April/032614.html
> [thread1] http://lists.infradead.org/pipermail/barebox/2018-April/032708.html
> 
> Feedback is wellcome!
> 
> Thanks,
> Andrey Smirnov

Applied, thanks

Sascha

> 
> Andrey Smirnov (10):
>   common: reset_source: Add the notion of "reset source instance"
>   ARM: i.MX: Add infrastructure to record SoC reset reason
>   ARM: i.MX6: Record reset reason as a part of startup
>   ARM: i.MX7: Record reset reason as a part of startup
>   common: reset_source: Introduce reset_source_name()
>   ARM: i.MX: Log detected reset reason
>   ARM: i.MX: Print "revision unknown" if that is the case
>   ARM: VFxxx: Add code to detect cpu variant
>   ARM: VFxxx: Detect cpu variant on start
>   ARM: VFxxx: Record reset reason as a part of startup
> 
>  arch/arm/mach-imx/Makefile                    |  1 +
>  arch/arm/mach-imx/imx.c                       | 43 ++++++++++++++++++-
>  arch/arm/mach-imx/imx6.c                      | 13 +++++-
>  arch/arm/mach-imx/imx7.c                      | 14 +++++++
>  arch/arm/mach-imx/include/mach/generic.h      |  1 +
>  arch/arm/mach-imx/include/mach/reset-reason.h | 37 +++++++++++++++++
>  arch/arm/mach-imx/include/mach/vf610-regs.h   |  3 ++
>  arch/arm/mach-imx/include/mach/vf610.h        | 51 +++++++++++++++++++++++
>  arch/arm/mach-imx/vf610.c                     | 59 +++++++++++++++++++++++++++
>  common/reset_source.c                         | 23 +++++++++++
>  include/reset_source.h                        | 17 ++++++++
>  11 files changed, 259 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h
>  create mode 100644 arch/arm/mach-imx/include/mach/vf610.h
>  create mode 100644 arch/arm/mach-imx/vf610.c
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
