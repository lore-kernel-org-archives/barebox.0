Delivery-date: Fri, 05 Aug 2022 10:55:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJt6q-00CJ6C-Co
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 10:55:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJt6q-0007kh-Vv
	for lore@pengutronix.de; Fri, 05 Aug 2022 10:55:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NjiGPsCInjjzd3bdpgn7EL1EMLpGVujc48zWKtA3/f0=; b=Z0ZvXEeF0L4t1SA48Mr8XR2NGr
	E4m1ZXJrIdSG4z/pcLnt2W8y9y3mpfo2sfJe9f3TeB+TbSnta2aUEn70iVeFgd0FdoCe9Fx5MALDp
	Gt7tRBGH/YWE+ZWTOx3gAGYe4uvJKW7EtLzxMBnMzhB59MAmrr0kd45nz7oaKvN0GviiaSRpkF6AV
	/j4hTacXTdEWB5musTwFp8mG9QP1P0nmqkVFMnrkJs7Q7q2/foe2oh50aPEk/56CCZdRe55VqaK5U
	uCc+TFRuwDGA9edcHskWkxqrIjaUN/bfxbJczFNSedlA+d/R3U8kNKJWi3diYKKXU4qjZJZ1++Pd3
	5Hr6kVlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJt5T-00DK3y-DD; Fri, 05 Aug 2022 08:53:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJt5K-00DJzs-JQ
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 08:53:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5F-0007eL-UV; Fri, 05 Aug 2022 10:53:29 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5C-001rI4-VA; Fri, 05 Aug 2022 10:53:29 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJt5E-00EJMP-EK; Fri, 05 Aug 2022 10:53:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 10:53:13 +0200
Message-Id: <20220805085314.3404920-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_015334_664306_6F7F298F 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] gitignore: add device tree blobs to top-level .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have device trees outside of the usual directories, e.g. for
overlays, so move the .gitignore rule to top-level.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore                           | 2 ++
 arch/arm/boards/qemu-virt/.gitignore | 3 ---
 arch/arm/dts/.gitignore              | 1 -
 arch/mips/dts/.gitignore             | 1 -
 arch/openrisc/dts/.gitignore         | 1 -
 arch/riscv/dts/.gitignore            | 1 -
 arch/sandbox/dts/.gitignore          | 1 -
 7 files changed, 2 insertions(+), 8 deletions(-)
 delete mode 100644 arch/arm/boards/qemu-virt/.gitignore
 delete mode 100644 arch/arm/dts/.gitignore
 delete mode 100644 arch/mips/dts/.gitignore
 delete mode 100644 arch/riscv/dts/.gitignore
 delete mode 100644 arch/sandbox/dts/.gitignore

diff --git a/.gitignore b/.gitignore
index cb87e9314f40..dd36d5083b17 100644
--- a/.gitignore
+++ b/.gitignore
@@ -35,6 +35,8 @@
 *.symtypes
 *.tab.[ch]
 Module.symvers
+*.dtb
+*.dtb.*
 
 #
 # Top-level generic files
diff --git a/arch/arm/boards/qemu-virt/.gitignore b/arch/arm/boards/qemu-virt/.gitignore
deleted file mode 100644
index 3e3932a3bfba..000000000000
--- a/arch/arm/boards/qemu-virt/.gitignore
+++ /dev/null
@@ -1,3 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-*.dtb*
diff --git a/arch/arm/dts/.gitignore b/arch/arm/dts/.gitignore
deleted file mode 100644
index 077903c50a26..000000000000
--- a/arch/arm/dts/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-*dtb*
diff --git a/arch/mips/dts/.gitignore b/arch/mips/dts/.gitignore
deleted file mode 100644
index 077903c50a26..000000000000
--- a/arch/mips/dts/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-*dtb*
diff --git a/arch/openrisc/dts/.gitignore b/arch/openrisc/dts/.gitignore
index 077903c50a26..e69de29bb2d1 100644
--- a/arch/openrisc/dts/.gitignore
+++ b/arch/openrisc/dts/.gitignore
@@ -1 +0,0 @@
-*dtb*
diff --git a/arch/riscv/dts/.gitignore b/arch/riscv/dts/.gitignore
deleted file mode 100644
index 077903c50a26..000000000000
--- a/arch/riscv/dts/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-*dtb*
diff --git a/arch/sandbox/dts/.gitignore b/arch/sandbox/dts/.gitignore
deleted file mode 100644
index 077903c50a26..000000000000
--- a/arch/sandbox/dts/.gitignore
+++ /dev/null
@@ -1 +0,0 @@
-*dtb*
-- 
2.30.2



