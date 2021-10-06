Delivery-date: Wed, 06 Oct 2021 16:24:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qm-0004zQ-36
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:24:52 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qk-0000bM-PJ
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:24:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wdls5D+LaizAwqtOWhcxe1LYLsK+5QxI6YdVP+UtAs4=; b=x/DK5B5zWUwmNA
	j27D2+jSFnA/LqSA6dHHmZXXD0OIv5/glB5yswdXPxhrtAxyc5+Gc3HZBF/qO1T7T5ufu+fS/1D+u
	z91PTHSBW+VStUn+D6tdQJ5DklUB2/243zvUbrXr43cb9wGdGs2SN19WaOje0ub9eeYqqG4v2MLsF
	sHTdZ0Mr7e8j8KA4eKFy/QJ0hocS0GoROiYu98aOweGpugB0x066x98XBxLvp3AVWm1b8nNQ4c5tS
	JyHGAOeIuFkuKTfFim4qJ1WkTsLhZmqrm1o9l5/4YACaiDYG1pGJTiFENahM+iPbpThN7kvjbGNWJ
	MCT6prpdjLSVB+rF2YZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7pK-00EcoJ-Js; Wed, 06 Oct 2021 14:23:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7p4-00Ecik-JZ
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000IB-Cy; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089SZ-Qf; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:53 +0200
Message-Id: <20211006142254.1751864-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006142254.1751864-1-s.hauer@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072306_680215_FDFDF250 
X-CRM114-Status: GOOD (  15.88  )
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
Subject: [PATCH 4/5] scripts/common: Add write_full() and read_full()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have different implementations of read_full() and write_full() in our
host tools, use a common implementation for these.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/common.c          | 36 ++++++++++++++++++++++++++++++++++++
 scripts/common.h          |  2 ++
 scripts/rkimage.c         | 39 +++------------------------------------
 scripts/socfpga_mkimage.c | 20 --------------------
 4 files changed, 41 insertions(+), 56 deletions(-)

diff --git a/scripts/common.c b/scripts/common.c
index 5e0139278a..bff08b0810 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -130,3 +130,39 @@ out:
 
 	return ret;
 }
+
+int read_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+	int total = 0;
+
+	while (size) {
+		now = read(fd, buf, size);
+		if (now == 0)
+			return total;
+		if (now < 0)
+			return now;
+		total += now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
+
+int write_full(int fd, void *buf, size_t size)
+{
+	size_t insize = size;
+	int now;
+
+	while (size) {
+		now = write(fd, buf, size);
+		if (now <= 0)
+			return now;
+		size -= now;
+		buf += now;
+	}
+
+	return insize;
+}
diff --git a/scripts/common.h b/scripts/common.h
index a15691f039..820108c52c 100644
--- a/scripts/common.h
+++ b/scripts/common.h
@@ -4,5 +4,7 @@
 int read_file_2(const char *filename, size_t *size, void **outbuf, size_t max_size);
 void *read_file(const char *filename, size_t *size);
 int write_file(const char *filename, const void *buf, size_t size);
+int read_full(int fd, void *buf, size_t size);
+int write_full(int fd, void *buf, size_t size);
 
 #endif /* __COMMON_H */
diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index dde9724886..be89c1ad34 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -13,6 +13,9 @@
 #include <errno.h>
 #include <stdbool.h>
 
+#include "../common.h"
+#include "../common.c"
+
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
 #define ALIGN(x, a)        (((x) + (a) - 1) & ~((a) - 1))
 
@@ -149,42 +152,6 @@ static void usage(const char *prgname)
 	prgname);
 }
 
-static int read_full(int fd, void *buf, size_t size)
-{
-	size_t insize = size;
-	int now;
-	int total = 0;
-
-	while (size) {
-		now = read(fd, buf, size);
-		if (now == 0)
-			return total;
-		if (now < 0)
-			return now;
-		total += now;
-		size -= now;
-		buf += now;
-	}
-
-	return insize;
-}
-
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
 int main(int argc, char *argv[])
 {
 	int opt, i, fd;
diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index 3ef41edf8f..d37ca8585a 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -68,26 +68,6 @@ static uint32_t bb_header[] = {
 	0xea00006b,	/* entry. b 0x200 (offset may be adjusted) */
 };
 
-static int read_full(int fd, void *buf, size_t size)
-{
-	size_t insize = size;
-	int now;
-	int total = 0;
-
-	while (size) {
-		now = read(fd, buf, size);
-		if (now == 0)
-			return total;
-		if (now < 0)
-			return now;
-		total += now;
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
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

