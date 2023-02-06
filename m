Delivery-date: Mon, 06 Feb 2023 22:02:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8da-00GKiy-LO
	for lore@lore.pengutronix.de; Mon, 06 Feb 2023 22:02:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pP8dX-0006gM-TI
	for lore@pengutronix.de; Mon, 06 Feb 2023 22:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nv0BJtcd5EUQ1P1HqFoZc4iTRh0LnDg+OIEGwHUtDrA=; b=fvoFHjk858DVssxDAIiZCBdNSO
	NcxZImmkz5954BqjP2QoKKrAR1TD7aCwGORilYpM2OfGN6vSG/7+EIsObVWik3Rg/HpGpgjZZSLqf
	NyEJV3t/FgXCVHnSP5d1zlVF9dMomXfxDEHjIeNbPE92/hKzTfjfwTo98dojrJBol4uIGI20O3AAc
	vtM1xV+0y+FVsFaIJ3ffWgOrHLy5aCvN+xCcpXuzot/A0Iiq3hyPyovpGOhxm1L8viEC3UIjBvCfU
	ZlBd7SLjHgFTPwzMsFgLad8AyPxqpRH4/7jGeJEJSEfZOqj/ci0z0mJAIkHc2NFstbSTkUYfZCTF4
	Tuy4RKaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8bU-009vaj-6a; Mon, 06 Feb 2023 21:00:44 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP8bP-009vYZ-8P
	for barebox@lists.infradead.org; Mon, 06 Feb 2023 21:00:40 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 6F4CFE74017; Mon,  6 Feb 2023 22:00:08 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-33.net-htp.de [89.183.230.33])
	by lynxeye.de (Postfix) with ESMTPA id 2B706E74008
	for <barebox@lists.infradead.org>; Mon,  6 Feb 2023 22:00:07 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 Feb 2023 22:00:02 +0100
Message-Id: <20230206210004.627338-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_130039_462425_3E6ADB10 
X-CRM114-Status: GOOD (  11.05  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: i.MX8M: esdctl: limit i.MX8MP early memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Limit detected early memory size to 1GB on i.MX8MP, as the default DT
has a reserved memory region at 0x92400000, which will conflict with
our malloc area in some configurations. Until we can properly parse
and exclude the reserved memory regions in the PBL, just avoid getting
near that DRAM address by limiting the detected size.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a704250297bb..043de477a77d 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -947,7 +947,17 @@ void __noreturn imx8mn_barebox_entry(void *boarddata)
 
 void __noreturn imx8mp_barebox_entry(void *boarddata)
 {
-	imx8m_barebox_entry(boarddata, 32);
+	/*
+	 * Limit detected early memory size to 1GB on i.MX8MP, as the default
+	 * DT has a reserved memory region at 0x92400000, which will conflict
+	 * with our malloc area in some configurations. Until we can properly
+	 * parse and exclude the reserved memory regions in the PBL, just avoid
+	 * getting near that DRAM address by limiting the detected size.
+	 */
+	barebox_arm_entry(MX8M_DDR_CSD1_BASE_ADDR,
+			  min_t(resource_size_t, SZ_1G,
+				imx8m_barebox_earlymem_size(32)),
+			  boarddata);
 }
 
 void __noreturn imx8mq_barebox_entry(void *boarddata)
-- 
2.39.1



