Delivery-date: Mon, 27 Oct 2025 20:30:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSuv-00CR8l-39
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 20:30:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDSuu-0005QI-Ph
	for lore@pengutronix.de; Mon, 27 Oct 2025 20:30:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZnqnIkUpOARYFbRxdlVozVlWREAVHlb2x7FR4Ju7bKk=; b=J28Z3drpVO+1lCkrHTfwhcrTy7
	GI0YVQ70uk1irXHqwUTlqXwn5//O0ejfBwQG7hiU3KiVosNatzc8HUSFS4KuByQCqSqILmxfeLYIs
	/25FEp15ZIp9gzYo7Ys1BVCjbB1lsfeXTbWJc6F6VadYtrdzxCAYyVWv7TOZHKCLSgaJr/HBQ967h
	8ShpMFIt7NVfJAoDpzMcp+W210sRxuW5GtfY9AmjcaKL6NYxWJWXQq3KkGEmScExWd2sp0OoBl4pA
	7KE8pHYTBsbFkuHNPQPCSWZGjoVmkkcEANdY39HgovXj4oO4wgCQe4nmZfeKXkd1Hv9vJKdh87AnL
	cMxC27KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuW-0000000EfTx-2JAr;
	Mon, 27 Oct 2025 19:29:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSuU-0000000EfRn-01xT
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 19:29:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDSuS-0005B5-Ci; Mon, 27 Oct 2025 20:29:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 20:28:18 +0100
Message-ID: <20251027192938.2586566-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027192938.2586566-1-a.fatoum@barebox.org>
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_122942_041820_F3EF9FFF 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] pmdomain: warn if deep probe enabled and driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We shall require any deep probe platforms to have a power domain driver,
even if just a dummy. Otherwise a warning will be printed.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 drivers/base/power.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 0cdece210d94..c291f8657cbb 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -385,8 +385,18 @@ static int __genpd_dev_pm_attach(struct device *dev,
 		if (ret == -ENOENT)
 			ret = -EPROBE_DEFER;
 
-		if (!have_genpd_providers && ret == -EPROBE_DEFER)
-			return 0;
+		if (ret == -EPROBE_DEFER) {
+			/*
+			 * New platforms should have power domain drivers, even if
+			 * they don't do anything.
+			 */
+			if (deep_probe_is_supported()) {
+				dev_warn(dev, "power domain not found (ignoring)\n");
+				return 0;
+			}
+			if (!have_genpd_providers)
+				return 0;
+		}
 
 		/*
 		 * Assume that missing genpds are unresolved
-- 
2.47.3



