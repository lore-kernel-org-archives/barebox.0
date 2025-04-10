Delivery-date: Thu, 10 Apr 2025 13:18:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvp-00AoAP-33
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 13:18:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvo-0004sr-LM
	for lore@pengutronix.de; Thu, 10 Apr 2025 13:18:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ACTUctQdoeFuubOFQhQC3ADyAAUJbzdQg7Ew+ZZayfQ=; b=znjlqNqjZ9X7LaegsSrFU0SUdp
	IUQ+Sz4QOA/Vlqk+cakl5tn1cvnIaIio35WSSs+4BOAeu3mGP+1OJMCVO2wm86smkQTdLib/rEuzd
	lcjEpMPecrw5t+6znu6s5PTbtMTR78zqpvdL7Sd2986ZJkbCaONM/5pPvuqJxz++AZztM4a/UugVY
	yn8MBpYJ86JAZGQsham+QhhkPkLpgHGWAFi9WeIPVeoqf9mFI2y4pUq+ORDuBkYYdpyxArJUs2dQW
	8eX+US5pBpfc3/6YqNZFMUcuNiiHNjYPoIm13ZsXZ8a1ABWlCFlyngZCEfZUWfafqMX4UGHduFwLC
	6BaOsO+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2pvK-0000000AF5j-2ja3;
	Thu, 10 Apr 2025 11:18:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ohW-0000000A1MM-2XG1
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 10:00:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2ohV-0005HE-7U; Thu, 10 Apr 2025 12:00:01 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2ohV-004FV0-08;
	Thu, 10 Apr 2025 12:00:01 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2ohU-009Wqk-33;
	Thu, 10 Apr 2025 12:00:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 11:59:58 +0200
Message-Id: <20250410095958.2271159-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_030002_642287_3D54AA85 
X-CRM114-Status: UNSURE (   9.09  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] of: use pr_ family functions to log messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KERN_DEBUG and KERN_ERR don't work in barebox, replace them with pr_
family of functions and while at it simplify hexdump.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/address.c | 11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index c9b801e3fec6..1e3e7a101189 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -16,17 +16,10 @@
 #define OF_CHECK_COUNTS(na, ns)	(OF_CHECK_ADDR_COUNT(na) && (ns) > 0)
 
 /* Debug utility */
-#ifdef DEBUG
 static void of_dump_addr(const char *s, const __be32 *addr, int na)
 {
-	printk(KERN_DEBUG "%s", s);
-	while (na--)
-		printk(" %08x", be32_to_cpu(*(addr++)));
-	printk("\n");
+	pr_debug("%*phN\n", na * (int)sizeof(__be32), addr);
 }
-#else
-static void of_dump_addr(const char *s, const __be32 *addr, int na) { }
-#endif
 
 /* Callbacks for bus specific translators */
 struct of_bus {
@@ -399,7 +392,7 @@ static u64 __of_translate_address(struct device_node *dev,
 		pbus = of_match_bus(parent);
 		pbus->count_cells(dev, &pna, &pns);
 		if (!OF_CHECK_COUNTS(pna, pns)) {
-			printk(KERN_ERR "prom_parse: Bad cell count for %pOF\n", dev);
+			pr_err("prom_parse: Bad cell count for %pOF\n", dev);
 			break;
 		}
 
-- 
2.39.5



