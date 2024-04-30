Delivery-date: Tue, 30 Apr 2024 20:07:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rtA-00AqdM-0b
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 20:07:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1rt9-0007Ca-Ac
	for lore@pengutronix.de; Tue, 30 Apr 2024 20:07:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RnOhh6QMPfTmzP4GEsWGXhAmmkYfiV8sn79YNbrK7cQ=; b=v/J/Zs04h63HDPCyR5ikqtyznm
	hamP6VFsvCnqXOM7Gr9yRGtxRMyPS6o22FiqiXk2AqindtLRZ9CefD2SeXTCab817rTc3H/9kpDti
	qlG8y5UlK5tynp7Plt0lYwv06IPGq6EBE9E9h2wG2ZQ0AmXcJQz0kmCWHtVpuRP8dqb0+Fto2OQve
	LMVxYbr7cNj/VJNxEkw49ZSMDHoTr/zSe2+plBtMr4tm28oWjRyqPr5x1FcWceQIFRBkx84S2U6Sl
	AQZDOtUSBPg40I1dfR+yZlc1tKvYkcKp8d66UssgtkMbJz4/9KGbZAB414DFWYMSKYlEo5/Vh465/
	7r7lOwsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsM-00000007WxY-30mc;
	Tue, 30 Apr 2024 18:06:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1rsI-00000007WuY-00Ik
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 18:06:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-0006ka-R9; Tue, 30 Apr 2024 20:06:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-00FCgP-Ef; Tue, 30 Apr 2024 20:06:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1rsA-006dMu-1B;
	Tue, 30 Apr 2024 20:06:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Apr 2024 20:06:31 +0200
Message-Id: <20240430180633.1581279-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
References: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_110642_107599_E92C72C4 
X-CRM114-Status: GOOD (  17.47  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] uimage: move file_to_sdram implementation to libfile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's nothing uImage specific about file_to_sdram, but it didn't
matter so far, because the only user is bootm and bootm always selected
uImage support. This is about to change, so move file_to_sdram to
another location that's always available independent of CONFIG_UIMAGE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/uimage.c   | 59 ---------------------------------------------
 include/image.h   |  1 -
 include/libfile.h |  4 ++++
 lib/libfile.c     | 61 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 65 insertions(+), 60 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index cc9e5e510a97..140a08c1e426 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -364,65 +364,6 @@ static long uimage_sdram_flush(void *buf, unsigned long len)
 	return len;
 }
 
-#define BUFSIZ	(PAGE_SIZE * 32)
-
-struct resource *file_to_sdram(const char *filename, unsigned long adr)
-{
-	struct resource *res;
-	size_t size = BUFSIZ;
-	size_t ofs = 0;
-	ssize_t now;
-	int fd;
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0)
-		return NULL;
-
-	while (1) {
-		res = request_sdram_region("image", adr, size);
-		if (!res) {
-			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
-				adr, adr + size - 1);
-			goto out;
-		}
-
-		if (zero_page_contains(res->start + ofs)) {
-			void *tmp = malloc(BUFSIZ);
-			if (!tmp)
-				now = -ENOMEM;
-			else
-				now = read_full(fd, tmp, BUFSIZ);
-
-			if (now > 0)
-				zero_page_memcpy((void *)(res->start + ofs), tmp, now);
-			free(tmp);
-		} else {
-			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
-		}
-
-		if (now < 0) {
-			release_sdram_region(res);
-			res = NULL;
-			goto out;
-		}
-
-		if (now < BUFSIZ) {
-			release_sdram_region(res);
-			res = request_sdram_region("image", adr, ofs + now);
-			goto out;
-		}
-
-		release_sdram_region(res);
-
-		ofs += BUFSIZ;
-		size += BUFSIZ;
-	}
-out:
-	close(fd);
-
-	return res;
-}
-
 /*
  * Load an uImage to a dynamically allocated sdram resource.
  * the resource must be freed afterwards with release_sdram_region
diff --git a/include/image.h b/include/image.h
index b4c69d9a025b..277a546c8500 100644
--- a/include/image.h
+++ b/include/image.h
@@ -307,7 +307,6 @@ struct resource *uimage_load_to_sdram(struct uimage_handle *handle,
 		int image_no, unsigned long load_address);
 void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 		size_t *size);
-struct resource *file_to_sdram(const char *filename, unsigned long adr);
 #define MAX_MULTI_IMAGE_COUNT 16
 
 struct uimage_handle {
diff --git a/include/libfile.h b/include/libfile.h
index 1240276e1d74..f772ff8b6af2 100644
--- a/include/libfile.h
+++ b/include/libfile.h
@@ -4,6 +4,8 @@
 
 #include <linux/types.h>
 
+struct resource;
+
 int pread_full(int fd, void *buf, size_t size, loff_t offset);
 int pwrite_full(int fd, const void *buf, size_t size, loff_t offset);
 int write_full(int fd, const void *buf, size_t size);
@@ -41,4 +43,6 @@ char *make_temp(const char *template);
 
 int cache_file(const char *path, char **newpath);
 
+struct resource *file_to_sdram(const char *filename, unsigned long adr);
+
 #endif /* __LIBFILE_H */
diff --git a/lib/libfile.c b/lib/libfile.c
index 67fc9cc7f3a2..a34e011f4f7c 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -12,6 +12,8 @@
  *
  */
 #include <common.h>
+#include <memory.h>
+#include <zero_page.h>
 #include <fs.h>
 #include <fcntl.h>
 #include <malloc.h>
@@ -741,3 +743,62 @@ int cache_file(const char *path, char **newpath)
 
 	return 0;
 }
+
+#define BUFSIZ	(PAGE_SIZE * 32)
+
+struct resource *file_to_sdram(const char *filename, unsigned long adr)
+{
+	struct resource *res;
+	size_t size = BUFSIZ;
+	size_t ofs = 0;
+	ssize_t now;
+	int fd;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0)
+		return NULL;
+
+	while (1) {
+		res = request_sdram_region("image", adr, size);
+		if (!res) {
+			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
+				adr, adr + size - 1);
+			goto out;
+		}
+
+		if (zero_page_contains(res->start + ofs)) {
+			void *tmp = malloc(BUFSIZ);
+			if (!tmp)
+				now = -ENOMEM;
+			else
+				now = read_full(fd, tmp, BUFSIZ);
+
+			if (now > 0)
+				zero_page_memcpy((void *)(res->start + ofs), tmp, now);
+			free(tmp);
+		} else {
+			now = read_full(fd, (void *)(res->start + ofs), BUFSIZ);
+		}
+
+		if (now < 0) {
+			release_sdram_region(res);
+			res = NULL;
+			goto out;
+		}
+
+		if (now < BUFSIZ) {
+			release_sdram_region(res);
+			res = request_sdram_region("image", adr, ofs + now);
+			goto out;
+		}
+
+		release_sdram_region(res);
+
+		ofs += BUFSIZ;
+		size += BUFSIZ;
+	}
+out:
+	close(fd);
+
+	return res;
+}
-- 
2.39.2



