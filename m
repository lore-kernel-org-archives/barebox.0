Delivery-date: Wed, 17 Jul 2024 08:20:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTy1N-0005Sf-1v
	for lore@lore.pengutronix.de;
	Wed, 17 Jul 2024 08:20:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTy1N-0003Vo-0Q
	for lore@pengutronix.de; Wed, 17 Jul 2024 08:20:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nvYPg5IYLrrP1QkVWv75g+L65FZ3ZQlZsbtCAGI/8lU=; b=EvLypk1bfkjPrA/9h6fuAoi10U
	z8i3BHUnLL8BrXbJQ1ZrnWtrNt9zd1HLQbR9UJztzeWPxJE0BMEt7VgPgijCoNGJx9oGT1UkAHo6z
	Ipr9ZtR8A428HHltWs2/fxPXgIuhGtVMQ5QvEL8H6FL5hrm+/IfJgVKk+C1OsrHhGCUpRsetTIsS7
	5hcXNNtiFSqqix8TSxYk8vMPMHPyLydA3YpTdKbC1tUSJaA9HJyg1uNCygMEPKRqr2oVNUHSX5HwV
	0iViBUuSfjthkLlsUIyJBUHiLiOd3VJuXROCgCknUPk5lvcFd2cmE3/FwRL5OaeMHPQjy0v5iExki
	1aUKEMWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTy0w-0000000CnIa-2CRv;
	Wed, 17 Jul 2024 06:19:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTy0t-0000000CnHx-3kDy
	for barebox@lists.infradead.org;
	Wed, 17 Jul 2024 06:19:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0s-0003Pw-Dm; Wed, 17 Jul 2024 08:19:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0s-0009OZ-0p; Wed, 17 Jul 2024 08:19:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTy0r-00Bmlv-31;
	Wed, 17 Jul 2024 08:19:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 17 Jul 2024 08:19:40 +0200
Message-Id: <20240717061941.2809074-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_231943_953774_3DDD5079 
X-CRM114-Status: UNSURE (   9.88  )
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
Subject: [PATCH 1/2] ci: bump action versions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Github Actions run log warnings about some of our actions being
deprecated, because they use outdated node.js versions.

For actions/checkout we just need to bump the version.
actions/upload-artifact@v4 now refuses identically named artifacts,
so we fix this by factoring in the name of the defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml    | 2 +-
 .github/workflows/container.yml           | 2 +-
 .github/workflows/test-labgrid-pytest.yml | 6 +++---
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index 6690b9db25b8..46f59fd118c1 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -31,7 +31,7 @@ jobs:
 
     steps:
     - name: Checkout code
-      uses: actions/checkout@v3
+      uses: actions/checkout@v4
 
     - name: Build
       run: |
diff --git a/.github/workflows/container.yml b/.github/workflows/container.yml
index 7a9b2fe74d57..9bb23a5836ac 100644
--- a/.github/workflows/container.yml
+++ b/.github/workflows/container.yml
@@ -13,7 +13,7 @@ jobs:
   build:
     runs-on: ubuntu-latest
     steps:
-    - uses: actions/checkout@v3
+    - uses: actions/checkout@v4
     - id: build-image
       uses: redhat-actions/buildah-build@v2
       with:
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 21d189880941..42a796a157e1 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -49,7 +49,7 @@ jobs:
 
     steps:
     - name: Checkout code
-      uses: actions/checkout@v3
+      uses: actions/checkout@v4
 
     - name: Build
       run: |
@@ -83,9 +83,9 @@ jobs:
         files: ./*.tests.xml
 
     - name: Publish Labgrid Log Results
-      uses: actions/upload-artifact@v3
+      uses: actions/upload-artifact@v4
       if: always()
       with:
-        name: Console Logs
+        name: console-log-${{matrix.defconfig}}
         path: log/
         if-no-files-found: error
-- 
2.39.2



