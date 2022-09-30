Delivery-date: Fri, 30 Sep 2022 15:38:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeGEE-001SIh-Sm
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 15:38:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeGED-0004sA-GH
	for lore@pengutronix.de; Fri, 30 Sep 2022 15:38:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=J8S9FWo+cM5TK1J+eqWJPk+Vogcg/DzDpI0njbv00YY=; b=2Hi/v+pCvDZKjz+t4JaRlldmee
	YwCSnqwhk2xSAoMQ6ERb+fLkr/jzdbWDHZTMOGaPZ5omDb+f3RXiQBUdMrfBQ+hdPA0IUV8xqMu2w
	3s91KNDgDTzNAtGGJv8GWI15CnROFiib40gcNaNrItfSD8p0cVKyPjrxA2S5x6/4+RRRGisRKQFqn
	Y7hTMYjuS40gA46Lm/xlHGQRyHjjQr/XA0ikICUXNedMW63soighOfB2jtG2Iwt12h95rczjgbo//
	vhZvNJZAiSfiZ108cly6bHa85Xlb+iaRmScruX35wt9ZVCxPAiJes9EHzPQf0ntKfjqidUF/1JIo9
	I3gxN/YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeGCX-009QuG-NH; Fri, 30 Sep 2022 13:37:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeGCT-009Qsn-76
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 13:37:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1oeGCO-0004ok-R7; Fri, 30 Sep 2022 15:37:04 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oeGCP-003oOz-KP; Fri, 30 Sep 2022 15:37:04 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1oeGCN-002B11-EM; Fri, 30 Sep 2022 15:37:03 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Zink <j.zink@pengutronix.de>
Date: Fri, 30 Sep 2022 15:37:02 +0200
Message-Id: <20220930133702.518949-1-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_063709_280151_2E78603B 
X-CRM114-Status: GOOD (  12.54  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: i.MX7: enable caches when booted over USB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

BootROM on the i.MX7 doesn't set the SMP bit when booted
over serial download. This leads to vastly worse performance
when doing memory-heavy operations in a USB-booted system,
as the caches are not utilized. Example running md5sum over
a 25M image in ramfs:

  without patch: 10796ms
  with    patch: 457ms

This issue isn't unique to the i.MX7, but exists for the i.MX6UL as
well, which also has the Cortex-A7 as CPU. Like with
imx6ul_cpu_lowlevel_init(), adapt imx7_cpu_lowlevel_init() to avoid this
slow down.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 arch/arm/mach-imx/cpu_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index ea36215419..ede2076102 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -49,7 +49,7 @@ void imx6ul_cpu_lowlevel_init(void)
 
 void imx7_cpu_lowlevel_init(void)
 {
-	arm_cpu_lowlevel_init();
+	cortex_a7_lowlevel_init();
 	imx_cpu_timer_init(IOMEM(MX7_SYSCNT_CTRL_BASE_ADDR));
 }
 
-- 
2.30.2



