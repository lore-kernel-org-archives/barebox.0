Delivery-date: Mon, 01 Dec 2025 09:48:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPza0-006kxe-1x
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:48:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPza0-0002wR-2f
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:48:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NiYc8ucsAiRzCvH9HXuGIyRcRMbqyBxZID6q0tyHGPM=; b=wML2/jdYAjsIYzxPxc0hXffkXI
	+ganj7WpqL05okX1KwSyhaDm2ZpJT3fnzu+TcvpweHEyM++z8XHZwX1qrqJXfm2led/rfuItFhFCC
	8rHsdwV68eB2k4RT3HYyIhVI0zloNbTOW16raw3a3CDsMNYPRpik44IGx0HY5adaMr3p4VS0M1LqB
	iShtBlglcHuJK/6IB/+bDUxQrCBasM+nnBrLdvs9LXyf5Wu5A/qg/m+qMvM1M49C5Lrtsp+VzZ8F7
	E4J80kFyaugGR7o1xrqz1LZ+WTk95gHBxJ/zcpP6e/Gcwld+5Eglp9onmVoaY8JISeWPn1LoY40Ci
	K54PhMDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZV-000000039EG-2JQ2;
	Mon, 01 Dec 2025 08:47:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzZQ-000000039BV-27bo
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:47:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vPzZN-0002eN-Kv; Mon, 01 Dec 2025 09:47:41 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 09:45:55 +0100
Message-ID: <20251201084737.1270303-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251201084737.1270303-1-a.fatoum@barebox.org>
References: <20251201084737.1270303-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_004744_540484_C1DA2D08 
X-CRM114-Status: GOOD (  12.76  )
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
Subject: [PATCH v3 5/6] pmdomain: warn if deep probe enabled and driver missing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We shall require any deep probe platforms to have a power domain driver
or make use of barebox,allow-dummy in the device tree.

Otherwise a warning will be printed.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v2 -> v3:
  - suggest barebox,allow-dummy instead of dummy drivers
  - print debug message in !have_genpd_providers case
---
 drivers/base/power.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/base/power.c b/drivers/base/power.c
index 6da40a32801c..668b835df3e6 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -393,8 +393,21 @@ static int __genpd_dev_pm_attach(struct device *dev,
 		if (ret == -ENOENT)
 			ret = -EPROBE_DEFER;
 
-		if (!have_genpd_providers && ret == -EPROBE_DEFER)
-			return 0;
+		if (ret == -EPROBE_DEFER) {
+			/*
+			 * New platforms should either have power domain drivers
+			 * or they should use barebox,allow-dummy, so above
+			 * genpd_get_from_provider() returns NULL.
+			 */
+			if (deep_probe_is_supported()) {
+				dev_warn(dev, "power domain not found (ignoring)\n");
+				return 0;
+			}
+			if (!have_genpd_providers) {
+				dev_dbg(dev, "power domain not found (ignoring)\n");
+				return 0;
+			}
+		}
 
 		/*
 		 * Assume that missing genpds are unresolved
-- 
2.47.3



