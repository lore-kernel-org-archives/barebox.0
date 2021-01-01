Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvTHg-0003ED-91
 for barebox@lists.infradead.org; Fri, 01 Jan 2021 22:52:37 +0000
Received: from geraet.fritz.box (unknown [87.123.97.237])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 44408240003
 for <barebox@lists.infradead.org>; Fri,  1 Jan 2021 22:52:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  1 Jan 2021 23:52:25 +0100
Message-Id: <20210101225228.2166084-1-ahmad@a3f.at>
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
Subject: [PATCH 1/4] video: edid: make accessible without i2c
To: barebox@lists.infradead.org

Users can already populate fb_info::edid_data for cases where the EDID
doesn't come via an i2c controller managed by barebox.

Only thing missing is to be able to compile without i2c, thus drop
the dependency.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/Kconfig | 1 -
 drivers/video/edid.c  | 3 +++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index a26bace176a1..56d009529ea4 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -106,7 +106,6 @@ config DRIVER_VIDEO_SIMPLEFB
 	  based on the active barebox framebuffer.
 
 config DRIVER_VIDEO_EDID
-	depends on I2C
 	bool "Add EDID support"
 	help
 	  This enabled support for reading and parsing EDID data from an attached
diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index bee4594118bb..41d40d0297b6 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -858,6 +858,9 @@ void *edid_read_i2c(struct i2c_adapter *adapter)
 {
 	u8 *block;
 
+	if (!IS_ENABLED(CONFIG_I2C))
+		return NULL;
+
 	block = xmalloc(EDID_LENGTH);
 
 	if (edid_do_read_i2c(adapter, block, 0, EDID_LENGTH))
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
