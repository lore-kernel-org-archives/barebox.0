Delivery-date: Fri, 28 Nov 2025 18:21:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AE-005rCr-2K
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:21:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AE-0001At-5i
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:21:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EHk2UkSXrjxDdmaUrnq9yai9Rm3EKumyRiv22opIBaM=; b=0DlzRfR0feaGaEdxcN8B3K3d2R
	vY2TNaUhZvzfnNLhiwCSPbiJsw2ACp9Obw4uI11gj2UkFaXHGSR4fUb/Cmapkah1KM9RxR79RdLtm
	wKMqufBWluJST5G7lwMFvLnMJ09fQEIQ6GWe5/RbUO/DnA9G2iU6nWfjcr3SSQcbVfNRftRKGqHjZ
	bK9yfzvW6UCBfsK2JUDvQh8GJPqSQk4IYnP+Fnc/CJ368r5U0pI+1r0tPNR8UuPOU/Kdb4npE957N
	Biy9t6Zh6U/+9uN7AMHdA8UUeA0xTPIwaW8vexEQ90DhwnVEfYmm1z4Z9TYg5rufsHYMdvI/opS8B
	AQnYuCEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29i-00000000ifm-0n08;
	Fri, 28 Nov 2025 17:21:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29f-00000000ier-0BRi
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-0000yQ-QS; Fri, 28 Nov 2025 18:21:08 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-002zUo-1z;
	Fri, 28 Nov 2025 18:21:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29c-000000009CN-28qg;
	Fri, 28 Nov 2025 18:21:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:01 +0100
Message-ID: <20251128172107.35323-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092111_085110_D67E7ED4 
X-CRM114-Status: UNSURE (   8.35  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] test: populate qemu_bin, even if missing features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the YAML lists no features, the lookup for qemu_bin is prematurely
aborted, even for QEMU environment configs.

Split up the try/except clauses to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/conftest.py b/conftest.py
index fa088b1cac81..55935f7602f7 100644
--- a/conftest.py
+++ b/conftest.py
@@ -134,9 +134,13 @@ def strategy(request, target, pytestconfig):  # noqa: max-complexity=30
     try:
         main = target.env.config.data["targets"]["main"]
         features = main["features"]
-        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
     except KeyError:
         features = []
+
+    try:
+        main = target.env.config.data["targets"]["main"]
+        qemu_bin = main["drivers"]["QEMUDriver"]["qemu_bin"]
+    except KeyError:
         qemu_bin = None
 
     virtio = None
-- 
2.47.3



