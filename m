Delivery-date: Tue, 30 Sep 2025 11:36:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WmF-002jRt-0V
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 11:36:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3WmE-0005zU-Js
	for lore@pengutronix.de; Tue, 30 Sep 2025 11:36:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HPOQ9StV1cydcTmcMqZZWMIhE0uDwqGDs3XI2inXfCQ=; b=CdaMMFPvlXq3w4bqwIYnqpYjo9
	4lD5kDLUY5LTTJyrdc1dRxoPxAVgn325brYMx1QhlJZ6F7XPRkLbFPrPZi/0HCP65R1VtqA3/ujvK
	PJapZECRpbXmaDLfP85V6TZ5PK9ftY5zI6I3JjkOvaUjK8NaoLdi5EoC3ujmPO5kkKrup3PK55y8m
	wwYbG0pF+spVDuu8eEpodU730UQl73fWUCkiHorIGvFByKmzl1iEFSv+B9mQa7MhZujZ9XB+ZJcwR
	upjmoTPCjRlLmdokY0DvUtEagYdqb89b4kJUyRSYB0Yl1ltTH9vyBPCo/2tiU+XUtkBJA18R6pVh6
	TVLoHgUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wlm-00000004pYE-3hrY;
	Tue, 30 Sep 2025 09:35:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3Wlj-00000004pXO-28d7
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 09:35:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-0005n5-V8; Tue, 30 Sep 2025 11:35:33 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-001DxU-2U;
	Tue, 30 Sep 2025 11:35:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v3Wlh-00000009ltL-2r2v;
	Tue, 30 Sep 2025 11:35:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Sep 2025 11:35:28 +0200
Message-ID: <20250930093532.2329023-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20250930093532.2329023-1-a.fatoum@pengutronix.de>
References: <20250930093532.2329023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_023535_573008_8A287288 
X-CRM114-Status: UNSURE (   7.57  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! test: py: add basic security policy test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

test: py: policies: rework for latest changes

Compared to the RFC, tamper now prohibits the console, so the test will
timeout. Work around this by issuing multiple commands in succession.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/py/test_policies.py | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/test/py/test_policies.py b/test/py/test_policies.py
index b4ece29c9597..7b6d72b4438f 100644
--- a/test/py/test_policies.py
+++ b/test/py/test_policies.py
@@ -29,15 +29,15 @@ def test_security_policies(barebox, env):
     assert 'go: Operation not permitted' not in stdout
     assert rc == 1
 
-    stdout = barebox.run_check('sconfig -v -s tamper')
+    stdout = barebox.run_check("""
+    sconfig -v -s tamper; echo "POLICY=${security.policy}";
+    sconfig +SCONFIG_CONSOLE_INPUT +SCONFIG_SHELL
+    """)
     assert set(['-SCONFIG_BOOT_UNSIGNED_IMAGES',
                 '-SCONFIG_RATP',
-                '-SCONFIG_CMD_GO']) <= set(stdout)
-    assert 'Active Policy: tamper' in barebox.run_check('sconfig')
-
-    _, _, rc = barebox.run('sconfig -s devel')
-    assert rc != 0
-    assert 'Active Policy: tamper' in barebox.run_check('sconfig')
+                '-SCONFIG_CMD_GO',
+                'POLICY=tamper']) <= set(stdout)
+    assert 'Active Policy: debug0' in barebox.run_check('sconfig')
 
     stdout, _, rc = barebox.run('go')
     assert 'go - start application at address or file' not in stdout
-- 
2.47.3



