Delivery-date: Mon, 02 Dec 2024 09:17:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1cE-0030lN-0Z
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:17:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1cE-0000d4-5Q
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:17:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v62mBtjDQdmzVYiT+puLyGqJMw9gPfVzR4GkV0PFolI=; b=1wuc8oNfgcjGQVxiytR+Hgrl7V
	MauptCtSRGG/onw56x5yeFnXflCVQGJ+ELnhLmR678qRwXQ4uyu9QU9Td3LeZUyeTdoFYMLmjx9Jc
	CJhrbyCa733GlLzPNGbW25YKLBSdDUJ95Ml7yPFocx0yMWBbAnPa1Bk/bFguq8DC161I0i760y+az
	jRfBsNcf6ez3stSUrKTPcQakmhSSFOfloBOGRFzywSZL1J+vcNX+vjcnM24pEwjPyDmnOubNax/yG
	j3f7pLLNmGN3JEA8zdDkOVmMw7e7dxK5qgB83Hwb2fZYZupw6SJJV8jTZSMD47T0/kWm2K4z3sUFt
	GS44X90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1bp-00000005OnP-3Nb3;
	Mon, 02 Dec 2024 08:16:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1bn-00000005Olr-1GC9
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:16:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1bl-0000Vw-SY; Mon, 02 Dec 2024 09:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1bk-001GKn-2z;
	Mon, 02 Dec 2024 09:16:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tI1bl-00EaCX-1y;
	Mon, 02 Dec 2024 09:16:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  2 Dec 2024 09:16:36 +0100
Message-Id: <20241202081636.3475735-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_001643_336344_F041641D 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: use barebox' own sbrk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dlmalloc uses sbrk, but so far this directly called into the libc
instead of using the barebox-internal symbol.

Fix this by adding a define for sbrk as well as brk for completion's
sake, even if we don't yet define the latter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 9f110d5a6a0d..157e856c59b1 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -33,6 +33,7 @@ KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
 		-Dmalloc_stats=barebox_malloc_stats -Dmemalign=barebox_memalign \
 		-Dmalloc_usable_size=barebox_malloc_usable_size \
 		-Dfree=barebox_free -Drealloc=barebox_realloc \
+		-Dbrk=barebox_brk -Dsbrk=barebox_sbrk \
 		-Dread=barebox_read -Dwrite=barebox_write \
 		-Dopen=barebox_open -Dclose=barebox_close \
 		-Dlseek=barebox_lseek -Dperror=barebox_perror \
-- 
2.39.5



