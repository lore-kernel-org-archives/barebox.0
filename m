Delivery-date: Fri, 26 Jun 2026 10:47:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-00A10m-0b
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DJ-0005ts-R2
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h85D8a7SSl/b6e8jPLwu2TMI5/5/a59789jazR4RztE=; b=J9WF2IywSg00roPYxifuAS6Run
	En9BVBJ6PAg1NhwXolND+S9d47AAE6Ha7bVKkC5sbGecbl6MDwdDCyBFMMDEVXf/9nycPS1DLcmaT
	z+tfj92wRFZxIMzVsz/+ogQMKlRy1A1T+h3rL8UE3LKCHX7f8pOme0hFK4FvhqGDP4+rr92aq9tcO
	g2hsNN0e32FB40TJfAsnRoBrvL0nTu+QNQr/uq7it6fakHDxgEGsLh64/SrVj3ZAXoIVkIkMb5x1w
	OiROegkfbg0uZlyvIFgnkhkqpWRIJSuX7cqz56hNqCZhy2OW2wzEsKrdlW7JiHkzhyCnD6myP1Qbz
	knEBuP7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtGN-145q;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At8B-42Io
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CS-0003ZP-RR; Fri, 26 Jun 2026 10:46:12 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:16 +0200
Message-ID: <20260626084608.1388806-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_034592_6B689033 
X-CRM114-Status: GOOD (  11.34  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/26] bootscan: fix detection of GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The "EFI PART" magic string identifying the GPT starts at the second
LBA. As an LBA is at least 512 byte in size, allocating only that many
bytes means the code below checking for a GPT will never succeed.

Bump up the buffer size to FILE_TYPE_SAFE_BUFSIZE to fix this for 512
byte sectors. Support for larger sectors will be added separately.

While at it, also make use of cdev_read's return value, which indicates
the number of bytes actually read into the buffer.

Fixes: ef5dac9c2bf7 ("Implement bootloader spec support for barebox")
Fixes: 718ae461eb38 ("common: bootscan: add scan_disk callback")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/bootscan.c | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/common/bootscan.c b/common/bootscan.c
index faaceaa22152..1c865c6b1382 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -85,7 +85,8 @@ int boot_scan_cdev(struct bootscanner *scanner,
 		   bool autodiscover)
 {
 	int ret, found = 0;
-	void *buf = xzalloc(512);
+	size_t bufsize, readsize;
+	void *buf;
 	enum filetype type, filetype;
 	const char *rootpath;
 
@@ -96,14 +97,20 @@ int boot_scan_cdev(struct bootscanner *scanner,
 		return 0;
 	}
 
-	ret = cdev_read(cdev, buf, 512, 0, 0);
+	bufsize = FILE_TYPE_SAFE_BUFSIZE;
+
+	buf = xzalloc(bufsize);
+
+	ret = cdev_read(cdev, buf, bufsize, 0, 0);
 	if (ret < 0) {
 		free(buf);
 		return ret;
 	}
 
-	type = file_detect_partition_table(buf, 512);
-	filetype = file_detect_type(buf, 512);
+	readsize = ret;
+
+	type = file_detect_partition_table(buf, readsize);
+	filetype = file_detect_type(buf, readsize);
 	free(buf);
 
 	if (type == filetype_mbr || type == filetype_gpt) {
-- 
2.47.3



