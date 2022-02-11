Delivery-date: Fri, 11 Feb 2022 10:44:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTE-00CiKz-Dl
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:44:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTD-0000pe-1r
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:44:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODQMWitbKumqc0TrIk0W4OLw1NE5l3c0XG3IFsMHElk=; b=S6SBnMplMWnejv
	G04L2SyM7k7Gx4OJV7MxuQvpapa+GLvn1frle0MEfjf3MhFPfdj/DsTnTtOfRxqNNUDPC5/tcm7BX
	WCCSGHwACN+G/0ihZPLx6fmhH28bVXZxyiWLaOhEurI6Et7r3fW+6uW03F9sPp61C2JJgPL6jpp9Z
	fiXE9hL16kLpQrSZXSZ/nxDqQ14oEbl8lG32mUUVfZHTU3wURJV/egYXaqoZB1JahEukC7KYMvRgD
	SmDmxzGzQmKl5qvyK7enZNzyvdi5uWSMZ62HG/w0BFqZ9X737Cp8YNqO8lL8kk4yi4X05nqqGdFeF
	ihixzEcAS9VkGcLZuvpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISRx-006RwP-B5; Fri, 11 Feb 2022 09:42:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISRm-006RuG-7T
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:42:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRk-0000SP-Ds; Fri, 11 Feb 2022 10:42:32 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRj-007aAF-VP; Fri, 11 Feb 2022 10:42:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 11 Feb 2022 10:42:29 +0100
Message-Id: <20220211094230.1807262-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220211094230.1807262-1-s.hauer@pengutronix.de>
References: <20220211094230.1807262-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_014234_339938_052D1ADF 
X-CRM114-Status: GOOD (  13.15  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] scripts: bareboximd: Use mmap when possible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using mmap() in read_file_2 was dropped in the last patch, bring it back
in a bareboximd specific function here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imd.c         |  7 ++++++-
 scripts/bareboximd.c | 34 ++++++++++++++++++++++++++++++++++
 2 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/common/imd.c b/common/imd.c
index 0295d84d34..9ca0248523 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -21,6 +21,11 @@ static inline void read_file_2_free(void *buf)
 {
 	free(buf);
 }
+
+static int imd_read_file(const char *filename, size_t *size, void **outbuf)
+{
+	return read_file_2(filename, size, outbuf, 0x100000);
+}
 #endif
 
 /*
@@ -473,7 +478,7 @@ int imd_command(int argc, char *argv[])
 
 	filename = argv[optind];
 
-	ret = read_file_2(filename, &size, &buf, 0x100000);
+	ret = imd_read_file(filename, &size, &buf);
 	if (ret && ret != -EFBIG)
 		return -errno;
 
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index a734399aa5..2d4750d7fb 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -55,6 +55,40 @@ static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int ba
 	return strtoul(cp, endp, base);
 }
 
+static int imd_read_file(const char *filename, size_t *size, void **outbuf)
+{
+	void *buf;
+	int fd, ret;
+	size_t fsize;
+
+	fd = open(filename, O_RDONLY);
+	if (fd < 0) {
+		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
+		return -errno;
+	}
+
+	fsize = lseek(fd, 0, SEEK_END);
+	if (fsize == -1) {
+		fprintf(stderr, "Cannot get size %s: %s\n", filename, strerror(errno));
+		ret = -errno;
+		goto close;
+	}
+
+	buf = mmap(NULL, fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
+	if (buf == MAP_FAILED) {
+		close(fd);
+		return read_file_2(filename, size, outbuf, 0x100000);
+	}
+
+	*outbuf = buf;
+	*size = fsize;
+
+	return 0;
+close:
+	close(fd);
+	return ret;
+}
+
 #include "../include/xfuncs.h"
 #include "../crypto/crc32.c"
 #include "../common/imd.c"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

