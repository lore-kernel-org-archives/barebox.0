Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x244.google.com ([2607:f8b0:400e:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDxR9-00057J-Cx
 for barebox@lists.infradead.org; Wed, 02 May 2018 19:29:13 +0000
Received: by mail-pg0-x244.google.com with SMTP id i29-v6so11331437pgn.12
 for <barebox@lists.infradead.org>; Wed, 02 May 2018 12:29:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  2 May 2018 12:28:45 -0700
Message-Id: <20180502192845.12483-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180502192845.12483-1-andrew.smirnov@gmail.com>
References: <20180502192845.12483-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/2] mfd: rave-sp: Add temporary workaround for missing
 GET_STATUS
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 drivers/mfd/rave-sp.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index d55e913ff..6c24c28fc 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -635,8 +635,21 @@ static int rave_sp_get_status(struct rave_sp *sp)
 	int ret;
 
 	ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status, sizeof(status));
-	if (ret)
-		return ret;
+	if (ret) {
+		cmd[0] = RAVE_SP_CMD_GET_FIRMWARE_VERSION;
+		ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status.firmware_version,
+				   sizeof(status.firmware_version));
+		if (ret)
+			return ret;
+
+		cmd[0] = RAVE_SP_CMD_GET_BOOTLOADER_VERSION;
+		ret = rave_sp_exec(sp, cmd, sizeof(cmd), &status.bootloader_version,
+				   sizeof(status.bootloader_version));
+		if (ret)
+			return ret;
+
+		goto populate_version;
+	}
 
 	if (status.general_status & RAVE_SP_STATUS_GS_FIRMWARE_MODE)
 		mode = "Application";
@@ -645,6 +658,7 @@ static int rave_sp_get_status(struct rave_sp *sp)
 
 	dev_info(dev, "Device is in %s mode\n", mode);
 
+populate_version:
 	sp->part_number_firmware   = devm_rave_sp_version(dev,
 						   &status.firmware_version);
 	sp->part_number_bootloader = devm_rave_sp_version(dev,
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
