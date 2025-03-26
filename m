Delivery-date: Wed, 26 Mar 2025 09:00:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgM-004LlF-0U
	for lore@lore.pengutronix.de;
	Wed, 26 Mar 2025 09:00:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txLgK-0005mM-MN
	for lore@pengutronix.de; Wed, 26 Mar 2025 09:00:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FxiJmcDNSVk/qb0V1twTNA03SqKUUSTFfV2zhrfyyU4=; b=sx+xzch+poIj/VzVIXTCSYXhgA
	ur5N++2yMlzzn6dvPoMtGW676Eg7qR9D0qvt6qVHO6PCre33A7Gmj7SJhCXGuMTuB7by1HGttIYcP
	rbOsTHqTBhNl9TcS6LbL3PKMKXTdoXSdnWpKpgwlZ/bkQYDGFydmRw7P/okK5yLiRP5pNNVO9/NCD
	SJEK1mWXsnCtzqF6L4ZjC69h+7uTNfL3fdkI/9l97u9x9E6dI54rTbd0PuQAg1vRmngcDBrh1/wXK
	VS6u90oIXaFhVpKV+mCmyHcbRC8hgXs2PRXJNsXNRKPXND3Qq5KO9L2GzsY4hn2cJg85WPlOZ6w0y
	UBYDQq+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfn-00000007qaJ-4Ahx;
	Wed, 26 Mar 2025 07:59:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txLfW-00000007qSg-2PIx
	for barebox@lists.infradead.org;
	Wed, 26 Mar 2025 07:59:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfV-0005Kd-97; Wed, 26 Mar 2025 08:59:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-001iAv-21;
	Wed, 26 Mar 2025 08:59:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txLfU-00EZsX-34;
	Wed, 26 Mar 2025 08:59:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>,
	jre@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Mar 2025 08:59:18 +0100
Message-Id: <20250326075919.3448789-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
References: <20250326075919.3448789-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_005922_642595_30E1763D 
X-CRM114-Status: GOOD (  11.13  )
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
Subject: [PATCH 5/6] ci: pytest: run test suite on sandbox allyesconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Building allyesconfig in CI allows us to catch early compile-time
breakage when changes are done treewide. Running pytest over it
will ensure that compile-tested drivers don't break normal startup
when unused.

Additionally, allyesconfig also enables ASAN/UBSAN, which is a nice side
effect. A future change would be adding KASAN for other architectures as
well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/test-labgrid-pytest.yml |  4 ++++
 test/sandbox/allyesconfig.yaml            | 17 +++++++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 test/sandbox/allyesconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2a9f7a53aced..c43649e85fec 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -55,6 +55,10 @@ jobs:
             lgenv: 'test/sandbox/sandbox_defconfig.yaml'
             defconfig: sandbox_defconfig
 
+          - ARCH: sandbox
+            lgenv: 'test/sandbox/allyesconfig.yaml'
+            defconfig: sandbox_defconfig
+
     steps:
     - name: Checkout code
       uses: actions/checkout@v4
diff --git a/test/sandbox/allyesconfig.yaml b/test/sandbox/allyesconfig.yaml
new file mode 100644
index 000000000000..76b995127651
--- /dev/null
+++ b/test/sandbox/allyesconfig.yaml
@@ -0,0 +1,17 @@
+targets:
+  main:
+    drivers:
+      ExternalConsoleDriver:
+        cmd: !template "$LG_BUILDDIR/barebox"
+      ExternalPowerDriver:
+        cmd_on: 'true'
+        cmd_off: 'true'
+      BareboxDriver:
+        prompt: "barebox@[^:]+:[^ ]+ "
+      BareboxTestStrategy: {}
+    runner:
+      kconfig_add:
+        - CONFIG_CONSOLE_DISABLE_INPUT=n
+        - CONFIG_MALLOC_LIBC=y # for ASAN integration
+imports:
+  -  ../strategy.py
-- 
2.39.5



