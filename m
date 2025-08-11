Delivery-date: Mon, 11 Aug 2025 14:30:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfq-009Kny-1U
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:30:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRfS-0006XT-H7
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:30:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b/nZq8QzRklkTxtn8JAc10xxkFi3rVFsL/oXCUbJ5d4=; b=Ul4qXvuUEqFNorTPNRSdmQ4kG/
	y8XH14Ibz2xYkR73UXm84VXnVz3UjSTXkCbp18CGA0Htpkt5wjmSDZkW4fRROB5QPQy/5HrwwpPoV
	yNA7oLDNiAmzOp4XD41yCizyC987W+NkUl1c9hzsn5E+kEMzxYV7Fj6ZcxT3GxWEwU2hiBuaxsyEd
	PR3TOrbfrOooBqhML6hEV53wgCUqoH0kgdJvwHzGSPfHhvmpicOniZ1ZWFdvPRqlMA3XGK7KYyEo2
	LoGDjLiYMQKhGLdK1n5dSyClsHkPs/8c9ZVbCiO/CEP9AnjReo3uu4sXoKu7Di09bwBqLOYzMnhnD
	WkBn3hUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulReC-00000007ePB-01vF;
	Mon, 11 Aug 2025 12:29:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-00000007dbj-3rl8
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdh-0004WP-L3; Mon, 11 Aug 2025 14:28:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:28:10 +0200
Message-Id: <20250811122824.1667791-31-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052834_990662_E995627B 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 30/44] pmdomain: add easy way to check for provider support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
determine whether the running barebox has GENPD support.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/base/power.c | 5 +++++
 include/pm_domain.h  | 6 ++++++
 2 files changed, 11 insertions(+)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index f7629f554a72..d60a00f5735e 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -349,6 +349,11 @@ void genpd_activate(void)
 	have_genpd_providers = true;
 }
 
+bool genpd_is_active(void)
+{
+	return have_genpd_providers && !list_empty(&gpd_list);
+}
+
 static struct bus_type genpd_bus_type = {
 	.name		= "genpd",
 };
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 4b7b07b0e43d..3678deb9a76c 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -28,6 +28,7 @@ typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
 #ifdef CONFIG_PM_GENERIC_DOMAINS
 
 void genpd_activate(void);
+bool genpd_is_active(void);
 
 int genpd_dev_pm_attach(struct device *dev);
 struct device *genpd_dev_pm_attach_by_id(struct device *dev,
@@ -63,6 +64,11 @@ static inline void genpd_activate(void)
 {
 }
 
+static inline bool genpd_is_active(void)
+{
+	return false;
+}
+
 static inline int pm_genpd_init(struct generic_pm_domain *genpd,
 				void *gov, bool is_off)
 {
-- 
2.39.5



