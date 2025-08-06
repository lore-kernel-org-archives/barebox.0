Delivery-date: Wed, 06 Aug 2025 18:31:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh2z-007hEZ-2i
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 18:31:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh2y-0005rI-Bs
	for lore@pengutronix.de; Wed, 06 Aug 2025 18:31:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p+I5k6IchRLZM6nTwCG5T3lWf5VLxE56D+G5Ko/3Ag4=; b=rN+qflAxs/YBU56TUTGt+zLxSv
	1tDQ0E7UknNKLqhS6E8uem/j5v8DhYjeSd5xRf1wEifiP8c5bRYg412WCoQX+qsQswcycF85whME5
	kolIaBgfBAoXKAIQ5KdyURR4D2mMkPCPWZDtjIhlHwg8ofR9LDqYv+Q6i53wCdBKh+9q6DkjatuJF
	uMGRBSlOhoRp8sbZlZ6JWR+uqlODCiNbaonluRhTK8KsP9MfQUwERuVZh+grCUx4MBJYLJlengH26
	geWWbkqvUhQJuA9D637Tpj2Bs18Asvt6my2OIOVG9LJaFqk4R+m/IXiSJ38aK6CB47PLk3SUTq9SN
	w3GS2E2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh2J-0000000FlRR-0V2v;
	Wed, 06 Aug 2025 16:30:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh2F-0000000FlQo-3HcY
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 16:30:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh2C-0005kf-H0; Wed, 06 Aug 2025 18:30:36 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh2C-00CEqC-15;
	Wed, 06 Aug 2025 18:30:36 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh2C-00DYmN-0n;
	Wed, 06 Aug 2025 18:30:36 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 18:30:34 +0200
Message-Id: <20250806163034.3231943-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_093039_818559_AC64B85D 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! test: add --bootarg option when running under QEMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test: qemu: pass -nographic in the default case.

Otherwise, we end up with an error message if the default is to use a
graphic backend.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/conftest.py b/conftest.py
index 45e8835924b3..e8de5952efb4 100644
--- a/conftest.py
+++ b/conftest.py
@@ -116,9 +116,10 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("barebox currently supports only a single extra virtio console\n", 1)
 
-    graphics = None
-    if pytestconfig.option.qemu_graphics:
-        if qemu_bin == "qemu-system-x86_64":
+    if qemu_bin is not None:
+        if not pytestconfig.option.qemu_graphics:
+            graphics = '-nographic'
+        elif qemu_bin == "qemu-system-x86_64":
             graphics = '-device isa-vga'
         elif 'pci' in features:
             graphics = '-device VGA'
-- 
2.39.5



