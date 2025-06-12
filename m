Delivery-date: Thu, 12 Jun 2025 08:59:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbuD-006QM5-2f
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 08:59:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPbuD-0007dm-6T
	for lore@pengutronix.de; Thu, 12 Jun 2025 08:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wwyfWHkvzbc0W6KD57xhP7YuXwd2YLtAvY0CdA02798=; b=0JJidCCDIHdfGJCtj5qtiu4AAB
	dsOPOq8CvDB7LwAGgx4loggQ4UPMSnWetJI0gzVf7n0x6mHZKsxyU1IPujlA5lOhU2Sbh5bFQTgMh
	Wll4EwHRLGK4bn2z36xd6kanmlkHpBW9KuSGYv3CT4OmGQ2FhF9ZYzS3ve8/Kar/ucKmngWnkXJNz
	NE9+p5fwL1A68ay9U4JTfJKA62ogBUcRYHLeSJSbdPS0f7GUNPeUwRcGoie0G12k7X3cPZaq+99pY
	way4/7J+juzaGtkIBtEUDsRNtUkZ152+mHxRYp70HDNS1w+AsWyYblwvMrMMG8tHxGGOZKL87km6C
	VsbIRzxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtI-0000000CNEz-2fq5;
	Thu, 12 Jun 2025 06:58:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPbtA-0000000CN8S-0VAr
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 06:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt8-0006ss-9r; Thu, 12 Jun 2025 08:58:14 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-0034na-3B;
	Thu, 12 Jun 2025 08:58:13 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1uPbt7-008UzX-2l;
	Thu, 12 Jun 2025 08:58:13 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 12 Jun 2025 08:58:11 +0200
Message-Id: <20250612065812.2025665-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250612065812.2025665-1-o.rempel@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_235816_199729_07E622B4 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-0.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 8/9] fs: Report errors for out-of-bounds protect operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The protect() function previously masked errors for out-of-bounds
requests. It would either return success for offsets already beyond
file/partition size or clamp the count for ranges extending beyond the
boundary. This behavior was introduced by commit 6815e0d05480 ("fs:
limit flash erase and protect to the partiton boundary") to address SPI
flash wrap-around issues.

This masking prevented shell commands from reporting failures for
invalid ranges, which could mislead users and scripts. For example,
underlying driver errors like -EINVAL from NVMEM were not propagated.

This patch modifies protect() to return appropriate error codes (-ENXIO
or -EINVAL) for such out-of-bounds conditions, instead of silently
succeeding or clamping.

Fixes: 6815e0d05480 ("fs: limit flash erase and protect to the partiton boundary")
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 fs/fs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7bc94d7b9e6c..dd6af3cef874 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -652,9 +652,9 @@ int protect(int fd, size_t count, loff_t offset, int prot)
 	if (IS_ERR(f))
 		return -errno;
 	if (offset >= f->f_size)
-		return 0;
-	if (count > f->f_size - offset)
-		count = f->f_size - offset;
+		return errno_set(-ENXIO);
+	if (!count  || count > f->f_size - offset)
+		return errno_set(-EINVAL);
 
 	fsdrv = f->fsdev->driver;
 
-- 
2.39.5



