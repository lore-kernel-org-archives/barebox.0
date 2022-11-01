Delivery-date: Tue, 01 Nov 2022 19:08:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgH-00BAyI-CW
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgG-0007C2-8E
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o9es5Rdf9QeVaeUSuDRILCQhCgr7EoEo3Kh4H2yjjFA=; b=F7b1yTX5brAZGeiByR/G7wgx+I
	VnfBP+EGJEh5HBZTZIy3NCLQri5w9OLvUh+b/h7llrvwIiMBCCHw6Fz3gserxJr1nz4f9IGIdeq2E
	3g7iC0/4rMsgPYangrQbUDRpACeRXjxhUWVJVduoQz3X+IHAEES7OEOM03Ys9AxaQ2ZW91kn6lwy0
	kvst1fns9PqdUfNqmdEa3myWpTN5Ja12+77G88RjL8gW2l9lfedetzxCvMNjewq7uvjuQYbGgBHao
	9ARX8A+Sq7JP42WR5Skp3L3od4HdXCf9lJj4giPEcA4KvYGyy0sA6YcWtV7z0k12Sl6FbPtzNPynr
	U5mBK/7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvf4-006Pdk-J9; Tue, 01 Nov 2022 18:06:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvex-006PaL-Ob
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006xu-4n; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j4H-EK; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aT-Ek; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 19:06:41 +0100
Message-Id: <20221101180643.244270-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110647_842519_D0092A80 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] ARM: i.MX8M: define imx8mX_scratch_space() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Now that we have a generic ARM scratch area and a way to find out where
it is, add new helper functions that return a pointer to this area.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/xload.h | 11 +++++++++++
 arch/arm/mach-imx/xload-common.c       | 10 ++++++++++
 2 files changed, 21 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 82bf663c4266..d19bedb9e84a 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -30,4 +30,15 @@ int piggydata_size(void);
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
+struct imx_scratch_space {
+	u32 bootrom_log[128];
+};
+
+struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
+
+#define imx8mq_scratch_space() __imx8m_scratch_space(32)
+#define imx8mm_scratch_space() __imx8m_scratch_space(32)
+#define imx8mn_scratch_space() __imx8m_scratch_space(16)
+#define imx8mp_scratch_space() __imx8m_scratch_space(32)
+
 #endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index f4bcca1d1483..710dcc1ed909 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -4,6 +4,9 @@
 #include <asm/sections.h>
 #include <linux/sizes.h>
 #include <mach/xload.h>
+#include <mach/esdctl.h>
+#include <mach/imx8m-regs.h>
+#include <asm/barebox-arm.h>
 
 int imx_image_size(void)
 {
@@ -16,3 +19,10 @@ int piggydata_size(void)
 	return input_data_end - input_data;
 }
 
+struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
+{
+	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
+		imx8m_barebox_earlymem_size(ddr_buswidth);
+
+	return (void *)__arm_mem_scratch(endmem);
+}
-- 
2.30.2



