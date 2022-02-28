Delivery-date: Mon, 28 Feb 2022 11:16:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOd5D-00D80z-G4
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 11:16:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOd5C-0002pI-78
	for lore@pengutronix.de; Mon, 28 Feb 2022 11:16:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WtskGCEzU+VnOOCfV/czVuNeN3T3xk2BGlGYhbdj+qc=; b=0o60MywGDMUsCF
	v7hDqNSwve+h66ebybRfKbFTYkca/Sml27OvG1MJObxkVK1uk/t88hCjEMMnCB645skUF1zzMycsv
	OE7ZeKglsrpWspalI2Xp9j+cYrcNn2EEK2UWoXIq44oGpzBerILc5hgA2Zv8ymiAFkEzNBElb3JSx
	oEemcDCrzZ/kC7kVdwiGNF8+LKPyPgttuOwq4mMKlszD73UX1sxArpbLUiI5b0M7REGEt1pnLIn0d
	jN69hPCIAjm3RCdX7i5H2p7SXcpMWBjL/kPN3eQBQTLO80dj9wQmU38U8v5iOXJYAPrvjucxEw+2+
	X4WkbrM+JIRo1dIpVeMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOd40-00BShA-6G; Mon, 28 Feb 2022 10:15:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOd3u-00BSfd-VB
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 10:15:28 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOd3t-0002UH-MN; Mon, 28 Feb 2022 11:15:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nOd3s-004ROq-H7; Mon, 28 Feb 2022 11:15:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 28 Feb 2022 11:15:23 +0100
Message-Id: <20220228101523.1058032-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_021527_030516_52304737 
X-CRM114-Status: GOOD (  13.83  )
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
Cc: Andrej Picej <andrej.picej@norik.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] scripts: bareboximd: Fix -c option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Using mmap in read_file doesn't work when the same file is written
afterwards with write_file. This problem was fixed in 738601e125
("scripts/common: fix write_file when opened with mmap"). Using mmap in
read_file was removed in 07b87a0908 ("scripts/common: Do not mmap in
read_file_2()") but then re-introduced for bareboximd in 013e8ea757
("scripts: bareboximd: Use mmap when possible"). I'll put my brown paper
bag on for this :(

This patch fixes the issue by explicitly avoiding mmap when the file
is written later as done with the -c option to bareboximd

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Andrej Picej <andrej.picej@norik.com>
---
 common/imd.c         | 7 +++++--
 scripts/bareboximd.c | 9 ++++++---
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/common/imd.c b/common/imd.c
index 9ca0248523..1100e6878a 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -22,7 +22,8 @@ static inline void read_file_2_free(void *buf)
 	free(buf);
 }
 
-static int imd_read_file(const char *filename, size_t *size, void **outbuf)
+static int imd_read_file(const char *filename, size_t *size, void **outbuf,
+			 bool allow_mmap)
 {
 	return read_file_2(filename, size, outbuf, 0x100000);
 }
@@ -439,6 +440,7 @@ int imd_command(int argc, char *argv[])
 	char *str;
 	uint32_t checksum = 0;
 	uint32_t verify = 0;
+	bool allow_mmap = true;
 
 	imd_command_verbose = 0;
 
@@ -462,6 +464,7 @@ int imd_command(int argc, char *argv[])
 			break;
 		case 'c':
 			checksum = 1;
+			allow_mmap = false;
 			break;
 		case 'V':
 			verify = 1;
@@ -478,7 +481,7 @@ int imd_command(int argc, char *argv[])
 
 	filename = argv[optind];
 
-	ret = imd_read_file(filename, &size, &buf);
+	ret = imd_read_file(filename, &size, &buf, allow_mmap);
 	if (ret && ret != -EFBIG)
 		return -errno;
 
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index 2d4750d7fb..d01bd27007 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -55,9 +55,10 @@ static unsigned long simple_strtoul(const char *cp, char **endp, unsigned int ba
 	return strtoul(cp, endp, base);
 }
 
-static int imd_read_file(const char *filename, size_t *size, void **outbuf)
+static int imd_read_file(const char *filename, size_t *size, void **outbuf,
+			 bool allow_mmap)
 {
-	void *buf;
+	void *buf = MAP_FAILED;
 	int fd, ret;
 	size_t fsize;
 
@@ -74,7 +75,9 @@ static int imd_read_file(const char *filename, size_t *size, void **outbuf)
 		goto close;
 	}
 
-	buf = mmap(NULL, fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
+	if (allow_mmap)
+		buf = mmap(NULL, fsize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0);
+
 	if (buf == MAP_FAILED) {
 		close(fd);
 		return read_file_2(filename, size, outbuf, 0x100000);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

