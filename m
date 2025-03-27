Delivery-date: Thu, 27 Mar 2025 15:59:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohm-004uYm-00
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 15:59:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txohl-0000iQ-FH
	for lore@pengutronix.de; Thu, 27 Mar 2025 15:59:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jf91wAZXgLKLGGMvD829O8j//UuhzPzO6ZhYzz07QxM=; b=FgSlGZllVSqaFVtNUIlZ+RvjCc
	Ajxoqe2zWlQWofPp8xusQLEWAgIf0MtSun+em6u7wHZW5IJeAosMg6zvhlT8mzLk7DiUcLIoxJ//J
	COUagJd2opL+NnmSdW76aETMugqhiPn/0HemhZ4gcSSFdq5VBwxu3L3uJ/HL2zV57DwU/lp7mNjQ7
	u42EdCwqInzdQdby0gHo7gJWK6t5vRz41ukd/8QzQD+/YxFG67E7P+UuaN6BxsSMpNITdrGhFctef
	iUM3hljXpGuFgXZQeFSs3vPpHDMCtr7fd3ZfXvU5R5C0yZo6B07VQM9t/xHZEGhZOtS4FTkhHE5uD
	QRamtmiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txohI-0000000BHiw-3joq;
	Thu, 27 Mar 2025 14:59:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txoWK-0000000BFoo-1kLB
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 14:47:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWJ-0006Je-4J; Thu, 27 Mar 2025 15:47:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-001whw-33;
	Thu, 27 Mar 2025 15:47:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txoWI-007jNu-2j;
	Thu, 27 Mar 2025 15:47:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Mar 2025 15:47:40 +0100
Message-Id: <20250327144742.1841423-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_074748_452193_8693A390 
X-CRM114-Status: UNSURE (   9.78  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] test: bthread: change comparison condition for switches vs. yields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The code was written with the assumption that isolated yields from test
thread to main thread and back will always be at least as fast as
unrestricted scheduling.

This assumption held so far, but breaks down in sandbox, because it's
highly influenced by the system's CPU pressure.

Just check that we can schedule @1000Hz at least in both cases.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_bthread.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/test/py/test_bthread.py b/test/py/test_bthread.py
index 6e7b4ba5007e..84fb9f830b0c 100644
--- a/test/py/test_bthread.py
+++ b/test/py/test_bthread.py
@@ -20,4 +20,5 @@ def test_bthread(barebox, barebox_config):
     switches = int(barebox.run_check("bthread -c")[0].split()[0])
     yields   = int(barebox.run_check("bthread -t")[0].split()[0])
 
-    assert yields < switches
+    assert yields > 1000
+    assert yields > 1000
-- 
2.39.5



