Delivery-date: Tue, 13 Feb 2024 16:18:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYE-004xnv-0y
	for lore@lore.pengutronix.de;
	Tue, 13 Feb 2024 16:18:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rZuYD-0004co-66
	for lore@pengutronix.de; Tue, 13 Feb 2024 16:18:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I+flYlTzO5RbVjaBzdNk+Wo99zD7lmI/+zTfr6Vwf7U=; b=mq8+qxJbMEWZe60dybBV5zGs0r
	UX7SodjHxGUeur5hjAoBSlud72ttAH8cJaD18wb/FMRGFcZdWF9ku0EP34JH6bBQ8/tDOqEq2XaQz
	Yo/EFGTEOuGH0+0ZMySRQTzow5xam8Xs9gintYOnyAl0cl/AoDLq6gspf7eNDXvX1pcguNIFk7LCB
	GPb4t0U2VhHCcBVlGX2jQwjL1DOnjuccfoTA+72faa+3fSt2l4Bb0sHPBrG2i3CYP89nLqK8XiGgc
	Iy+EhV1KMnIyeuK6PrntSou9wsXKoxTke5awMnQ4UZp/5kH6Gd2ycS0Ks1zLpKiKNOSuX7MttmcyA
	AKeDXNNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXi-00000009iiO-0U4B;
	Tue, 13 Feb 2024 15:17:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZuXc-00000009if4-0tDJ
	for barebox@lists.infradead.org;
	Tue, 13 Feb 2024 15:17:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-0004Lq-WD; Tue, 13 Feb 2024 16:17:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-000VpK-JW; Tue, 13 Feb 2024 16:17:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rZuXZ-002pOE-1c;
	Tue, 13 Feb 2024 16:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 13 Feb 2024 16:17:41 +0100
Message-Id: <20240213151744.307958-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240213151744.307958-1-s.hauer@pengutronix.de>
References: <20240213151744.307958-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_071748_355356_0CA11E7C 
X-CRM114-Status: GOOD (  22.46  )
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
Subject: [PATCH 3/6] hab: cleanup hab status printing during boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far we have an initcall per SoC to print the HAB status. Add a
struct imx_hab_ops::print_status() hook to reduce this to a single
initcall. This will also allow us to print the HAB status later,
maybe from the hab command, and not only during boot.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/hab/hab.c   | 24 ++++++++++++++++++++++++
 drivers/hab/hab.h   | 10 ++++++++++
 drivers/hab/habv3.c |  6 +-----
 drivers/hab/habv4.c | 39 ++++++---------------------------------
 include/hab.h       | 15 +--------------
 5 files changed, 42 insertions(+), 52 deletions(-)
 create mode 100644 drivers/hab/hab.h

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index a5996f0b97..a85bbae6d6 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -14,6 +14,8 @@
 #include <mach/imx/ocotp.h>
 #include <mach/imx/imx6-fusemap.h>
 
+#include "hab.h"
+
 bool imx_hab_srk_hash_valid(const void *buf)
 {
 	const u8 *srk = buf;
@@ -206,6 +208,7 @@ struct imx_hab_ops {
 	int (*permanent_write_enable)(int enable);
 	int (*lockdown_device)(void);
 	int (*device_locked_down)(void);
+	int (*print_status)(void);
 };
 
 static struct imx_hab_ops imx_hab_ops_iim = {
@@ -214,6 +217,7 @@ static struct imx_hab_ops imx_hab_ops_iim = {
 	.lockdown_device = imx_hab_lockdown_device_iim,
 	.device_locked_down = imx_hab_device_locked_down_iim,
 	.permanent_write_enable = imx_hab_permanent_write_enable_iim,
+	.print_status = imx25_hab_print_status,
 };
 
 static struct imx_hab_ops imx6_hab_ops_ocotp = {
@@ -222,6 +226,7 @@ static struct imx_hab_ops imx6_hab_ops_ocotp = {
 	.lockdown_device = imx6_hab_lockdown_device_ocotp,
 	.device_locked_down = imx6_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
+	.print_status = imx6_hab_print_status,
 };
 
 static struct imx_hab_ops imx8m_hab_ops_ocotp = {
@@ -230,6 +235,7 @@ static struct imx_hab_ops imx8m_hab_ops_ocotp = {
 	.lockdown_device = imx8m_hab_lockdown_device_ocotp,
 	.device_locked_down = imx8m_hab_device_locked_down_ocotp,
 	.permanent_write_enable = imx_hab_permanent_write_enable_ocotp,
+	.print_status = imx8m_hab_print_status,
 };
 
 static struct imx_hab_ops *imx_get_hab_ops(void)
@@ -383,3 +389,21 @@ int imx_hab_device_locked_down(void)
 
 	return ops->device_locked_down();
 }
+
+int imx_hab_print_status(void)
+{
+	struct imx_hab_ops *ops = imx_get_hab_ops();
+
+	if (!ops)
+		return -ENOSYS;
+
+	return ops->print_status();
+}
+
+static int init_imx_hab_print_status(void)
+{
+	imx_hab_print_status();
+
+	return 0;
+}
+postmmu_initcall(init_imx_hab_print_status);
diff --git a/drivers/hab/hab.h b/drivers/hab/hab.h
new file mode 100644
index 0000000000..7be0e8386b
--- /dev/null
+++ b/drivers/hab/hab.h
@@ -0,0 +1,10 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#ifndef __DRIVER_HAB_HAB_H
+#define __DRIVER_HAB_HAB_H
+
+int imx25_hab_print_status(void);
+int imx6_hab_print_status(void);
+int imx8m_hab_print_status(void);
+
+#endif /* __DRIVER_HAB_HAB_H */
diff --git a/drivers/hab/habv3.c b/drivers/hab/habv3.c
index 4818dae7d1..e28e9998d7 100644
--- a/drivers/hab/habv3.c
+++ b/drivers/hab/habv3.c
@@ -69,11 +69,7 @@ static int imx_habv3_get_status(uint32_t status)
 	return -EPERM;
 }
 
-int imx25_hab_get_status(void)
+int imx25_hab_print_status(void)
 {
-	if (!cpu_is_mx25())
-		return 0;
-
 	return imx_habv3_get_status(readl(IOMEM(0x780018d4)));
 }
-postmmu_initcall(imx25_hab_get_status);
diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index d8e5732adf..a1d823ed25 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -20,6 +20,8 @@
 #include <mach/imx/generic.h>
 #include <mach/imx/imx8mq.h>
 
+#include "hab.h"
+
 #define HABV4_RVT_IMX6_OLD 0x00000094
 #define HABV4_RVT_IMX6_NEW 0x00000098
 #define HABV4_RVT_IMX6UL 0x00000100
@@ -646,7 +648,7 @@ static int habv4_get_status(const struct habv4_rvt *rvt)
 	return -EPERM;
 }
 
-int imx6_hab_get_status(void)
+static int imx6_hab_get_status(void)
 {
 	const struct habv4_rvt *rvt;
 
@@ -670,41 +672,19 @@ int imx6_hab_get_status(void)
 	return -EINVAL;
 }
 
-static int imx8m_hab_get_status(void)
-{
-	return habv4_get_status(&hab_smc_ops);
-}
-
-static int init_imx8m_hab_get_status(void)
+int imx8m_hab_print_status(void)
 {
-	if (!cpu_is_mx8m())
-		/* can happen in multi-image builds and is not an error */
-		return 0;
-
 	pr_info("ROM version: 0x%x\n", hab_sip_get_version());
 
-	/*
-	 * Nobody will check the return value if there were HAB errors, but the
-	 * initcall will fail spectaculously with a strange error message.
-	 */
-	imx8m_hab_get_status();
+	habv4_get_status(&hab_smc_ops);
 
 	return 0;
 }
-postmmu_initcall(init_imx8m_hab_get_status);
 
-static int init_imx6_hab_get_status(void)
+int imx6_hab_print_status(void)
 {
-	if (!cpu_is_mx6())
-		/* can happen in multi-image builds and is not an error */
-		return 0;
-
 	remap_range(0x0, SZ_1M, MAP_CACHED);
 
-	/*
-	 * Nobody will check the return value if there were HAB errors, but the
-	 * initcall will fail spectaculously with a strange error message.
-	 */
 	imx6_hab_get_status();
 
 	zero_page_faulting();
@@ -712,10 +692,3 @@ static int init_imx6_hab_get_status(void)
 
 	return 0;
 }
-
-/*
- * Need to run before MMU setup because i.MX6 ROM code is mapped near 0x0,
- * which will no longer be accessible when the MMU sets the zero page to
- * faulting.
- */
-postmmu_initcall(init_imx6_hab_get_status);
diff --git a/include/hab.h b/include/hab.h
index d0952e9376..da79a8ffea 100644
--- a/include/hab.h
+++ b/include/hab.h
@@ -21,28 +21,14 @@ enum habv4_state {
 };
 
 #ifdef CONFIG_HABV4
-int imx6_hab_get_status(void);
 int habv4_get_state(void);
 #else
-static inline int imx6_hab_get_status(void)
-{
-	return -EPERM;
-}
 static inline int habv4_get_state(void)
 {
 	return -ENOSYS;
 }
 #endif
 
-#ifdef CONFIG_HABV3
-int imx25_hab_get_status(void);
-#else
-static inline int imx25_hab_get_status(void)
-{
-	return -EPERM;
-}
-#endif
-
 #define SRK_HASH_SIZE	32
 
 /* Force writing of key, even when a key is already written */
@@ -63,5 +49,6 @@ int imx_hab_write_srk_hash_file(const char *filename, unsigned flags);
 int imx_hab_read_srk_hash(void *buf);
 int imx_hab_lockdown_device(unsigned flags);
 int imx_hab_device_locked_down(void);
+int imx_hab_print_status(void);
 
 #endif /* __HABV4_H */
-- 
2.39.2



