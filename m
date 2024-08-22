Delivery-date: Thu, 22 Aug 2024 21:18:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shDKM-00CLMV-0W
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 21:18:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1shDKL-0003Wg-HU
	for lore@pengutronix.de; Thu, 22 Aug 2024 21:18:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qhahjMrVYo0RSy3HEc4WMOdOj6rqLbVsCjDJQvJTlb8=; b=o1YFisls/qGArAv+xuMl4pAzKY
	VcgFf4PtQJ3XGLZQBgcGkwq4TuG+r+CBsrldBuZkh/UlJsiAOVbkBMvV/61fPUjab4TDabjHjFJA/
	inn0lJx9oiQyAmNdFQeq5ML7w3BBvZyxRCt1sIdnYP6r4yucEVoImrl9eUfzje2d3GpqONnB48bB0
	tK+x4jVw0WglzJfr6OYuK/uKmDR11zoqjqrsEvlrPOLF3Zd8YP5Yxi7mAd0WsBTVliCGoK8HNaFPJ
	OS01jyDKtZh8THERvJj2Ak58V+Or1krlNsWQSHqz81SJ4r9KkbgDB87sKqS5PppH4LjC1QX6beLan
	j6kGFPpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDJi-0000000E3uX-2d9g;
	Thu, 22 Aug 2024 19:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDJA-0000000E3kG-1drU
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 19:17:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shDJ8-0003Q6-KN; Thu, 22 Aug 2024 21:17:18 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shDJ6-002Jgu-9I; Thu, 22 Aug 2024 21:17:16 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1shDJ6-00FoP4-0c;
	Thu, 22 Aug 2024 21:17:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 22 Aug 2024 21:17:14 +0200
Message-Id: <20240822191714.3768641-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_121720_475280_8F4C2540 
X-CRM114-Status: GOOD (  10.19  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test: directly exit when barebox state transition fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For trivial errors like a QEMU -bios or -kernel option not pointing at
an existing file, the pytest output is extremely confusing. It prints a
stack trace for every single test after QMPError("Received empty response")
is raised and the stderr text explaining that the file is missing is
easily overlooked.

Improve this by just existing right away once a strategy transition
fails and print the standard error if any as part of the exit message.

This looks a bit cumbersome, because the capsys fixture can't be used
with a session-scoped fixture, see the still open pytest issue[1] for
details.

[1]: https://github.com/pytest-dev/pytest/issues/2704

Suggested-by: Bastian Krause <bst@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/conftest.py b/conftest.py
index 56d4b512a912..5639b7e22ebd 100644
--- a/conftest.py
+++ b/conftest.py
@@ -3,15 +3,26 @@ import os
 import argparse
 from test.py import helper
 
+def transition_to_barebox(request, strategy):
+    try:
+        strategy.transition('barebox')
+    except Exception as e:
+        # If a normal strategy transition fails, there's no point in
+        # continuing the test. Let's print stderr and exit.
+        capmanager = request.config.pluginmanager.getplugin("capturemanager")
+        with capmanager.global_and_fixture_disabled():
+            _, stderr = capmanager.read_global_capture()
+            pytest.exit(f"{type(e).__name__}(\"{e}\"). Standard error:\n{stderr}",
+                        returncode=3)
 
 @pytest.fixture(scope='function')
-def barebox(strategy, target):
-    strategy.transition('barebox')
+def barebox(request, strategy, target):
+    transition_to_barebox(request, strategy)
     return target.get_driver('BareboxDriver')
 
 @pytest.fixture(scope="session")
-def barebox_config(strategy, target):
-    strategy.transition('barebox')
+def barebox_config(request, strategy, target):
+    transition_to_barebox(request, strategy)
     command = target.get_driver("BareboxDriver")
     return helper.get_config(command)
 
-- 
2.39.2



