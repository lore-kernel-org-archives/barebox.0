Delivery-date: Tue, 01 Nov 2022 19:08:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgN-00BAzD-B1
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 19:08:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opvgM-0007DQ-15
	for lore@pengutronix.de; Tue, 01 Nov 2022 19:08:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xToaM7mETtM8J8CH10yOz6jtvWyJiptKSRAlqSSLrSA=; b=LzCkhFgmc9Cv2khkHMssbmZoTo
	Nu8VWTXWfs0fG32pUGvzeV9Pil3v7Wt0KNTIuUiBPsmVg8EI/FSPnSv7ZfG2nD3mVVqgE5IbHEdm8
	qh8S+2ZTQQIeSn/1LGVz/Ce0Yuism9i7boLHLksp+xmvw9999RwkMueHLTrtfzXKdFYnM/JBX/hrB
	+UeVmPk9vqYANHAvlrE51qCIlcVHEZrERCGZY8Q6F+afkcPd3nomqscuw817RFQhDBl1oaCcOKz03
	50AAfco4R6RR1N9/T6oN2JbbnEH+vYhEvV/uWgBrCdw0QKTiPOF36f/MQLp51687Uyshr/LN15Vzp
	DkD21bcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvf9-006PfP-8M; Tue, 01 Nov 2022 18:06:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opvex-006PaM-OX
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 18:06:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-0006xv-8b; Tue, 01 Nov 2022 19:06:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opvew-001j4M-IR; Tue, 01 Nov 2022 19:06:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1opveu-0011aQ-ER; Tue, 01 Nov 2022 19:06:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  1 Nov 2022 19:06:40 +0100
Message-Id: <20221101180643.244270-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221101180643.244270-1-a.fatoum@pengutronix.de>
References: <20221101180643.244270-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_110647_860336_F0C9B042 
X-CRM114-Status: GOOD (  12.58  )
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
Subject: [PATCH 2/5] ARM: i.MX8M: esdctl: export imx8m_barebox_earlymem_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Board code will need to find out early endmem to use newly defined
scratch space, so factor out a new helper function to get earlymem size.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c              | 11 ++++++++---
 arch/arm/mach-imx/include/mach/esdctl.h |  3 +++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a55ee06b8346..8de20ed42338 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -923,7 +923,7 @@ void __noreturn vf610_barebox_entry(void *boarddata)
 			  boarddata);
 }
 
-static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
+resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth)
 {
 	resource_size_t size;
 
@@ -937,8 +937,13 @@ static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
 	 * pool placement. The rest of the system should be able to
 	 * detect and utilize full amount of memory.
 	 */
-	size = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
-	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR, size, boarddata);
+	return min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
+}
+
+static void __noreturn imx8m_barebox_entry(void *boarddata, unsigned buswidth)
+{
+	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
+			  imx8m_barebox_earlymem_size(buswidth), boarddata);
 }
 
 void __noreturn imx8mm_barebox_entry(void *boarddata)
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index b0b531aed4a2..01533478cce8 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -131,6 +131,8 @@
 #define ESDCFGx_tRC_16			0x0000000f
 
 #ifndef __ASSEMBLY__
+#include <linux/types.h>
+
 void __noreturn imx1_barebox_entry(void *boarddata);
 void __noreturn imx25_barebox_entry(void *boarddata);
 void __noreturn imx27_barebox_entry(void *boarddata);
@@ -148,6 +150,7 @@ void __noreturn imx8mq_barebox_entry(void *boarddata);
 void __noreturn imx7d_barebox_entry(void *boarddata);
 #define imx6sx_barebox_entry(boarddata) imx6ul_barebox_entry(boarddata)
 void imx_esdctl_disable(void);
+resource_size_t imx8m_barebox_earlymem_size(unsigned buswidth);
 #endif
 
 #endif /* __MACH_ESDCTL_V2_H */
-- 
2.30.2



