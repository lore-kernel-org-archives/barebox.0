Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x235.google.com ([2607:f8b0:400e:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f7PK9-0001cp-1f
 for barebox@lists.infradead.org; Sat, 14 Apr 2018 17:50:55 +0000
Received: by mail-pf0-x235.google.com with SMTP id a2so8523269pff.8
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2018 10:50:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Apr 2018 10:50:14 -0700
Message-Id: <20180414175024.9962-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 00/10] i.MX reset reason detection support
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
  ARM: VFxxx: Add code to detect reset reason
  ARM: VFxxx: Add code to detect cpu variant
  ARM: VFxxx: Detect cpu variant and reset source on start

 arch/arm/mach-imx/Makefile                    |  1 +
 arch/arm/mach-imx/imx.c                       | 83 ++++++++++++++++++++++++++-
 arch/arm/mach-imx/imx6.c                      |  4 +-
 arch/arm/mach-imx/imx7.c                      |  3 +
 arch/arm/mach-imx/include/mach/generic.h      |  1 +
 arch/arm/mach-imx/include/mach/reset-reason.h | 31 ++++++++++
 arch/arm/mach-imx/include/mach/vf610-regs.h   |  3 +
 arch/arm/mach-imx/include/mach/vf610.h        | 51 ++++++++++++++++
 arch/arm/mach-imx/vf610.c                     | 50 ++++++++++++++++
 common/reset_source.c                         | 23 ++++++++
 include/reset_source.h                        | 17 ++++++
 11 files changed, 264 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/reset-reason.h
 create mode 100644 arch/arm/mach-imx/include/mach/vf610.h
 create mode 100644 arch/arm/mach-imx/vf610.c

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
