Delivery-date: Wed, 01 Apr 2026 17:13:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGM-007WxF-2y
	for lore@lore.pengutronix.de;
	Wed, 01 Apr 2026 17:13:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7xGM-0003ya-7V
	for lore@pengutronix.de; Wed, 01 Apr 2026 17:13:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NV+eNFrHsTy2wOgIU8bwIZ6ef+mt8Uxm9d7vpOyFqR0=; b=WixsmnKGjaRDiPa8sGsRVhSvJl
	SpUjTOQm7J3jHK/WSGFUVEMy2sYFffBeaMXJ0HeXCs1ljuGosbvcOCx3L/8Lj3Du7T3b4NNgM+Z+W
	Oq6j57WunBltqioAu31Z/BWvMAaU4yNKyckhf8wf2ZrDQYUtHBCnlNDoNmXRJs/1iocuABZpkQgjU
	ik2SMKWGGXxCfiH20kDa50RutHBMMt5ZBg0jdSj+NShN/owCq+JvfMzSjQwKcYciMDqT5aRCL0LGu
	o6TS6FKn0orMoJKGaxdYIsnf5smhkye8kAkJ+sFeUkZjhs6lBXZh0RQz3qf44dfAlxHKL9eQz1LAF
	xwkmYYVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFq-0000000FbcH-01hY;
	Wed, 01 Apr 2026 15:13:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFo-0000000Fbbq-2Et6
	for barebox@bombadil.infradead.org;
	Wed, 01 Apr 2026 15:13:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=NV+eNFrHsTy2wOgIU8bwIZ6ef+mt8Uxm9d7vpOyFqR0=; b=HelgIq242ub4vNdRPiQtsvF1Ot
	0aJ40TPTxrMFLGvzWpwoL59jqoOkD/UvSavbeGmyKXukrtEHeftR6VGdassnpTYYaneJQLFrFcGLT
	oWODf4QzZWk+lu4PxJEMwIfqjPEUYHuxKMgWCnZVGr0FsL48be/AJWEIAI/WIS4XbJMSWwqE8trKm
	dSK/cfVU0W8xr9dDsgNNc6aM5+5mPbUquD3tRi49mz+NGxxZn2QhKgwZLFgmEsmOWcNajxYbsEX3I
	5LtgT5eMe32IqTl6Lw1tcxhK3c+8O3F3AQkjyKzVJcAl9QT7kDKzp+lFmBMF/UdQqWlOCSjG/JoYV
	63qf3ixg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7xFl-00000000iw9-2Mtv
	for barebox@lists.infradead.org;
	Wed, 01 Apr 2026 15:13:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1w7xFi-0003kV-Rk; Wed, 01 Apr 2026 17:13:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  1 Apr 2026 17:07:16 +0200
Message-ID: <20260401151227.2097733-4-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260401151227.2097733-2-a.fatoum@barebox.org>
References: <20260401151227.2097733-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_161309_679964_5614D3C3 
X-CRM114-Status: GOOD (  15.64  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] security: policy: support age verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

California's Digital Age Assurance Act mandates age-appropriate feature
gating for operating systems. As barebOS qualifies, implement compliance
via the security policy framework.

The security policies for virt32_secure_defconfig have been updated
accordingly:

 - lockdown: field-deployed devices are unsupervised and adult operators
   can not be assumed

 - tamper: Tampering is clearly a sign of immaturity

 - devel: Much barebox development relates to drivers, which requires
   at least 16+ with adult supervision

 - factory: all age brackets allowed, because child labor laws
   already imply factory workers to be 18+

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Sconfig                                       |  1 +
 .../qemu-virt/qemu-virt-factory.sconfig       |  8 ++++++++
 .../qemu-virt/qemu-virt-lockdown.sconfig      |  8 ++++++++
 include/security/age.h                        | 14 +++++++++++++
 security/Sconfig.age                          | 20 +++++++++++++++++++
 security/qemu-virt-devel.sconfig              |  8 ++++++++
 security/qemu-virt-tamper.sconfig             |  8 ++++++++
 7 files changed, 67 insertions(+)
 create mode 100644 include/security/age.h
 create mode 100644 security/Sconfig.age

diff --git a/Sconfig b/Sconfig
index cdb2ceccb1b4..2c7804453cb9 100644
--- a/Sconfig
+++ b/Sconfig
@@ -9,3 +9,4 @@ source "common/Sconfig"
 source "drivers/usb/gadget/Sconfig"
 source "commands/Sconfig"
 source "fs/Sconfig"
+source "security/Sconfig.age"
diff --git a/common/boards/qemu-virt/qemu-virt-factory.sconfig b/common/boards/qemu-virt/qemu-virt-factory.sconfig
index 7fb35e9b722d..a9d9f021e832 100644
--- a/common/boards/qemu-virt/qemu-virt-factory.sconfig
+++ b/common/boards/qemu-virt/qemu-virt-factory.sconfig
@@ -34,3 +34,11 @@ SCONFIG_USB_GADGET=y
 # end of Command Policy
 
 SCONFIG_FS_EXTERNAL=y
+
+#
+# AB1043 Age Verification
+#
+SCONFIG_AB1043_AGE_13=y
+SCONFIG_AB1043_AGE_16=y
+SCONFIG_AB1043_AGE_18=y
+# end of AB1043 Age Verification
diff --git a/common/boards/qemu-virt/qemu-virt-lockdown.sconfig b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
index 04763d2233b4..1683d16b47f9 100644
--- a/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
+++ b/common/boards/qemu-virt/qemu-virt-lockdown.sconfig
@@ -33,3 +33,11 @@ SCONFIG_SHELL=y
 # end of Command Policy
 
 # SCONFIG_FS_EXTERNAL is not set
+
+#
+# AB1043 Age Verification
+#
+# SCONFIG_AB1043_AGE_13 is not set
+# SCONFIG_AB1043_AGE_16 is not set
+# SCONFIG_AB1043_AGE_18 is not set
+# end of AB1043 Age Verification
diff --git a/include/security/age.h b/include/security/age.h
new file mode 100644
index 000000000000..609defde04fb
--- /dev/null
+++ b/include/security/age.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __SECURITY_AGE_H
+#define __SECURITY_AGE_H
+
+#include <security/config.h>
+
+/*
+ * California AB1043 Digital Age Verification Act compliance.
+ * Maps age brackets to Sconfig security policy options.
+ */
+
+#define IS_OF_AGE(n)	IS_ALLOWED(SCONFIG_AB1043_AGE_##n)
+
+#endif /* __SECURITY_AGE_H */
diff --git a/security/Sconfig.age b/security/Sconfig.age
new file mode 100644
index 000000000000..f403e8757a0c
--- /dev/null
+++ b/security/Sconfig.age
@@ -0,0 +1,20 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+menu "AB1043 Age Verification"
+
+config AB1043_AGE_13
+	bool "Allow operators aged 13+"
+	help
+	  Permit access to features requiring a minimum operator age of 13.
+
+config AB1043_AGE_16
+	bool "Allow operators aged 16+"
+	help
+	  Permit access to features requiring a minimum operator age of 16.
+
+config AB1043_AGE_18
+	bool "Allow operators aged 18+"
+	help
+	  Permit access to features requiring a minimum operator age of 18.
+
+endmenu
diff --git a/security/qemu-virt-devel.sconfig b/security/qemu-virt-devel.sconfig
index 423374dfbdef..1fde43a95456 100644
--- a/security/qemu-virt-devel.sconfig
+++ b/security/qemu-virt-devel.sconfig
@@ -34,3 +34,11 @@ SCONFIG_CMD_GO=y
 # end of Command Policy
 
 SCONFIG_FS_EXTERNAL=y
+
+#
+# AB1043 Age Verification
+#
+SCONFIG_AB1043_AGE_13=y
+SCONFIG_AB1043_AGE_16=y
+# SCONFIG_AB1043_AGE_18 is not set
+# end of AB1043 Age Verification
diff --git a/security/qemu-virt-tamper.sconfig b/security/qemu-virt-tamper.sconfig
index 10058c5b6101..1eaa0d64042a 100644
--- a/security/qemu-virt-tamper.sconfig
+++ b/security/qemu-virt-tamper.sconfig
@@ -33,3 +33,11 @@ SCONFIG_POLICY_NAME="tamper"
 # end of Command Policy
 
 # SCONFIG_FS_EXTERNAL is not set
+
+#
+# AB1043 Age Verification
+#
+SCONFIG_AB1043_AGE_13=y
+# SCONFIG_AB1043_AGE_16 is not set
+# SCONFIG_AB1043_AGE_18 is not set
+# end of AB1043 Age Verification
-- 
2.47.3



