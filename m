Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbn9-0000Ti-Gz
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:16:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id m4-v6so4900806pgv.12
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:16:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:15:49 -0700
Message-Id: <20180831051551.10662-5-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051551.10662-1-andrew.smirnov@gmail.com>
References: <20180831051551.10662-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/5] mfd: rave-sp: Add legacy watchdog ping command translation
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This is needed to make rave-sp-wdt driver to properly ping the
watchdog on "legacy" firmware.

This is a backport of Linux kernel patch [1]

[1] https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#m767615239f8aa681a2dc0ccfe1c877e4cbb0edf6

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 61152c491..96f69cc09 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -586,6 +586,8 @@ static int rave_sp_default_cmd_translate(enum rave_sp_command command)
 		return 0x14;
 	case RAVE_SP_CMD_SW_WDT:
 		return 0x1C;
+	case RAVE_SP_CMD_PET_WDT:
+		return 0x1D;
 	case RAVE_SP_CMD_RESET:
 		return 0x1E;
 	case RAVE_SP_CMD_RESET_REASON:
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
