Delivery-date: Thu, 16 Jan 2025 15:12:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbr-000crn-2c
	for lore@lore.pengutronix.de;
	Thu, 16 Jan 2025 15:12:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tYQbr-0003Ck-U4
	for lore@pengutronix.de; Thu, 16 Jan 2025 15:12:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PF04DDEzp6p7VN/VLXeYCipLwwc86wwJ7Xzc/mUimbM=; b=IDiKw2VWPWu+n4pCgk50kM0mJ+
	lHgTEVK0lQL4TpO35M9/JudYIOGcsJWgSnRF+l8qKIeJ1271FJWg2peSk6vLeAzNvXMkwF4Tvs2oh
	7x4A1rDP681W4WGMBH7vjtWVR0UXkEKHSEMue8VFBHVH4YAE5m3YjNJD6ooEkovVcmPxfuTiHr6Q7
	2ApjAYmXiPIBenvIgkZY7h8izngGFnEGMVPWNIH6Quj3qLWrwhC7EQq5DqfZ3Z6dG20P8jNgrh617
	dTR83BF9GfJq/3W7fMcDk24WHKymmVGenOVmDBzHp02zTBiAPPfuAr2t8DPMa5H30wXgZ1TkNxZQs
	QyVZBDng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQbE-0000000F7YR-01Hb;
	Thu, 16 Jan 2025 14:11:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYQbB-0000000F7V0-10KN
	for barebox@lists.infradead.org;
	Thu, 16 Jan 2025 14:11:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb8-0002yn-0a; Thu, 16 Jan 2025 15:11:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb7-000Gah-2b;
	Thu, 16 Jan 2025 15:11:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tYQb8-001GNx-1P;
	Thu, 16 Jan 2025 15:11:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Jan 2025 15:11:48 +0100
Message-Id: <20250116141148.301230-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250116141148.301230-1-a.fatoum@pengutronix.de>
References: <20250116141148.301230-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_061153_274906_A46BB15B 
X-CRM114-Status: GOOD (  12.42  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/2] kbuild: remove stale references to README
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a README.rst file now, but it's better to just point at the
documentation for further information about how to build barebox.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 9a2fdf0c68d2..3de35d3a34cc 100644
--- a/Makefile
+++ b/Makefile
@@ -7,7 +7,7 @@ NAME = None
 
 # *DOCUMENTATION*
 # To see a list of typical targets execute "make help"
-# More info can be located in ./README
+# More info can be located in the documentation.
 # Comments in this file are targeted only to the developer, do not
 # expect to learn how to build the kernel reading this file.
 
@@ -1355,7 +1355,7 @@ endif
 	@echo  '  make C=2   [targets] Force check of all c source with $$CHECK'
 	@echo  ''
 	@echo  'Execute "make" or "make all" to build all targets marked with [*] '
-	@echo  'For further info see the ./README file'
+	@echo  'For further info see the documentation'
 
 # Generate tags for editors
 # ---------------------------------------------------------------------------
-- 
2.39.5



