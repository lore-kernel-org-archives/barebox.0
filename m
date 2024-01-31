Delivery-date: Wed, 31 Jan 2024 17:57:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVDuQ-00E3PW-1l
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 17:57:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVDuQ-0005uA-Gu
	for lore@pengutronix.de; Wed, 31 Jan 2024 17:57:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s5MwZN6hLg0DMaMJwhemsP9QvfryeHDESRmvrjEZEwI=; b=VX0XerMqXLXAhGCQcwHHozXbO6
	46AO3NYT+hGhPjO10j584ERhqmWxLf83H9YHrc3RflnYvnpUD88vTTlITTeosBNkLdqKAWsA14ygP
	3I3BLqs20G1Rp/GuGRQO3mIZYabIEtgpuN3WYSYqnwmcPAvzrowy3x2HjPng+m7P7d4bpHOKqLZjF
	dLJ8M00uX0WpPvvXcQrANwWBPjuJGo8Qo4cJl8SYQkqji7MP5dK2Tre2/wNX+ZCteiw2dZDIUc10z
	LgxkPh9L4bwMh9yRwALrwG5nHgVbW3vmkZk2kKmyx83XJFCSM+NIAMMTxR451wwg9zw202tlusA7f
	WNNg+81g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVDto-00000004hLX-2E3T;
	Wed, 31 Jan 2024 16:57:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVDti-00000004hEa-3Lz8
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 16:57:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-0005jC-U9; Wed, 31 Jan 2024 17:57:08 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-003fm3-Gt; Wed, 31 Jan 2024 17:57:08 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rVDtc-006OFT-1V;
	Wed, 31 Jan 2024 17:57:08 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 31 Jan 2024 17:56:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240131-fix-fdt-memory-safety-v1-1-3d3a2c797eec@pengutronix.de>
References: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
In-Reply-To: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_085714_978185_6AFCB580 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: fdt: fix memory leak in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the reallocation failed the old memory remains allocated and is never
freed, this is fixed by freeing the old memory on error.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/fdt.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 5c21bab5de..4f79a6120f 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -375,24 +375,37 @@ static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
 
 static int fdt_ensure_space(struct fdt *fdt, int dtsize)
 {
+	size_t new_size;
+	void *previous;
+
 	/*
 	 * We assume strings and names have a maximum length of 1024
 	 * whereas properties can be longer. We allocate new memory
 	 * if we have less than 1024 bytes (+ the property size left.
 	 */
 	if (fdt->str_size - fdt->str_nextofs < 1024) {
-		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
-		if (!fdt->strings)
+		previous = fdt->strings;
+		new_size = fdt->str_size * 2;
+
+		if ((fdt->strings = realloc(previous, new_size)) == NULL) {
+			free(previous);
 			return -ENOMEM;
-		fdt->str_size *= 2;
+		}
+
+		fdt->str_size = new_size;
 	}
 
 	if (fdt->dt_size - fdt->dt_nextofs < 1024 + dtsize) {
-		fdt->dt = memalign_realloc(fdt->dt, fdt->dt_size,
-				fdt->dt_size * 2);
-		if (!fdt->dt)
+		previous = fdt->dt;
+		new_size = fdt->dt_size * 2;
+
+		if ((fdt->dt = memalign_realloc(previous, fdt->dt_size,
+						new_size)) == NULL) {
+			free(previous);
 			return -ENOMEM;
-		fdt->dt_size *= 2;
+		}
+
+		fdt->dt_size = new_size;
 	}
 
 	return 0;

-- 
2.39.2



