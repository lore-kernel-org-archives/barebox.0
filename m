Delivery-date: Mon, 05 Jun 2023 08:37:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qX-00BSHZ-KZ
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qV-0004Dp-6l
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ggkZF76DBTzTQ05gvx3f6d4SXkB/QOxXuLTaUsawAo=; b=TWEWjq3SqKHmscjkwVYdgqDDwc
	wcTPNtmEo96j+S6aSrxwSrtLwsYxJkmDgyUsptYvfbp9x7MoS0tt670eDGWIO8mcdFtNlrKpGuxk4
	ojkUmGun7Q6U0GikFuKzDPmR8YQGwTbiECHXWsebJw3J3HURyXHgGN4qqNBFkh+yNz7PtD1zrCctO
	C42yBvTfp+MqyFzaKVJhM46iiKCwBMG781SbQQQubiJqNdvONGFJmy9EKFq4PZ7YjSSre2OcI6DUD
	kIt/koN4g+tIqzGS/xwHr0TXnSQwIYesAbMR888DHBIJl5JYACEDt7K66QdsyeyvmJZe8DhNi0E1i
	VnBh69Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pT-00ENCO-0u;
	Mon, 05 Jun 2023 06:36:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pO-00EN88-2r
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-0003Wh-LJ; Mon, 05 Jun 2023 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-005CtY-Vm; Mon, 05 Jun 2023 08:36:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pQK-G0; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:19 +0200
Message-Id: <20230605063623.1254764-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233630_945420_06A645DF 
X-CRM114-Status: UNSURE (   9.63  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 10/14] ci: don't use deprecated Node.js 12 actions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently get some warnings about Node.js 12 use in actions/checkout@v2.
actions/checkout@v3 fixes this, so let's switch to that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-defconfigs.yml    | 2 +-
 .github/workflows/container.yml           | 2 +-
 .github/workflows/test-labgrid-pytest.yml | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/.github/workflows/build-defconfigs.yml b/.github/workflows/build-defconfigs.yml
index c205944f2660..c5c294300e03 100644
--- a/.github/workflows/build-defconfigs.yml
+++ b/.github/workflows/build-defconfigs.yml
@@ -27,7 +27,7 @@ jobs:
 
     steps:
     - name: Checkout code
-      uses: actions/checkout@v2
+      uses: actions/checkout@v3
 
     - name: Build
       run: |
diff --git a/.github/workflows/container.yml b/.github/workflows/container.yml
index 434745ae61e8..7a9b2fe74d57 100644
--- a/.github/workflows/container.yml
+++ b/.github/workflows/container.yml
@@ -13,7 +13,7 @@ jobs:
   build:
     runs-on: ubuntu-latest
     steps:
-    - uses: actions/checkout@v2
+    - uses: actions/checkout@v3
     - id: build-image
       uses: redhat-actions/buildah-build@v2
       with:
diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index e0b9cbf799f4..ae49decbaeae 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -37,7 +37,7 @@ jobs:
 
     steps:
     - name: Checkout code
-      uses: actions/checkout@v2
+      uses: actions/checkout@v3
 
     - name: Build
       run: |
-- 
2.39.2



