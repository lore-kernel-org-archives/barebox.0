Delivery-date: Mon, 16 Dec 2024 12:37:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PV-008nte-1U
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 12:37:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PU-0003QE-Tm
	for lore@pengutronix.de; Mon, 16 Dec 2024 12:37:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WEpB/ygEgdSpU0TkMVYELzKL+26Ol+zIZ4N85+iwo5w=; b=glsuZsEYroZKff6uTGqxyMzjJv
	fzi438LosKIyDyXlAK1x7x5WRJnAQP0dBB0WVoVxrU3NuzbSTKisN0YzYXRydQtcWiQ00HnKJpiVh
	ub1f7EOeXbw82b5nlHwgHgKyqUnz/WZKqQ3JafQFTkKk8D5iYU5PR+1EmdEYyA7UF98fUrMI9oPXR
	8JlP+ky7hXmojxvzimi6eWlpzBJVpzNDZ1sOpRWUTtp2lSil8N/bObEAGr+o+oE2+U6YDR56H2j3x
	Fh67dsI0vN9TZ2wIs5lGccfUZcSOkVfgXYlzqFyJ6tKqdloclmeLRvoZEEItGUUeLu5Rt9oY3f1po
	VLmSZXFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P5-00000009r9W-3dJ5;
	Mon, 16 Dec 2024 11:36:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P1-00000009r6i-0HAb
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 11:36:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-0003AP-Mw; Mon, 16 Dec 2024 12:36:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oy-003ghR-2R;
	Mon, 16 Dec 2024 12:36:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-001hq4-1Q;
	Mon, 16 Dec 2024 12:36:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Dec 2024 12:36:38 +0100
Message-Id: <20241216113640.403845-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216113640.403845-1-a.fatoum@pengutronix.de>
References: <20241216113640.403845-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_033643_108125_1053F015 
X-CRM114-Status: GOOD (  11.82  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] sandbox: add support for architecture-specific debug options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There is work under way for better debugging facilities in sandbox,
including libfuzzer and code coverage support.

Let's provide a home for the new config options in the form of an
architecture specific Kconfig.debug file like Linux already has.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig.debug      | 2 ++
 arch/kvx/Kconfig.debug      | 2 ++
 arch/mips/Kconfig.debug     | 2 ++
 arch/openrisc/Kconfig.debug | 2 ++
 arch/powerpc/Kconfig.debug  | 2 ++
 arch/riscv/Kconfig.debug    | 2 ++
 arch/sandbox/Kconfig.debug  | 2 ++
 arch/x86/Kconfig.debug      | 2 ++
 common/Kconfig.debug        | 6 ++++++
 9 files changed, 22 insertions(+)
 create mode 100644 arch/arm/Kconfig.debug
 create mode 100644 arch/kvx/Kconfig.debug
 create mode 100644 arch/mips/Kconfig.debug
 create mode 100644 arch/openrisc/Kconfig.debug
 create mode 100644 arch/powerpc/Kconfig.debug
 create mode 100644 arch/riscv/Kconfig.debug
 create mode 100644 arch/sandbox/Kconfig.debug
 create mode 100644 arch/x86/Kconfig.debug

diff --git a/arch/arm/Kconfig.debug b/arch/arm/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/arm/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/kvx/Kconfig.debug b/arch/kvx/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/kvx/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/mips/Kconfig.debug b/arch/mips/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/mips/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/openrisc/Kconfig.debug b/arch/openrisc/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/openrisc/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/powerpc/Kconfig.debug b/arch/powerpc/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/powerpc/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/riscv/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/sandbox/Kconfig.debug b/arch/sandbox/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/sandbox/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/arch/x86/Kconfig.debug b/arch/x86/Kconfig.debug
new file mode 100644
index 000000000000..295942fe3fd5
--- /dev/null
+++ b/arch/x86/Kconfig.debug
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# dummy file, do not delete
diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index ea6864ac4d91..c4d1313ef866 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -161,4 +161,10 @@ config WERROR
 
 	  If in doubt, say Y.
 
+menu "$(SRCARCH) Debugging"
+
+source "arch/$(SRCARCH)/Kconfig.debug"
+
+endmenu
+
 endmenu
-- 
2.39.5



