Delivery-date: Wed, 06 Aug 2025 18:32:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh4I-007hFo-0O
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 18:32:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujh4H-00064g-K9
	for lore@pengutronix.de; Wed, 06 Aug 2025 18:32:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p+I5k6IchRLZM6nTwCG5T3lWf5VLxE56D+G5Ko/3Ag4=; b=eS/1CudVqrwlUGLstu/Xhs/auu
	TC6bYDRMWIEIZVx6HuLBevT7s3ApiC9VuOjWNiF5VcqJML0c4DcAVud8uxLivSqOA8e2/yvCkGedE
	6dXoNGS1St+fpZvKtNb4REqG6PzBJWrf2kK64aAewx43sVyeV3C4Dkl+XXlbitx5UAIwrZh1JKDW2
	3Tzao7NAi5SwOYTRpRGMsgRGnCAuttZkwNJvhCXw2tuB+WErfEdWoYPhy8NU7X3peGKpWTFAJXwwd
	N6R5Zn7YTkk9ml8AtBd4fp9szI3ipC3TTinupikGwiI1NlSwWTgxNsygI+wnQj96EOTjVcPo1zifh
	aEoxjVkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh3r-0000000Fld3-3EuC;
	Wed, 06 Aug 2025 16:32:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujh3p-0000000Flcb-0hP5
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 16:32:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh3n-0005z0-Qk; Wed, 06 Aug 2025 18:32:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh3n-00CEqN-24;
	Wed, 06 Aug 2025 18:32:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujh3n-00DZ4i-1l;
	Wed, 06 Aug 2025 18:32:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 18:32:14 +0200
Message-Id: <20250806163214.3233080-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_093217_199312_EF928C4F 
X-CRM114-Status: GOOD (  10.79  )
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
Subject: [PATCH] fixup! test: add support for pytest --graphic
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



