Delivery-date: Thu, 05 Jun 2025 13:37:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uF-003zhh-1C
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uB-0000TF-Jr
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MGSTPJawO8q7hPTlA1ApmQzuXRsQWw7AtfiiajDJLa0=; b=Q323hqDFgSLXgFdW1FC85oiT0g
	l9G/4jQNHQq9D5QErmVIPSGN0MvMOq9xbqglJ6DLttXDv5I3OcEOyTg8G4Pye2zpWdQnv0c4XfuIw
	Y8tIj0wdy+aBFWD60DnXK3a5mS81CiYf2acZiCQ7mgUPnsN2yZoSAItWD1NliQalCDhHZPOgQSgFJ
	AXNDD23vpWlT2UJuaEYgAksweW4l4BKf5z8vT1UwogjPPA0U13/J2q7uguAdWV73S/vSMxXw0+Xaw
	f0sEFgvnzsNcOwoqZnlV4aY7gP+a5LVmVbJS56xqGFGatpzk1Rg/0R42srUOVSTINLZ5mo+XKn8jP
	K2LMNDOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tT-0000000FNE9-073I;
	Thu, 05 Jun 2025 11:36:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8iu-0000000FMAj-38NA
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:25:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-000183-CS; Thu, 05 Jun 2025 13:25:25 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-001wtn-0c;
	Thu, 05 Jun 2025 13:25:25 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8ir-008DaT-2R;
	Thu, 05 Jun 2025 13:25:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:25:24 +0200
Message-Id: <20250605112524.1958636-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250605112524.1958636-1-a.fatoum@pengutronix.de>
References: <20250605112524.1958636-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042528_786305_D264BBFD 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 2/2] ci: add new musl-tools Github CI workflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To avoid noticing musl breakage when barebox is updated in
OpenEmbedded-core, let's add a CI test at our side as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/musl-tools.yml | 39 ++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 .github/workflows/musl-tools.yml

diff --git a/.github/workflows/musl-tools.yml b/.github/workflows/musl-tools.yml
new file mode 100644
index 000000000000..52cdd184ade3
--- /dev/null
+++ b/.github/workflows/musl-tools.yml
@@ -0,0 +1,39 @@
+name: build tools against musl
+
+on: [push, pull_request]
+
+jobs:
+  musl-tools:
+    runs-on: ubuntu-latest
+    container:
+      image: ghcr.io/barebox/barebox/barebox-ci:latest
+      # allow mounting and devtmpfs in the container
+      options: --user=root --privileged -v /dev:/dev
+
+    strategy:
+      fail-fast: false
+      matrix:
+
+        include:
+          - defconfig: hosttools_defconfig
+            suffix:
+
+          - defconfig: targettools_defconfig
+            suffix: -target
+
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v4
+
+    - name: Build
+      id: build
+      run: |
+        export PKG_CONFIG='pkg-config --keep-system-libs'
+        export CROSS_PKG_CONFIG='pkg-config --keep-system-libs'
+
+        m () { make -j$(nproc) CC=musl-gcc LD=musl-gcc HOSTCC=musl-gcc HOSTLD=musl-ld "$@"; }
+
+        m ${{matrix.defconfig}}
+        m scripts/
+
+        test -n "$(musl-ldd scripts/imx/imx-usb-loader${{matrix.suffix}} 2>/dev/null | grep musl)"
-- 
2.39.5



