Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1foCiT-0002KK-Ev
 for barebox@lists.infradead.org; Fri, 10 Aug 2018 19:04:54 +0000
Received: by mail-pg1-x541.google.com with SMTP id x5-v6so4809260pgp.7
 for <barebox@lists.infradead.org>; Fri, 10 Aug 2018 12:04:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 10 Aug 2018 12:04:23 -0700
Message-Id: <20180810190429.10823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] i.MX8MQ boot source, reset reason, etc.
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is a number of fixes and changes I made for boot source
and reset reason detection on i.MX8MQ. Hopefully all of the changes
are self-explanatory.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  ARM: i.MX8M: Expose code to query cpu revision
  ARM: i.MX: boot: Fix accidental comma
  ARM: i.MX: boot: Rework boot source detection for i.MX7 and i.MX8MQ
  ARM: i.MX8MQ: Replace magic numbers with named constants
  ARM: i.MX8MQ: Add code to detect reset reason
  ARM: i.MX8MQ: Save boot location during initialization

 arch/arm/mach-imx/boot.c                      | 99 ++++++-------------
 arch/arm/mach-imx/imx.c                       | 11 +++
 arch/arm/mach-imx/imx7.c                      | 11 ---
 arch/arm/mach-imx/imx8mq.c                    | 65 +++++-------
 arch/arm/mach-imx/include/mach/imx8mq.h       | 43 ++++++++
 arch/arm/mach-imx/include/mach/reset-reason.h |  1 +
 6 files changed, 109 insertions(+), 121 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mq.h

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
