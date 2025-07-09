Delivery-date: Wed, 09 Jul 2025 12:45:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZSIa-00Fg4U-2Z
	for lore@lore.pengutronix.de;
	Wed, 09 Jul 2025 12:45:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uZSIa-0007NW-8L
	for lore@pengutronix.de; Wed, 09 Jul 2025 12:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Ts9aJPDFNds49wvnVutxCQawrMJNp3G9NAClGGWXbuk=; b=cLbT20Ct7VSSovpAfJ8W6YqWZh
	8wy614vFk+Vgehqe+2cAQAfV7aTL0O3DBkOF5b80rNYdfN3H6gzUM9d7QEBCJK9YC0skz+P7tH4Vv
	y+7BrDqG9fSrkM/GKLnhEOhwjBi8e+LNbFEKHjF712qlYbeSZ7rg8/cp8bvK5A2Kr2dJD8i4e6tIZ
	gdrXIhMiX4Hg0J2GRuEDDeYx/nS4xmeG2lI2ThzEFGuclDPeCypPQo9ZPJROsoMM7NMeH2I7Zs5lv
	3dlwB1zt82n5J9WzJLUQJKbHq0NgdUrZiZj53/bTbgZk3rL7NCiP1fSf9uwCTxOGw9kAR48p3LArc
	kvM9Xvrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZSI6-00000008Ls5-3NFB;
	Wed, 09 Jul 2025 10:44:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQi8-000000083ZO-0s3V
	for barebox@lists.infradead.org;
	Wed, 09 Jul 2025 09:03:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZQi6-0006e0-Tv; Wed, 09 Jul 2025 11:03:26 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZQi6-007YLb-2O;
	Wed, 09 Jul 2025 11:03:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1uZQi6-00FZ4W-0Z;
	Wed, 09 Jul 2025 11:03:26 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 09 Jul 2025 11:03:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-feature-ahab-lifecycle-public-v1-1-82e1ce163014@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAFkwbmgC/x3MQQ6CMBAF0KuQWTtJwUDVqxgXZfpHJmmQtGI0h
 LvTuHybt1FBNhS6NRtlfKzYa65oTw3JFOYn2GI1da7rnXdXVoT3msFhCiMnU8hPEnhZx2TCrQx
 nHwe9+KhUjyVD7fv/7499PwCg1o4AbwAAAA==
X-Change-ID: 20250709-feature-ahab-lifecycle-public-1c637d6f87df
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_020328_321637_17C3DE1C 
X-CRM114-Status: GOOD (  10.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: ele: make ele_life_cycle public
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This allows using the string representation in other parts of barebox
e.g. board code.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/ele.c | 2 +-
 include/mach/imx/ele.h  | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index ec0fd652160059eab7276070842d657bde9709db..c0d1ab605d341187ea8ae855a8f0569e015bbc82 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -665,7 +665,7 @@ unsigned int imx93_ahab_read_lifecycle(void)
 	return readl(MX9_OCOTP_BASE_ADDR + 0x41c) & 0x3ff;
 }
 
-static const char *ele_life_cycle(u32 lc)
+const char *ele_life_cycle(u32 lc)
 {
 	switch (lc) {
 	case ELE_LIFECYCLE_BLANK: return "BLANK";
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index e7226e6576267fa0f92de0d1d1d7795989831714..1c8cc02b201a62760628fd030dc4e8fe44c92aa2 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -160,6 +160,7 @@ int ele_authenticate_container(unsigned long addr, u32 *response);
 int ele_release_container(u32 *response);
 int ele_forward_lifecycle(u32 lc, u32 *response);
 int ele_print_events(void);
+const char *ele_life_cycle(u32 lc);
 
 int imx93_ele_load_fw(void *bl33);
 unsigned int imx93_ahab_read_lifecycle(void);

---
base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
change-id: 20250709-feature-ahab-lifecycle-public-1c637d6f87df

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



