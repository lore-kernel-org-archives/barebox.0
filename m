Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1afn3v-0005WX-0s
 for barebox@lists.infradead.org; Tue, 15 Mar 2016 11:22:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Mar 2016 12:22:30 +0100
Message-Id: <1458040952-6826-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
References: <1458040952-6826-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] mtd: ubi: Add function to get ubi number from mtd device
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/barebox.c | 20 ++++++++++++++++++++
 include/mtd/ubi-user.h    |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index f81705e..c26a245 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -297,3 +297,23 @@ int ubi_detach(int ubi_num)
 
 	return ubi_detach_mtd_dev(ubi_num, 1);
 }
+
+/**
+ * ubi_num_get_by_mtd - find the ubi number to the given mtd
+ * @mtd: the mtd device
+ *
+ * @return: positive or zero for a UBI number, negative error code otherwise
+ */
+int ubi_num_get_by_mtd(struct mtd_info *mtd)
+{
+	int i;
+	struct ubi_device *ubi;
+
+	for (i = 0; i < UBI_MAX_DEVICES; i++) {
+		ubi = ubi_devices[i];
+		if (ubi && mtd == ubi->mtd)
+			return ubi->ubi_num;
+	}
+
+	return -ENOENT;
+}
diff --git a/include/mtd/ubi-user.h b/include/mtd/ubi-user.h
index 2002548..8c02f96 100644
--- a/include/mtd/ubi-user.h
+++ b/include/mtd/ubi-user.h
@@ -407,5 +407,6 @@ struct ubi_set_vol_prop_req {
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 		       int vid_hdr_offset, int max_beb_per1024);
 int ubi_detach(int ubi_num);
+int ubi_num_get_by_mtd(struct mtd_info *mtd);
 
 #endif /* __UBI_USER_H__ */
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
