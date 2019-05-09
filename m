Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOckw-0001YE-Kx
 for barebox@lists.infradead.org; Thu, 09 May 2019 06:42:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id e13so974952ljl.11
 for <barebox@lists.infradead.org>; Wed, 08 May 2019 23:42:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 May 2019 09:42:00 +0300
Message-Id: <20190509064200.14871-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
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
Subject: [PATCH] commands/hwclock: align -n option help
To: barebox@lists.infradead.org

Help string for hwclock -n option isn't aligned:

  barebox@barebox sandbox:/ help hwclock

  hwclock - query or set the hardware clock (RTC)

  Options:
          -f NAME                         RTC device name (default rtc0)
          -e VARNAME                      store RTC readout into variable VARNAME
          -n NTPSERVER            set RTC from NTP server
          -s ccyymmddHHMM[.SS]            set time

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/hwclock.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index 5073618675..1b5c2cd100 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -175,7 +175,7 @@ BAREBOX_CMD_HELP_START(hwclock)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-f NAME\t\t\t", "RTC device name (default rtc0)")
 BAREBOX_CMD_HELP_OPT ("-e VARNAME\t\t", "store RTC readout into variable VARNAME")
-BAREBOX_CMD_HELP_OPT ("-n NTPSERVER\t", "set RTC from NTP server")
+BAREBOX_CMD_HELP_OPT ("-n NTPSERVER\t\t", "set RTC from NTP server")
 BAREBOX_CMD_HELP_OPT ("-s ccyymmddHHMM[.SS]\t", "set time")
 BAREBOX_CMD_HELP_END
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
