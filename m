Delivery-date: Tue, 13 Feb 2024 16:18:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYF-004xp4-2e
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYF-0004eX-3A
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U/X8OCmbUTaO5ALtjMKNBF6ld23MmJd6ETby6Z4zenE=; b=J9EVVB23Dh7gDBZSxLK7COCE77
	YPZnDPsZMt8M1ew/cInDyfqo/Ua/Wf0OztzsenThOfSdbk7a+o9tR7Dpm1GwEX3XrvIznvWPtByra
	47rszlxlPfo5DYIeeibDz6a5gedbbXGn20ViSSpXe3LwtKsapfT0qK4+KeEgxItHbESgdEP3BeiWm
	VyNJxy04YCGsUnrDrnW76nXwy59UlGc/UByv2OiN8zXpWT4WbHddxNDKPxJQFKaj+3Lzif0R6+Qys
	hiYCtkUqjljb8NBamPO4jcfjVRWcy86R/2F7KT9UyWQA954v2pfezaKxtZiGuB3LDFr3Y9EEsSDya
	itJFyuZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXg-00000009ihv-1ySm;
	Tue, 13 Feb 2024 15:17:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if7-0tYb
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXa-0004MS-4n; Tue, 13 Feb 2024 16:17:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpT-Oh; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-28;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:44 +0100
Message-Id: <20240213151744.307958-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_326136_5A5F2996 
X-CRM114-Status: GOOD (  16.33  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/6] hab: implement i.MX9 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While the underlying architecture of AHAB is quite different than HAB,
the user interface fits into the existing hab command quite well, so
integrate it into the existing HAB infrastructure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |   5 ++
 drivers/hab/hab.c         | 101 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 106 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index aa0603a8bd..1efcf5ba98 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -177,6 +177,7 @@ config ARCH_IMX8MQ
 	bool
 
 config ARCH_IMX9
+	select AHAB
 	bool
 
 config ARCH_IMX93
@@ -784,6 +785,10 @@ config IMX_SAVE_BOOTROM_LOG
 config HAB
 	bool
 
+config AHAB
+	bool
+	select HAB
+
 config HABV4
 	tristate "HABv4 support"
 	select HAB
diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index d7be3c49eb..ed091058d8 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -13,6 +13,7 @@
 #include <mach/imx/imx25-fusemap.h>
 #include <mach/imx/ocotp.h>
 #include <mach/imx/imx6-fusemap.h>
+#include <mach/imx/ele.h>
 
 #include "hab.h"
 
@@ -238,6 +239,104 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.print_status = imx8m_hab_print_status,
 };
 
+static int imx_ahab_write_srk_hash(const u8 *__newsrk, unsigned flags)
+{
+	u32 *newsrk = (u32 *)__newsrk;
+	u32 resp;
+	int ret, i;
+
+	if (!(flags & IMX_SRK_HASH_WRITE_PERMANENT)) {
+		pr_err("Cannot write fuses temporarily\n");
+		return -EPERM;
+	}
+
+	for (i = 0; i < 32 / sizeof(u32); i++) {
+		ret = ele_write_fuse(0x80 + i, newsrk[i], false, &resp);
+		if (ret)
+			pr_err("Writing fuse index 0x%02x failed with %d, response 0x%08x\n",
+			       i, ret, resp);
+	}
+
+	return 0;
+}
+
+static int imx_ahab_read_srk_hash(u8 *__srk)
+{
+	u32 *srk = (u32 *)__srk;
+	u32 resp;
+	int ret, i;
+
+	for (i = 0; i < SRK_HASH_SIZE / sizeof(uint32_t); i++) {
+		ret = ele_read_common_fuse(0x80 + i, &srk[i], &resp);
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int imx_ahab_permanent_write_enable(int enable)
+{
+	return 0;
+}
+
+static int imx_ahab_lockdown_device(unsigned flags)
+{
+	unsigned int lc;
+	int ret;
+
+	if (!(flags & IMX_SRK_HASH_WRITE_PERMANENT)) {
+		pr_err("Cannot write fuses temporarily\n");
+		return -EPERM;
+	}
+
+	lc = imx93_ahab_read_lifecycle();
+	if (lc == ELE_LIFECYCLE_OEM_CLOSED) {
+		pr_info("already OEM closed\n");
+		return 0;
+	}
+
+	if (lc != ELE_LIFECYCLE_OEM_OPEN) {
+		pr_err("Current lifecycle is NOT OEM open, can't move to OEM closed\n");
+		return -EPERM;
+	}
+
+	ret = ele_forward_lifecycle(ELE_LIFECYCLE_OEM_CLOSED, NULL);
+	if (ret) {
+		printf("failed to forward lifecycle to OEM closed\n");
+		return ret;
+	}
+
+	printf("Change to OEM closed successfully\n");
+
+	return 0;
+}
+
+static int imx_ahab_device_locked_down(void)
+{
+	return imx93_ahab_read_lifecycle() != ELE_LIFECYCLE_OEM_OPEN;
+}
+
+static int imx_ahab_print_status(void)
+{
+	int ret;
+
+	ret = ele_print_events();
+	if (ret)
+		pr_err("Cannot read ELE events: %pe\n", ERR_PTR(ret));
+
+	return ret;
+}
+
+static struct imx_hab_ops imx93_ahab_ops = {
+	.write_srk_hash = imx_ahab_write_srk_hash,
+	.read_srk_hash =  imx_ahab_read_srk_hash,
+	.lockdown_device = imx_ahab_lockdown_device,
+	.device_locked_down = imx_ahab_device_locked_down,
+	.permanent_write_enable = imx_ahab_permanent_write_enable,
+	.print_status = imx_ahab_print_status,
+};
+
 static struct imx_hab_ops *imx_get_hab_ops(void)
 {
 	static struct imx_hab_ops *ops;
@@ -251,6 +350,8 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 		ops = &imx6_hab_ops_ocotp;
 	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx8m())
 		ops = &imx8m_hab_ops_ocotp;
+	else if (IS_ENABLED(CONFIG_AHAB) && cpu_is_mx93())
+		ops = &imx93_ahab_ops;
 	else
 		return NULL;
 
-- 
2.39.2



