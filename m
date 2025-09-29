Delivery-date: Mon, 29 Sep 2025 10:05:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sl-002Laa-11
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:05:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v38sj-0000gz-OQ
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:05:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W1BliPVPEUNtLjzEf4XWY+NmkDwBcEYuMcmhf3L2Jow=; b=syi2hCxunn3l5+Y9MaePWcY6Nm
	zJJBLV19qNfQr8yyBowE/b6ppYZ7UotUHeL7ZitW/sVYIWaCRUriM0dusz2CnHKac0Ti1OMnDu9pI
	pzoqU4SU3R4giHk/6AR6dPBlWbeTt0iQZC8nIKhQWc2A/H2S5Rt+xIsskslSG5Nq2giJCJjICY4PN
	DgNRLSGbAadHz1dpvbMU2wyEAPXyhjMhII6K803oVyTUtZnRmLaqeI3sJ1D94FwLyKQWCgPcIGnyK
	XUA+tegXwzDRB+GTDnIEUqo5Gg7ZBhPgGPXaPDba+UjngXhUrnUJnCajDNm4qp9EdphVaWeLAQugm
	TlF18svQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38sA-00000001iJh-3FG1;
	Mon, 29 Sep 2025 08:04:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v38s9-00000001iGp-0WKq
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:04:38 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v38s6-000070-8p; Mon, 29 Sep 2025 10:04:34 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Mon, 29 Sep 2025 10:03:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250929-tlv-integration-v2-2-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1623; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=ggcRDnmjNuu3EcZYR6NVXEUd6hFjBMzhwEyE4igDt4M=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsi4Zdsn0q2XP3ct+6kf1RkOHSx/j7XX3U48Yc19e8XkS
 VOEWm+t6ShlYRDjYpAVU2SJVZNTEDL2v25WaRcLM4eVCWQIAxenAEyk25KR4bn4wfJZzw7Ztb00
 6baq4IiW2hX8edmHGo6V+zhqI07Pe83wP4Th4ZorJ/he3zztwmoad+5N+0rFq9bz9k1f8GM533P
 hp9wA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_010437_156973_4B8F6818 
X-CRM114-Status: UNSURE (   9.90  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/9] test: provide testfs via fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Move the logic of providing testfs out of the tests and into a fixture.
Pytest-modules that prepare testing data in their own fixtures should
build on top of this.

Tests using the fixture will be skipped if the feature is unavailable;
remove that check from existing tests.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 conftest.py         | 8 ++++++++
 test/py/test_fit.py | 5 +----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/conftest.py b/conftest.py
index 00969e62df..116beb5d14 100644
--- a/conftest.py
+++ b/conftest.py
@@ -231,3 +231,11 @@ def strategy(request, target, pytestconfig):
         strategy.force(state)
 
     return strategy
+
+@pytest.fixture(scope="session")
+def testfs(strategy, env):
+    if "testfs" not in env.get_target_features():
+        pytest.skip("testfs not supported on this platform")
+
+    path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
+    return path
diff --git a/test/py/test_fit.py b/test/py/test_fit.py
index 08d5feba5c..3b2b8ff871 100644
--- a/test/py/test_fit.py
+++ b/test/py/test_fit.py
@@ -15,10 +15,7 @@ def generate_bootscript(barebox, image, name="test"):
     return name
 
 
-def test_fit(barebox, env, target, barebox_config):
-    if 'testfs' not in env.get_target_features():
-        pytest.xfail("testfs feature not specified")
-
+def test_fit(barebox, env, target, barebox_config, testfs):
     _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
     if returncode != 0:
         pytest.xfail("skipping test due to missing FIT image")

-- 
2.51.0.297.gca2559c1d6



