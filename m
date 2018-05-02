Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDxR9-000579-D0
 for barebox@lists.infradead.org; Wed, 02 May 2018 19:29:13 +0000
Received: by mail-pg0-x244.google.com with SMTP id m21-v6so11345061pgv.8
 for <barebox@lists.infradead.org>; Wed, 02 May 2018 12:29:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  2 May 2018 12:28:43 -0700
Message-Id: <20180502192845.12483-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/2] Initial RAVE SP Linux driver port
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

These two patches are first results of an effort to port RAVE SP
(Supervisory Processor) MFD and it's children drivers from Linux
kernel to Barebox. Patch 1/2 brings MFD driver with its core API and
patch 2/2 adds support for watchdog "cell" of the RAVE SP device.

With a very few exceptions, the code of the drivers is identical to
the code of their Linux counterparts.

These drivers are also first users of "serdev" API work that was
recently merged and should server as a reasonable example of its
usage.

Feedback is wellcome!

Changes since [v1]:

 - rave_sp_wdt_set_timeout fixed to correctly handle timeout of zero
   (as pointed out by Sascha)

Thanks,
Andrey Smirnov

[v1] http://lists.infradead.org/pipermail/barebox/2018-April/032725.html

Andrey Smirnov (2):
  watchdog: Port RAVE SP watchdog driver from Linux kernel
  mfd: rave-sp: Add temporary workaround for missing GET_STATUS

 drivers/mfd/rave-sp.c          |  18 +-
 drivers/watchdog/Kconfig       |   5 +
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/rave-sp-wdt.c | 426 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 448 insertions(+), 2 deletions(-)
 create mode 100644 drivers/watchdog/rave-sp-wdt.c

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
