Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvTHg-0003EG-90
 for barebox@lists.infradead.org; Fri, 01 Jan 2021 22:52:37 +0000
Received: from geraet.fritz.box (unknown [87.123.97.237])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id B96B4240004
 for <barebox@lists.infradead.org>; Fri,  1 Jan 2021 22:52:34 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  1 Jan 2021 23:52:26 +0100
Message-Id: <20210101225228.2166084-2-ahmad@a3f.at>
In-Reply-To: <20210101225228.2166084-1-ahmad@a3f.at>
References: <20210101225228.2166084-1-ahmad@a3f.at>
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
Subject: [PATCH 2/4] video: edid: make edid_check_header externally visible
To: barebox@lists.infradead.org

For non-i2c EDID use, drivers will want to verify the EDID header. We
already have a function for this, but internal linkage. Change this and
while at it change the type to a more appropriate type.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/video/edid.c |  8 ++++----
 drivers/video/edid.h | 10 ++++++++++
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 41d40d0297b6..1baff7317b7c 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -223,19 +223,19 @@ static int edid_checksum(unsigned char *edid)
 	return err;
 }
 
-static int edid_check_header(unsigned char *edid)
+bool edid_check_header(unsigned char *edid)
 {
-	int i, err = 1, fix = check_edid(edid);
+	int i, fix = check_edid(edid);
 
 	if (fix)
 		fix_edid(edid, fix);
 
 	for (i = 0; i < 8; i++) {
 		if (edid[i] != edid_v1_header[i])
-			err = 0;
+			return false;
 	}
 
-	return err;
+	return true;
 }
 
 /*
diff --git a/drivers/video/edid.h b/drivers/video/edid.h
index 006d9f283450..60c5b6422ea5 100644
--- a/drivers/video/edid.h
+++ b/drivers/video/edid.h
@@ -135,4 +135,14 @@
 #define DPMS_SUSPEND		(1 << 6)
 #define DPMS_STANDBY		(1 << 7)
 
+/**
+ * edid_check_header - sanity check the header of the base EDID block
+ * @raw_edid: pointer to raw base EDID block
+ *
+ * Sanity check the header of the base EDID block.
+ *
+ * Return: true if the header is perfect, false if any byte is wrong.
+ */
+bool edid_check_header(unsigned char *edid);
+
 #endif /* __EDID_H__ */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
