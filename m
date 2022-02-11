Delivery-date: Fri, 11 Feb 2022 10:44:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTF-00CiL0-3h
	for lore@lore.pengutronix.de; Fri, 11 Feb 2022 10:44:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nISTD-0000ps-GT
	for lore@pengutronix.de; Fri, 11 Feb 2022 10:44:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmH5e7mr5c3dM6+FJYlmo5nBKa5EQRxdF0pIa+doiIw=; b=VZkvE+p2Yazkl6
	HwR1GGc1Ep7e6+g4Zn+G2/g9S/YXMdz1J0k0HN53ngr+MbTXUSGTb18IE56AwArh5RhTCFSSO3QE7
	NjJzHjgOEx5BNY7whIo53suhPENQMo72QiH/zLXFUzSzg81Lpu/yVP2BmurqM3BvoUagXuFB4srL2
	ndfcK6N3zZXyIKh5c9o/JBPzMHlBluFFOdIR1bIVKDU4TLOlh3V6b87iNXT3/RjSfljoA8/dEt/Av
	Sy5zeeUrTD7W6JVNpUc2wJ4VPTPl2mw1rBBDVijajpzYhDZv++DnzcMFZrVYroZRElNCzb9oBX31l
	wudIrS5GfLYuafWWtVmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nISS5-006Rzr-Uw; Fri, 11 Feb 2022 09:42:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nISRm-006RuH-77
 for barebox@lists.infradead.org; Fri, 11 Feb 2022 09:42:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRk-0000SQ-ER; Fri, 11 Feb 2022 10:42:32 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nISRj-007aAI-Vy; Fri, 11 Feb 2022 10:42:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 11 Feb 2022 10:42:30 +0100
Message-Id: <20220211094230.1807262-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220211094230.1807262-1-s.hauer@pengutronix.de>
References: <20220211094230.1807262-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_014234_348205_F8EFB392 
X-CRM114-Status: GOOD (  12.58  )
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
Subject: [PATCH 3/3] Revert "scripts/common: fix write_file when opened with
 mmap"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mmap() is no longer used in read_file_2(), so this patch is no longer
necessary.

This reverts commit 738601e1258c55953284ee10801b26b9977918c2.
---
 scripts/common.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/scripts/common.c b/scripts/common.c
index 3d07be3630..2be41615ea 100644
--- a/scripts/common.c
+++ b/scripts/common.c
@@ -102,33 +102,26 @@ int write_file(const char *filename, const void *buf, size_t size)
 {
 	int fd, ret = 0;
 	int now;
-	size_t left = size;
 
-	/* The same file may be mmapped currently, so can't use O_TRUNC here */
-	fd = open(filename, O_WRONLY | O_CREAT,
+	fd = open(filename, O_WRONLY | O_TRUNC | O_CREAT,
 		  S_IRUSR | S_IWUSR | S_IRGRP | S_IROTH);
 	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n", filename, strerror(errno));
 		return -errno;
 	}
 
-	while (left) {
-		now = write(fd, buf, left);
+	while (size) {
+		now = write(fd, buf, size);
 		if (now < 0) {
 			fprintf(stderr, "Cannot write to %s: %s\n", filename,
 				strerror(errno));
 			ret = -errno;
 			goto out;
 		}
-		left -= now;
+		size -= now;
 		buf += now;
 	}
 
-	if (ftruncate(fd, size) < 0) {
-		fprintf(stderr, "Cannot truncate file: %s", strerror(errno));
-		ret = -errno;
-	}
-
 out:
 	close(fd);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

