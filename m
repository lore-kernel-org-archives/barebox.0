Delivery-date: Mon, 01 Dec 2025 09:48:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzZz-006kx7-36
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:48:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzZz-0002vu-DD
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:48:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kSAO8UcdLKwHpoG4q6a0+H0yme01Ba/k0pgpIkgF7Fk=; b=Bbpg51D5dD8ww9DDbmUU9Kiv5y
	SmWxuHzN90YK2j9qOzb5XtZONkRovN/d6vtKRiy+ULb7ezEAxI/iJ5M1689/2/qJzS7+EZu52gnOc
	9pSuSVF9EHSwT9N+0retn7d3RtARFBYl/jtXJu4/qlgbqeDpS6UHJ20/XF0/WZTFSvHAtM0RtyGfc
	orUDxAQGesDhX4mkFeugcz7o+pWkC3PrG7c7y+RT4od0N9ll+W4yXr7TMmcIDgXpI2XYF4Sl9ZCRL
	mOwBdfWqPxljzC0k/Sj8esEG5zeGynVt4HWcqtirwM3oUhwHFVs/EqTjV+1rdt2hjGVDfzYSwPKqz
	1pg+tIZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZV-000000039Eg-3nb1;
	Mon, 01 Dec 2025 08:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZQ-000000039BW-3Lbr
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzZN-0002eN-Ub; Mon, 01 Dec 2025 09:47:42 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:45:56 +0100
Message-ID: <20251201084737.1270303-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201084737.1270303-1-a.fatoum@barebox.org>
References: <20251201084737.1270303-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004744_833686_97E661B4 
X-CRM114-Status: GOOD (  14.73  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 6/6] pmdomain: genpd_activate() automatically for deep probe platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the addition of the SCMI power domain driver that's applicable to
any ARM SoC, it's not appropriate to keep it a SoC-specific decision,
whether power domains need to be handled.

That scheme also breaks down as soon as we have some power domains that
need to be handled and some that don't.

The original commit justifies the addition by support of OMAP HW in
multi_v7_defconfig. We do not support deep probe on OMAP yet, so
it's unaffected and when we do, barebox,allow-dummy can be peppered
around the device tree to get rid of the warning.

If anybody else gets warnings from this, they need to add
barebox,allow-dummy to the single power domain in question.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - new change
---
 drivers/of/base.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3cec2878efab..0a7704ca1045 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -22,6 +22,7 @@
 #include <linux/clk.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
+#include <pm_domain.h>
 
 static struct device_node *root_node;
 
@@ -2109,7 +2110,9 @@ int barebox_register_of(struct device_node *root)
 
 	if (IS_ENABLED(CONFIG_OFDEVICE)) {
 		of_clk_init();
-		if (!deep_probe_is_supported())
+		if (deep_probe_is_supported())
+			genpd_activate();
+		else
 			return of_probe();
 	}
 
-- 
2.47.3



