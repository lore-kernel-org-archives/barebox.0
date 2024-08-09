Delivery-date: Fri, 09 Aug 2024 16:19:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSe-007rR4-0H
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:19:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQSc-00074E-RS
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:19:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5rG6wS0h9sqTy6Sxp5AqgGYva3jphA/OFdVJf8zEmk0=; b=uuDgQTiw9/0u0H5s2TNyoML+yF
	kFgxMTkHvF+1rZIfOO64+TaAJ9R4XbLhCJhviw9dFgqRQc1OhrpBdDpl/7aTkl64FCBAagOwpi+GX
	iNu0jIxK4mTfs8MsEOz8p7MPkg0lK1sCR+UqsepyK3zpI4lGlzW4h0dYu/+0Lk33kMPxb6ELC+d61
	1Z70JEnpv1FCqvN/G2CYoHk3x7/Ft9wiHWJFSTmKt3e/Amew4pdES+TQxhnkvOsbdX5g8fkBZBPlp
	UPo8RcJvahx/bgl3k8m4mMxKhDh6LfLwpIiQz2M0bXVDzLNWNW7Ny2CvGtqFjwuYXXXGBXigSYvx/
	HwNY/qOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQS6-0000000BUzO-3GJZ;
	Fri, 09 Aug 2024 14:18:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQRM-0000000BUcu-1Jzn
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:18:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-0006mR-Hd; Fri, 09 Aug 2024 16:17:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-005gZE-3q; Fri, 09 Aug 2024 16:17:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQRI-001JLI-04;
	Fri, 09 Aug 2024 16:17:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:17:55 +0200
Message-Id: <20240809141755.312665-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809141755.312665-1-a.fatoum@pengutronix.de>
References: <20240809141755.312665-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_071800_379960_8883D144 
X-CRM114-Status: GOOD (  13.51  )
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
Subject: [PATCH 4/4] ARM: i.MX8M: neuter initcalls when EFI booted
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When enabling EFI payload support in a build that has i.MX boards
enabled, booting the EFI payload reports some failed initcalls.

Disable them if we don't probe from device tree or aren't on an
i.MX system.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx.c     | 11 ++++++-----
 arch/arm/mach-imx/scratch.c |  4 ++++
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index f3491c6df7fa..2522ce04e6f5 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -89,11 +89,12 @@ static int imx_init(void)
 	struct device_node *root;
 
 	root = of_get_root_node();
-	if (root) {
-		__imx_cpu_type = imx_soc_from_dt();
-		if (!__imx_cpu_type)
-			return 0;
-	}
+	if (!root)
+		return 0;
+
+	__imx_cpu_type = imx_soc_from_dt();
+	if (!__imx_cpu_type)
+		return 0;
 
 	/*
 	 * Don't add new SoCs to this list, instead use the new
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index b7280ff60952..e12d3401a854 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -8,6 +8,7 @@
 #include <mach/imx/imx9-regs.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/scratch.h>
+#include <mach/imx/generic.h>
 #include <memory.h>
 #include <tee/optee.h>
 #include <pbl.h>
@@ -95,6 +96,9 @@ const struct optee_header *imx_scratch_get_optee_hdr(void)
 
 static int imx8m_reserve_scratch_area(void)
 {
+	if (!__imx_cpu_type)
+		return 0;
+
 	return request_barebox_region("scratch area",
 				      (ulong)arm_mem_scratch_get(),
 				      sizeof(struct imx_scratch_space)) ? 0 : -EINVAL;
-- 
2.39.2



