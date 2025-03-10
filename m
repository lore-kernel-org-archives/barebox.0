Delivery-date: Mon, 10 Mar 2025 12:55:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trbiz-00CEYP-0e
	for lore@lore.pengutronix.de;
	Mon, 10 Mar 2025 12:55:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trbix-0000AT-VW
	for lore@pengutronix.de; Mon, 10 Mar 2025 12:55:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=es/mj7Qja/4NIBMetptNbZ/CskuRUpFLHNymvw+LfGM=; b=4v5J9SGNBTn+uSl5+ol3JmRTK2
	HKglszPSwR/Cp7QKC8UyYwL7PEXbcgym5viviDha0feUY391zXYbR2IvDzGSAr87iNerRxaBDLmxm
	d8nIAdVM9DZzG/mTQ/YzOqijTZZKz8XbOfwJblHH36SRuZ861HDW8u/FDViHFhyJXh02YUbztrI7e
	cpqQJBbFieeIAL8cWd2pT2mqmmQZb9AVFrtyH2jCLef4VaVs74RdMk2dMlTZ5zpUOqPV8omfkjITH
	wvwm2XIL0d/pyoTxb4c1Lr7lSlKHR+YbticNkZm0KAJQz7hHcI+GuT9pKRbHIXWV8YRrNV0AEtMzo
	kTMYvv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trbiG-00000002UQM-2l9E;
	Mon, 10 Mar 2025 11:54:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trbQt-00000002S97-0aob
	for barebox@lists.infradead.org;
	Mon, 10 Mar 2025 11:36:32 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1trbQp-00061c-E6; Mon, 10 Mar 2025 12:36:27 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Mon, 10 Mar 2025 12:36:26 +0100
Message-Id: <20250310113626.2241630-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_043631_178661_81BE6110 
X-CRM114-Status: GOOD (  13.38  )
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
Subject: [PATCH master] i.MX: HAB: fix i.MX8MP field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Current tests showed that fusing just the single field-return bit(0) on
i.MX8MP SoCs brick the device.

All i.MX8M SoCs have a single field-return bit except for the i.MX8MP
which requires a pattern. The pattern is not documented but was
discussed here [1] and the final u-boot commit [2] added the support
accordingly.

This commit is based on the outcome of [1, 2].

[1] https://lore.kernel.org/all/20240621130626.729666-1-paul.geurts@prodrive-technologies.com/
[2] https://github.com/u-boot/u-boot/blob/v2025.01/arch/arm/mach-imx/hab.c#L35

Tested-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/hab/hab.c                | 12 +++++++++++-
 include/mach/imx/ocotp-fusemap.h |  1 +
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 73d470be131e..74ba4a48557c 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -252,6 +252,12 @@ static int imx8m_hab_revoke_key_ocotp(unsigned key_idx)
 	return ret;
 }
 
+/*
+ * The fuse pattern for i.MX8M Plus is 0x28001401, but bit 2 is already set from factory.
+ * This means when field return is set, the fuse word value reads 0x28001405
+ */
+#define MX8MP_FIELD_RETURN_PATTERN	0x28001401
+
 static int imx8m_hab_field_return_ocotp(void)
 {
 	int ret;
@@ -264,7 +270,11 @@ static int imx8m_hab_field_return_ocotp(void)
 	if (ret == 1)
 		return -EINVAL;
 
-	ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
+	if (cpu_is_mx8mp())
+		ret = imx_ocotp_write_field(MX8MP_OCOTP_FIELD_RETURN,
+					    MX8MP_FIELD_RETURN_PATTERN);
+	else
+		ret = imx_ocotp_write_field(MX8M_OCOTP_FIELD_RETURN, 1);
 
 	return ret;
 }
diff --git a/include/mach/imx/ocotp-fusemap.h b/include/mach/imx/ocotp-fusemap.h
index 37f1ee8298c2..587fe8b15eab 100644
--- a/include/mach/imx/ocotp-fusemap.h
+++ b/include/mach/imx/ocotp-fusemap.h
@@ -68,6 +68,7 @@
 #define MX8MP_OCOTP_ROM_NO_LOG		(OCOTP_WORD(0x480) | OCOTP_BIT(22) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_RECOVERY_SDMMC_BOOT_DIS	(OCOTP_WORD(0x490) | OCOTP_BIT(23) | OCOTP_WIDTH(1))
 #define MX8M_OCOTP_FIELD_RETURN		(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(1))
+#define MX8MP_OCOTP_FIELD_RETURN	(OCOTP_WORD(0x630) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
 #define MX8M_OCOTP_SRK_REVOKE		(OCOTP_WORD(0x670) | OCOTP_BIT(0) | OCOTP_WIDTH(4))
 
 #endif /* __MACH_IMX_OCOTP_FUSEMAP_H */
-- 
2.39.5



