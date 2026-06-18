Delivery-date: Thu, 18 Jun 2026 17:18:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waEVd-007IFo-1t
	for lore@lore.pengutronix.de;
	Thu, 18 Jun 2026 17:18:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1waEVc-0002ON-S6
	for lore@pengutronix.de; Thu, 18 Jun 2026 17:18:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qLceIRWM09dEhcXXWMsZtg6cqtcnPOArwMdWUU3JpG8=; b=boSX02e/qz0Y8msQ9sR1jZKBq4
	RIaOg1cGW+90DIkMYkcaVXHPvD2PLgYqicSXjI/xaoqI6xSA1EadlBt59sQfosIRfnsVwl7WrvpT9
	43PZTT1nK2/iZn599IUNEC0KtasT1LpqvO32pZaP9q8yzUBgtFo4CmiachUudiqeKmPOHFZJRnpzS
	daSYbF9wWWlDiJAIG8W5mFgAEKTbHkpXzE5nC+fES8/RSSe/YO1pmALQvGzWi4n/A9JqJ6MDhkszm
	Dw9Uh9Najf0JeRtFvZc78cgr1AcHJ632A+4DK3+EWoCXL2QR5ZfXHUX5TIsirev9f9H09dKXgQcR0
	ereNE3Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waEUM-00000001Tkx-1dpO;
	Thu, 18 Jun 2026 15:17:06 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waEUJ-00000001Tk8-3m11
	for barebox@lists.infradead.org;
	Thu, 18 Jun 2026 15:17:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C44EA200320;
	Thu, 18 Jun 2026 17:17:00 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1waEUG-003SLM-2K;
	Thu, 18 Jun 2026 17:17:00 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1waEUG-00000002oao-2UnH;
	Thu, 18 Jun 2026 17:17:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Lucie L. Hartmann" <lucie@mntre.com>
Date: Thu, 18 Jun 2026 17:16:58 +0200
Message-ID: <20260618151700.671088-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_081704_087357_7B50C8A0 
X-CRM114-Status: GOOD (  11.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH master] ARM: rockchip: hide CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE behind ATF_PASS_FDT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If a user had configured barebox before the addition of
CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE, updating barebox to a newer version
would set the variable to its default of 0.

If they then enable CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT, the default were
not be reapplied thus ending up with
CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE=0, which is guaranteed to fail.

In older barebox versions, this had a chance of hanging during BL31
setup, because an uninitialized FDT pointer was passed to TF-A.

This is fixed now, but still the default settings for
CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE are likely to confuse users interested
in passing along the FDT.

Improve the situation a bit by hiding CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE
behind CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT and having only a single default.

This is not the neatest solution, because now users will likely get a
build error, because CONFIG_SCRATCH_SIZE will need to be increased in
accordance, but at least it's a build-time failure rather than runtime..

Reported-by: Lucie L. Hartmann <lucie@mntre.com>
Fixes: 8dfab4e2aafa ("ARM: rockchip: pass device tree to TF-A")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig  | 7 +++----
 include/mach/rockchip/bootrom.h | 8 +++++++-
 2 files changed, 10 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 454499834081..3fd4498c64c1 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -187,10 +187,9 @@ config ARCH_ROCKCHIP_ATF_PASS_FDT
 	  enabled.
 
 config ARCH_ROCKCHIP_ATF_FDT_SIZE
-	hex
-	default 0x0
-	default 0x60000 if ARCH_ROCKCHIP_ATF_PASS_FDT
-	prompt "Reserved size for the FDT blob passed to the TF-A"
+	hex "Reserved size for the FDT blob passed to the TF-A"
+	depends on ARCH_ROCKCHIP_ATF_PASS_FDT
+	default 0x60000
 	help
 	  Set this size to CFG_DTB_MAX_SIZE in the OP-TEE configuration. OP-TEE
 	  may modify the passed device tree and increase it's size. This
diff --git a/include/mach/rockchip/bootrom.h b/include/mach/rockchip/bootrom.h
index fc63e793783b..3caa66cded74 100644
--- a/include/mach/rockchip/bootrom.h
+++ b/include/mach/rockchip/bootrom.h
@@ -10,11 +10,17 @@
 #include <tee/optee.h>
 #include <pbl.h>
 
+#ifdef CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE
+#define ROCKCHIP_ATF_FDT_SIZE CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE
+#else
+#define ROCKCHIP_ATF_FDT_SIZE 0
+#endif
+
 struct rockchip_scratch_space {
 	u32 iram[16];
 	struct optee_header optee_hdr;
 	/* FDT needs an 8 byte alignment */
-	u8 fdt[CONFIG_ARCH_ROCKCHIP_ATF_FDT_SIZE] __aligned(8);
+	u8 fdt[ROCKCHIP_ATF_FDT_SIZE] __aligned(8);
 };
 static_assert(sizeof(struct rockchip_scratch_space) <= CONFIG_SCRATCH_SIZE);
 
-- 
2.47.3



