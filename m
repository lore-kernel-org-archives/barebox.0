Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x235.google.com ([2607:f8b0:400e:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f9gyV-0006fc-81
 for barebox@lists.infradead.org; Sat, 21 Apr 2018 01:06:01 +0000
Received: by mail-pg0-x235.google.com with SMTP id j11so4680515pgf.2
 for <barebox@lists.infradead.org>; Fri, 20 Apr 2018 18:05:48 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 20 Apr 2018 18:05:28 -0700
Message-Id: <20180421010538.16488-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 00/10] i.MX reset reason detection support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This patchset is the result of my work on adding support for detecting
and reporting reset reason as can be obtained from System Reset
Controller (to be more precise via SRSR register) on i.MX family of
SoC.

Currently list of supported SoC is as follows:

	  - i.MX6 (tested on i.MX6Q)
	  - i.MX7 (tested on i.MX7D)
	  - VFxxx (tested on VF610)


Changes since [v1]:

	- i.MX reset reason detection code was converted to do detect
          the source with bitmasking as opposed to having a switch
          statement, due to potential problems with the latter as was
          pointed out by Philipp in [thread1]

	- Change above also allowed to unify VFxxx and i.MX codepaths
          without the need to introduce a dedicated VFxxx centric
          function

[v1] http://lists.infradead.org/pipermail/barebox/2018-April/032614.html
[thread1] http://lists.infradead.org/pipermail/barebox/2018-April/032708.html

Feedback is wellcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (10):
  common: reset_source: Add the notion of "reset source instance"
  ARM: i.MX: Add infrastructure to record SoC reset reason
  ARM: i.MX6: Record reset reason as a part of startup
  ARM: i.MX7: Record reset reason as a part of startup
  common: reset_source: Introduce reset_source_name()
  ARM: i.MX: Log detected reset reason
  ARM: i.MX: Print "revision unknown" if that is the case
  ARM: VFxxx: Add code to detect cpu variant
  ARM: VFxxx: Detect cpu variant on start
  ARM: VFxxx: Record reset reason as a part of startup

 arch/arm/mach-imx/Makefile                    |  1 +
 arch/arm/mach-imx/imx.c                       | 43 ++++++++++++++++++-
 arch/arm/mach-imx/imx6.c                      | 13 +++++-
 arch/arm/mach-imx/imx7.c                      | 14 +++++++
 arch/arm/mach-imx/include/mach/generic.h      |  1 +
 arch/arm/mach-imx/include/mach/reset-reason.h | 37 +++++++++++++++++
 arch/arm/mach-imx/include/mach/vf610-regs.h   |  3 ++
 arch/arm/mach-imx/include/mach/vf610.h        | 51 +++++++++++++++++++++++
 arch/arm/mach-imx/vf610.c                     | 59 +++++++++++++++++++++++++++
 common/reset_source.c                         | 23 +++++++++++
 include/reset_source.h                        | 17 ++++++++
 11 files changed, 259 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610.h
 create mode 100644 arch/arm/mach-imx/vf610.c

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
