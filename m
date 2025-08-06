Delivery-date: Wed, 06 Aug 2025 14:53:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdde-007dqG-09
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:53:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujddd-00037D-G3
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:53:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jrwLte/xsw5ZldhKdyDycAkMWQyLNQ72pRXakKCvtwY=; b=ERvxxdmzQUGpVIvojpNh8AGMfL
	NZoasdG3m5Z8lv1AKeAAJokeAKj1VYFDjBdSSgt7KAn9cYzOCQeFhQJThAGEdMk7hFEuPMwvul+TA
	rAFpcyPup9D0dAoQmFS5rh6wUQQnTKg2WU+PGxVB4OHpK38pAPeIQE64Ftsf7GlxviDskybSU++ON
	Oo9ujjH0tVv0pEUD04RMkzm3MUcGwsHoTukuDGlapwsEXVpDqmJME34pdqDtwJ3qItfhNsH+dby1S
	YAap1JyT2Cd+IPlbI0tB+0larKS63B8iM760/XMVXJXqRKqwb+EV4ZdYnr6FuhHugfH2VDZPzj7CQ
	BcQot6gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujddC-0000000FDmK-3oJ1;
	Wed, 06 Aug 2025 12:52:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdd9-0000000FDkR-3pbn
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:52:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujdd8-0002yf-FX; Wed, 06 Aug 2025 14:52:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:52:29 +0200
Message-Id: <20250806125229.2804284-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806125229.2804284-1-a.fatoum@barebox.org>
References: <20250806125229.2804284-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_055231_959158_CFCAF689 
X-CRM114-Status: GOOD (  10.99  )
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
Subject: [PATCH 2/2] tee: optee: skip optee node fixup if method is NULL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function fixes up an OP-TEE node as well as reserved memory regions.
It can be useful to fix up the memory reservations, but not the OP-TEE
node itself, so let's make this possible if the method is NULL.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/tee/optee/of_fixup.c | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/tee/optee/of_fixup.c b/drivers/tee/optee/of_fixup.c
index 5a3eb094f22d..152322901a7e 100644
--- a/drivers/tee/optee/of_fixup.c
+++ b/drivers/tee/optee/of_fixup.c
@@ -10,24 +10,27 @@ int of_optee_fixup(struct device_node *root, void *_data)
 	struct of_optee_fixup_data *fixup_data = _data;
 	const char *optee_of_path = "/firmware/optee";
 	struct resource res_core = {}, res_shm = {};
-	struct device_node *node;
 	u64 optee_membase;
 	int ret;
 
 	if (of_find_node_by_path_from(root, optee_of_path))
 		return 0;
 
-	node = of_create_node(root, optee_of_path);
-	if (!node)
-		return -ENOMEM;
+	if (fixup_data->method) {
+		struct device_node *node;
 
-	ret = of_property_write_string(node, "compatible", "linaro,optee-tz");
-	if (ret)
-		return ret;
+		node = of_create_node(root, optee_of_path);
+		if (!node)
+			return -ENOMEM;
 
-	ret = of_property_write_string(node, "method", fixup_data->method);
-	if (ret)
-		return ret;
+		ret = of_property_write_string(node, "compatible", "linaro,optee-tz");
+		if (ret)
+			return ret;
+
+		ret = of_property_write_string(node, "method", fixup_data->method);
+		if (ret)
+			return ret;
+	}
 
 	if (!optee_get_membase(&optee_membase)) {
 		res_core.start = optee_membase;
-- 
2.39.5



