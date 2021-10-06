Delivery-date: Wed, 06 Oct 2021 16:24:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qt-00050T-Ol
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:24:59 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qs-0000cr-MO
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoZayWSCU4qhVLW9ptK1dUlKTPr1WjCynXvXb/HzBqM=; b=S1d4TvNAAyTGSq
	hi7eTwgvZ9aM57aQiQWLPbUnm63tW81NyJqwz6VIvwIEYq7elvyP/hugv8XwFXsyOSb5guAZ2jLF2
	pTis4Zm6nVMrdvCyxZgo8YtMaAusqemv6bo7PTEtrQHehnkBeGrif3NH4W92itUsPImO46DF3cRLE
	qH54GTzoWEXxl14EiDctcQ2mgFjzXngPRVnHdxAN1usBnkWo5/82OrlTZV2JT0oPAJxUVnxQl67d/
	/d5LGEGiOC9VgIQqIBhzSXPTzW/Ih1ZfBDat7kdSMUAChWbNoNxbCov/YPwMqWZjuL2cxCJRdGfD0
	1Bsci/KnZl6ehkKwtIRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7p5-00EciQ-8x; Wed, 06 Oct 2021 14:23:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7oz-00Ecen-Tm
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:03 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000IA-E8; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089SW-QA; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:52 +0200
Message-Id: <20211006142254.1751864-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006142254.1751864-1-s.hauer@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072301_980693_EAF2F2FB 
X-CRM114-Status: GOOD (  18.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/5] scripts/common: Add write_file()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

write_file() is used once, but can be used in socfpga_mkimage.c as
well. Move function to a common place and use it in the SoCFPGA image
tool.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/bareboximd.c      | 25 -------------------------
 scripts/common.c          | 30 ++++++++++++++++++++++++++++++
 scripts/common.h          |  1 +
 scripts/socfpga_mkimage.c | 31 +++++--------------------------
 4 files changed, 36 insertions(+), 51 deletions(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 8f059f46d0..a734399aa5 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -42,31 +42,6 @@ int imd_command_setenv(const char *variable_name, const char *value)
 	return -EINVAL;
 }
 
-static int write_file(const char *filename, const void *buf, size_t size)
-{
-	int fd, ret = 0;
-	int now;
-
-	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT, S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
-	if (fd < 0)
-		return fd;
-
-	while (size) {
-		now = write(fd, buf, size);
-		if (now < 0) {
-			ret = now;
-			goto out;
-		}
-		size -= now;
-		buf += now;
-	}
-
-out:
-	close(fd);
-
-	return ret;
-}
-
 static inline void read_file_2_free(void *buf)
 {
 	/*
diff --git a/scripts/common.c b/scripts/common.c
index f28cddc71a..5e0139278a 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -100,3 +100,33 @@ void *read_file(const char *filename, size_t *size)
 
 	return NULL;
 }
+
+int write_file(const char *filename, const void *buf, size_t size)
+{
+	int fd, ret = 0;
+	int now;
+
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
+		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
+		return -errno;
+	}
+
+	while (size) {
+		now = write(fd, buf, size);
+		if (now < 0) {
+			fprintf(stderr, "Cannot write to %s: %s\n", filename,
+				strerror(errno));
+			ret = -errno;
+			goto out;
+		}
+		size -= now;
+		buf += now;
+	}
+
+out:
+	close(fd);
+
+	return ret;
+}
diff --git a/scripts/common.h b/scripts/common.h
index 0153ebe93f..a15691f039 100644
--- a/scripts/common.h
+++ b/scripts/common.h
@@ -3,5 +3,6 @@
 
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size);
 void *read_file(const char *filename, size_t *size);
+int write_file(const char *filename, const void *buf, size_t size);
 
 #endif /* __COMMON_H */
diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index 73dfbeae3a..3ef41edf8f 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -10,6 +10,9 @@
 #include <fcntl.h>
 #include <endian.h>
 
+#include "../common.h"
+#include "../common.c"
+
 #define VALIDATION_WORD 0x31305341
 
 #define BRANCH_INST 0xea /* ARM opcode for "b" (unconditional branch) */
@@ -85,22 +88,6 @@ static int read_full(int fd, void *buf, size_t size)
 	return insize;
 }
 
-static int write_full(int fd, void *buf, size_t size)
-{
-	size_t insize = size;
-	int now;
-
-	while (size) {
-		now = write(fd, buf, size);
-		if (now <= 0)
-			return now;
-		size -= now;
-		buf += now;
-	}
-
-	return insize;
-}
-
 static const uint32_t crc_table[256] = {
 	0x00000000, 0x04c11db7, 0x09823b6e, 0x0d4326d9, 0x130476dc, 0x17c56b6b,
 	0x1a864db2, 0x1e475005, 0x2608edb8, 0x22c9f00f, 0x2f8ad6d6, 0x2b4bcb61,
@@ -381,17 +368,9 @@ int main(int argc, char *argv[])
 	if (ret)
 		exit(1);
 
-	fd = open(outfile, O_WRONLY | O_CREAT | O_TRUNC, 0644);
-	if (fd < 0) {
-		perror("open outfile");
-		exit(1);
-	}
-
-	ret = write_full(fd, buf, s.st_size + 4 + addsize + pad);
-	if (ret < 0) {
-		perror("write outfile");
+	ret = write_file(outfile, buf, s.st_size + 4 + addsize + pad);
+	if (ret)
 		exit(1);
-	}
 
 	exit(0);
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

