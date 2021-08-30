Delivery-date: Mon, 30 Aug 2021 13:55:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfsV-0004BA-Vf
	for lore@lore.pengutronix.de; Mon, 30 Aug 2021 13:55:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKfsR-0006oa-5v
	for lore@pengutronix.de; Mon, 30 Aug 2021 13:55:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qbfL7+T77sr//zzUOBsoHukDA86h5bSdHXSslhFBAEc=; b=fcx/FD7rxXC6zQ
	Fvrgd3JsgltDsQZhOum+HYQW8j1fur5DAqkqZJvrbwitnGNYdWwdyZxHTn2vV/7QuVJfWpSjyX2jA
	4GQh+Y1UctVmFQFJWVQIUGEc8jzIDqij5brFIFREWPzdeb3HKGamvYCmsoAko15I4+jfOlTyB95Ud
	8XMEmNJbkvPHfxdRlmffCiHGRZs37xPNhb2rB3w4Gx/ey+IH8T07O/Hm9Q8xwNvYUabfcylOFxlPR
	h1wy1IP4b2zzXYpLO+rOgH0kj8eACZ9hc+bgpFzd2MXWVrUN0w6RftEBSDGWkJ64hp6YG+Pbbp7fG
	BoUWpygKyC56CLzePk3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKfr3-00H8kq-ON; Mon, 30 Aug 2021 11:53:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKfqz-00H8k9-1A
 for barebox@lists.infradead.org; Mon, 30 Aug 2021 11:53:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfqx-0006Ve-RU; Mon, 30 Aug 2021 13:53:27 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mKfqx-0006Xc-HO; Mon, 30 Aug 2021 13:53:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 30 Aug 2021 13:53:25 +0200
Message-Id: <20210830115325.24905-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_045329_113530_7427B82C 
X-CRM114-Status: UNSURE (   9.35  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8MP: move SCTR enabling into imx8mp_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already do this SCTR poking in imx8mm_cpu_lowlevel_init. If the EVK
needs it, other boards should as well, thus move it to a more generic
place.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c | 5 -----
 arch/arm/mach-imx/cpu_init.c              | 4 +---
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index 3298ded5866d..6cb109ae1675 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -179,11 +179,6 @@ static __noreturn noinline void nxp_imx8mp_evk_start(void)
 
 ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
 {
-	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
-
-	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
-	       ccm + IMX8M_CCM_CCGRn_SET(IMX8M_CCM_CCGR_SCTR));
-
 	imx8mp_cpu_lowlevel_init();
 
 	relocate_to_current_adr();
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index a034b5a9a500..ea1c67469122 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -76,9 +76,7 @@ void imx8mm_cpu_lowlevel_init(void)
 }
 
 void imx8mp_cpu_lowlevel_init(void)
-{
-	imx8m_cpu_lowlevel_init();
-}
+	__alias(imx8mm_cpu_lowlevel_init);
 
 void imx8mq_cpu_lowlevel_init(void)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

