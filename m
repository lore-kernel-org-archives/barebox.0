Delivery-date: Mon, 27 Oct 2025 07:53:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDH74-00CFdl-2z
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 07:53:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDH74-0001ud-D4
	for lore@pengutronix.de; Mon, 27 Oct 2025 07:53:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZnD0yGfEGdFBhFMf55AEUnUh6E0uPySzMwOY3yzJmJ4=; b=JbbGp21pXrcAUP6s5+0LBVRN95
	tG2fD+17gVQzA4W5CoDg2bsCwBf8QlU/inzn85ugMsPXSCXaK3wzNPyDzmTL8DZrgp632FIyYhGIT
	A6YaQiRiyWmEtU27CcEdKkesXsDrgnMbP8K6PG/6odyw2FNtS9T09jklH5HoNA6ySYsyODLmnFg80
	JmzV+mPIPJZnm7G3D9sDXPonybTgP+mUd/ruz78U7fGqtzmt09BFG48fYhrUxH8q41ELAOJlxcjsj
	HFIMapsWlOeShugukTTv5JBSf137S5e8nxZQLTtNEKbR82RibkbZAhflPDfyU0+rLrSanix7htmEK
	QwceS8ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDH6d-0000000DE4M-4Akq;
	Mon, 27 Oct 2025 06:53:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDH6Y-0000000DE1p-3wIC
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 06:53:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vDH6X-0001gg-Co; Mon, 27 Oct 2025 07:53:21 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 27 Oct 2025 07:53:06 +0100
Message-ID: <20251027065315.2419160-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251027065315.2419160-1-a.fatoum@barebox.org>
References: <20251027065315.2419160-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251026_235323_001504_53FC675C 
X-CRM114-Status: GOOD (  10.88  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] pmdomain: warn if deep probe enabled and driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We shall require any deep probe platforms to have a power domain driver,
even if just a dummy. Otherwise a warning will be printed.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
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



