Delivery-date: Thu, 09 Jun 2022 13:19:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGCW-008hej-SC
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 13:19:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzGCV-00016f-IL
	for lore@pengutronix.de; Thu, 09 Jun 2022 13:19:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKezX9oE2gDZHq5zvOPU+ovbrw0XWeYILbcPBrwNp0A=; b=f+zITDJqWp9Gip
	L9cROSiPpSuMNj77GYB2ly5ACU1HYv4dciM2i357e8N5tfWP3Iz2vd5b9JGLYmcbTxOb4AWW1nOv5
	vUqB2rTTRmk9ZzyuFUQekJKmz6s4BHs6SFL+PNW/psr8dfuqqlX1EqxcHEXHUd4jnJx+LSIiplZXn
	1c9uTW/QRV+doT7T1y4gJ0sVxky79HF4Wt/y5vDexl0/8CL4y2iCoSS61ZNdRVW4H/Bfu4p6CqPfW
	MXfRFP5fpAkJSrbwtyeCBhjEOV1KSWw7U6mDB1OsvhAOLuKp6QjQUbenjWqESLpkgwPec4zOct4DP
	WogQYtncdlD0BPHlavGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGBJ-001EOY-Iu; Thu, 09 Jun 2022 11:18:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzGB4-001EII-GM
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 11:18:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB3-0000o1-Aa; Thu, 09 Jun 2022 13:18:13 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB3-007N1J-Vw; Thu, 09 Jun 2022 13:18:12 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nzGB1-00AuQ9-II; Thu, 09 Jun 2022 13:18:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Jun 2022 13:18:09 +0200
Message-Id: <20220609111810.2454588-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220609111810.2454588-1-a.fatoum@pengutronix.de>
References: <20220609111810.2454588-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_041814_611218_51F38065 
X-CRM114-Status: GOOD (  10.92  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] of: remove unused and misleading #cells in /memreserve
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox creates a /memreserve node to hold FDT reservation entries
inside its reg property for unflattened device trees that are copied
back into the FDT reservation table on flattening.

These reservation entries are pairs of big-endian 64-bit start+size
pairs. To properly describe these in DT, we would need the
(#address|#size)-cells properties at the root node, not in the same node
having the reg property. As we don't read back these properties anyway,
just drop them.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/of/fdt.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5ccbd1bb69f8..42f45bbd4fb5 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -70,7 +70,6 @@ static int of_unflatten_reservemap(struct device_node *root,
 	int n;
 	struct property *p;
 	struct device_node *memreserve;
-	__be32 cells;
 
 	n = of_reservemap_num_entries(fdt);
 	if (n <= 0)
@@ -80,16 +79,6 @@ static int of_unflatten_reservemap(struct device_node *root,
 	if (!memreserve)
 		return -ENOMEM;
 
-	cells = cpu_to_be32(2);
-
-	p = of_new_property(memreserve, "#address-cells", &cells, sizeof(__be32));
-	if (!p)
-		return -ENOMEM;
-
-	p = of_new_property(memreserve, "#size-cells", &cells, sizeof(__be32));
-	if (!p)
-		return -ENOMEM;
-
 	p = of_new_property(memreserve, "reg",
 			    (void *)fdt + be32_to_cpu(fdt->off_mem_rsvmap),
 			    n * sizeof(struct fdt_reserve_entry));
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

