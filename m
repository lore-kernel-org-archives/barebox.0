Delivery-date: Mon, 06 Jan 2025 10:19:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGW-00HQf5-2A
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjGV-0003XK-Dd
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GCBUA8nuqskcfIHMioqondGnPyE1p2DcJH5kvdG8tt4=; b=nVadSDojNR1mQ9yOZx/Q2dguI6
	tnyobXiuAGJ2/TbJKzSIltkU3WvSP/mRjFrwVn7wKG+A1iwCQwfbECHm0vi2rnyaUnKPdFRSw/z37
	xSTgzIwRIhb+jj85tmvwDxjSIMT6tzTd73VMuyAvajwRODg96rKj1jXE+4HkSXY8bdbHznawzLLOB
	erfVyxXrxzhhuSF+iotvTYYeeGpDW2nazH+GdYFi2S0GYUg46O7v8axLHXtrrfYK3+JYcXOrj+F0u
	Or/aPItWyfVklO1r7I80tpYqIRz0LOIv6rLbE7odDsCQMRqc4dKomcGvnF3aA2jrMUYwJ0HEHriaP
	BQLTKFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjG4-00000000dyw-2koe;
	Mon, 06 Jan 2025 09:18:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjG1-00000000dw0-2fGR
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:18:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFs-00030o-7P; Mon, 06 Jan 2025 10:18:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-0078qY-0h;
	Mon, 06 Jan 2025 10:18:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjFr-00EPYv-2t;
	Mon, 06 Jan 2025 10:18:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:18:34 +0100
Message-Id: <20250106091835.3434836-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
References: <20250106091835.3434836-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011845_672899_A959A646 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] commands: stat: fix size display for FILE_SIZE_STREAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FILE_SIZE_STREAM is a special value that indicates that the size field
should be ignored as the cdev in question is a stream device.

Teach the stat command about this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/fs.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6d047f197640..8cdd0c55202b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -188,9 +188,13 @@ void stat_print(int dirfd, const char *filename, const struct stat *st)
 		typeprefix = "cdev link to ";
 	}
 
-	printf("\n");
+	printf("\nSize: ");
+
+	if (st->st_size == FILE_SIZE_STREAM)
+		printf("%-20s", "stream");
+	else
+		printf("%-20llu", st->st_size);
 
-	printf("  Size: %-20llu", st->st_size);
 	if (bdev)
 		printf("Blocks: %llu\tIO Block: %u\t",
 		       (u64)bdev->num_blocks, 1 << bdev->blockbits);
-- 
2.39.5



