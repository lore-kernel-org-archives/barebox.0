Delivery-date: Tue, 19 Sep 2023 11:21:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiWv7-003E0w-V6
	for lore@lore.pengutronix.de; Tue, 19 Sep 2023 11:21:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiWv5-0000rz-N1
	for lore@pengutronix.de; Tue, 19 Sep 2023 11:21:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mUsrAovv/WdA5uRoLLNa0zUsKuS8i6jA0EPWpV5C9hc=; b=ZkEc0H0BTbsT11yVbER3AoxY4Y
	8PIPuhLTA4NlkHyTSv+cIgnXnnO4WCUn/vt4NKYMjic22fQc+OFv6Z4fecgfPwkbjS6kLLteu0Icl
	dRNo2ERhU0eGZESgmoO3RpI32drrHRwnmfW1YD/idwNe3y1T7jyqT39aOOk/jWv51y9zuEqenATdk
	iy+rDigCXw09uwDsHaIfS8Bmtw8YMBJJfvs49fGYfAFtP7pljScqlmv7k2LUWRVHMamPUkzF1b0PS
	ttzLTsy6/soI1vynnQKOi1dkipzhawUMELoRhMVdulRHJ6JZOLD3s+n07oIrzFnb3G7lap9HaPHLD
	kKJdOY9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWtg-00HRIq-1H;
	Tue, 19 Sep 2023 09:19:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWtd-00HRIJ-2y
	for barebox@lists.infradead.org;
	Tue, 19 Sep 2023 09:19:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qiWtc-0000Mo-Jt; Tue, 19 Sep 2023 11:19:52 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qiWtc-007QBV-4L; Tue, 19 Sep 2023 11:19:52 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qiWtb-008PMq-38;
	Tue, 19 Sep 2023 11:19:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Sep 2023 11:19:50 +0200
Message-Id: <20230919091950.2004123-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_021953_956254_66FC5CDA 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: don't reserve scratch space for other platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In multi(-platform-per-)arch setups, initcalls should check that they
apply to the correct SoCs and not run unconditionally. This was missed
for the scratchspace reservation initcall, so remedy that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index aef0ff0534c9..4e618a21eef7 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -6,6 +6,7 @@
 #include <asm/sections.h>
 #include <mach/imx/romapi.h>
 #include <mach/imx/atf.h>
+#include <mach/imx/generic.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/xload.h>
 #include <asm/barebox-arm.h>
@@ -88,6 +89,9 @@ const u32 *imx8m_get_bootrom_log(void)
 
 static int imx8m_reserve_scratch_area(void)
 {
+	if (!__imx_cpu_type)
+		return 0;
+
 	return PTR_ERR_OR_ZERO(request_sdram_region("scratch area",
 				    (ulong)arm_mem_scratch_get(),
 				    sizeof(struct imx_scratch_space)));
-- 
2.39.2



