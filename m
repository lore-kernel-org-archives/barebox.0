Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kcD-0004fR-DM
 for barebox@lists.infradead.org; Sat, 07 Sep 2019 23:59:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so6871270pfl.0
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 16:59:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 16:59:30 -0700
Message-Id: <20190907235930.24553-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] mfd: rave-sp: Emulate firmware/bootloader mode reporting on
 RDU2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to emulate firmware/bootloader mode reporting via
"general_status" field on RDU2. This is needed to correctly report if
RAVE SP is in bootloader of application mode during startup.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c       | 18 ++++++++++++++++--
 include/linux/mfd/rave-sp.h |  1 +
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 1448c4143f..67f7d4c654 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -640,6 +640,7 @@ static int rave_sp_emulated_get_status(struct rave_sp *sp,
 		[0] = RAVE_SP_CMD_GET_FIRMWARE_VERSION,
 		[1] = 0,
 	};
+	u8 firmware_mode;
 	int ret;
 
 	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status->firmware_version,
@@ -648,8 +649,21 @@ static int rave_sp_emulated_get_status(struct rave_sp *sp,
 		return ret;
 
 	cmd[0] = RAVE_SP_CMD_GET_BOOTLOADER_VERSION;
-	return rave_sp_exec(sp, cmd, sizeof(cmd), &status->bootloader_version,
-			    sizeof(status->bootloader_version));
+	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status->bootloader_version,
+			   sizeof(status->bootloader_version));
+	if (ret)
+		return ret;
+
+	cmd[0] = RAVE_SP_CMD_GET_OPERATIONAL_MODE;
+	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &firmware_mode,
+			   sizeof(firmware_mode));
+	if (ret)
+		return ret;
+
+	status->general_status =
+		firmware_mode ? RAVE_SP_STATUS_GS_FIRMWARE_MODE : 0;
+
+	return 0;
 }
 
 static int rave_sp_get_status(struct rave_sp *sp)
diff --git a/include/linux/mfd/rave-sp.h b/include/linux/mfd/rave-sp.h
index 7b3187cb74..92315c6e12 100644
--- a/include/linux/mfd/rave-sp.h
+++ b/include/linux/mfd/rave-sp.h
@@ -14,6 +14,7 @@
 enum rave_sp_command {
 	RAVE_SP_CMD_GET_FIRMWARE_VERSION	= 0x20,
 	RAVE_SP_CMD_GET_BOOTLOADER_VERSION	= 0x21,
+	RAVE_SP_CMD_GET_OPERATIONAL_MODE	= 0x25,
 	RAVE_SP_CMD_BOOT_SOURCE			= 0x26,
 	RAVE_SP_CMD_GET_BOARD_COPPER_REV	= 0x2B,
 	RAVE_SP_CMD_GET_GPIO_STATE		= 0x2F,
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
