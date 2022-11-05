Delivery-date: Sat, 05 Nov 2022 13:14:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orI3q-00G6f6-C3
	for lore@lore.pengutronix.de; Sat, 05 Nov 2022 13:14:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1orI3o-0003o4-W2
	for lore@pengutronix.de; Sat, 05 Nov 2022 13:14:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cAWjAvieduSujNScJ4Xq+cwgwiBmfvWsWWHdSdrlv0o=; b=2hCdr6gXHeFGRk/A6Wy1ZnFztS
	IUrI9/IsirfEjJogkWzs3goJz5Rp0lT1T62U4dxWW3zDZBlYBG5OqGAOfuLIb13iHh4TUSeFuja9a
	4SlmcADvJ36LRpY/ljiU/REbd54KzrhcceU2WsQdby0azldhQFYXhGuOCDfEKVwm7QeXWxliY3ADL
	0pIoVbXjzF0uxa/2X3PrKfU8Ruy6yvdPWmU+1s/5UKNL0OvfWAcAx7wIDGOWOXt9MEbxG411LBtpw
	rklXuJyZfKwTrdl55S7vYyl+o4mIg3DvX/W/zu01ZhTpI0sOD4JZcFnurc7ChY19vzQwLyTK1rgDh
	bkbl/qIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orI24-006U97-Ua; Sat, 05 Nov 2022 12:12:17 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orI1y-006U7U-FS
	for barebox@lists.infradead.org; Sat, 05 Nov 2022 12:12:11 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 8C095FF805;
	Sat,  5 Nov 2022 12:11:58 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  5 Nov 2022 13:11:53 +0100
Message-Id: <20221105121154.3716964-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_051210_696536_8C87D155 
X-CRM114-Status: GOOD (  11.14  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 1/2] ARM: psci: make PSCI method a of_psci_fixup parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently assume PSCI fixups to always be of method smc, but this is
not true when barebox fixes up the node while running under QEMU.

In preparation for handling QEMU boot properly when psci-client driver
is enabled, give of_psci_fixup an extra parameter.

No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
v1 -> v2:
  - new patch
---
 arch/arm/cpu/psci-client.c     | 2 +-
 arch/arm/cpu/psci-of.c         | 5 +++--
 arch/arm/cpu/psci.c            | 2 +-
 arch/arm/include/asm/psci.h    | 3 ++-
 arch/arm/mach-layerscape/ppa.c | 2 +-
 5 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/psci-client.c b/arch/arm/cpu/psci-client.c
index 7d5b3768b59e..613280ad3f23 100644
--- a/arch/arm/cpu/psci-client.c
+++ b/arch/arm/cpu/psci-client.c
@@ -110,7 +110,7 @@ static u32 invoke_psci_fn_smc(ulong function, ulong arg0, ulong arg1, ulong arg2
 
 static int of_psci_do_fixup(struct device_node *root, void *context)
 {
-	return of_psci_fixup(root, *(u32 *)context);
+	return of_psci_fixup(root, *(u32 *)context, "smc");
 }
 
 static int __init psci_probe(struct device_d *dev)
diff --git a/arch/arm/cpu/psci-of.c b/arch/arm/cpu/psci-of.c
index ef83b0edee69..be16b08617ec 100644
--- a/arch/arm/cpu/psci-of.c
+++ b/arch/arm/cpu/psci-of.c
@@ -7,7 +7,8 @@
 #include <asm/psci.h>
 #include <linux/arm-smccc.h>
 
-int of_psci_fixup(struct device_node *root, unsigned long psci_version)
+int of_psci_fixup(struct device_node *root, unsigned long psci_version,
+		  const char *method)
 {
 	struct device_node *psci;
 	int ret;
@@ -46,7 +47,7 @@ int of_psci_fixup(struct device_node *root, unsigned long psci_version)
 	if (ret)
 		return ret;
 
-	ret = of_property_write_string(psci, "method", "smc");
+	ret = of_property_write_string(psci, "method", method);
 	if (ret)
 		return ret;
 
diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index d1056e0659da..70c97e03a5ff 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -189,7 +189,7 @@ static int of_psci_do_fixup(struct device_node *root, void *unused)
 	if (bootm_arm_security_state() < ARM_STATE_NONSECURE)
 		return 0;
 
-	return of_psci_fixup(root, ARM_PSCI_VER_1_0);
+	return of_psci_fixup(root, ARM_PSCI_VER_1_0, "smc");
 }
 
 int psci_cpu_entry_c(void)
diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index 3c1d046eb990..dbb9adfc3e43 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -144,6 +144,7 @@ static inline int psci_printf(const char *fmt, ...)
 
 int psci_get_cpu_id(void);
 
-int of_psci_fixup(struct device_node *root, unsigned long psci_version);
+int of_psci_fixup(struct device_node *root, unsigned long psci_version,
+		  const char *method);
 
 #endif /* __ARM_PSCI_H__ */
diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
index d962fba75105..144d0524754b 100644
--- a/arch/arm/mach-layerscape/ppa.c
+++ b/arch/arm/mach-layerscape/ppa.c
@@ -46,7 +46,7 @@ static int of_psci_do_fixup(struct device_node *root, void *unused)
 		break;
 	}
 
-	return of_psci_fixup(root, psci_version);
+	return of_psci_fixup(root, psci_version, "smc");
 }
 
 static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
-- 
2.37.2



