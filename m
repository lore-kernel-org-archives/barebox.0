Delivery-date: Sun, 20 Feb 2022 13:52:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlhx-004x7v-4R
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:52:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlhv-0002jG-Og
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:52:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/cAASNCkTe35dlblZxc9gEIZMjQZ8UYEJiPdtq/nFM=; b=Y+iz/uYFICGmUi
	DZQHsuHpOT+ipSfNrVOM4/KClLAbAAeGBO7ytH6BBUrd3M4/69F9UWi3v/nLo8a9mh3Jr9IPryqGG
	YOfJgcYspawnUnjqYlOCcAvuOteYHnHBMsN5AjF0EQchP/lyzGuKQTXtB7kIlenqlxKd5fwDKjljp
	/SIQFaKA953guJ3vMdqH0fFbvtZmeDM1MRBD58kaw73LQEHLZ+5FRfAOZJoVDQXL0J2NHQQlDr8uj
	Z6qiE1U1X8tQu8+EoX8DTwEZAGnN0iRvPXAmUxIZlMC/VHu2Dx8va/wSwGIKOKe5KyttPedFps/ce
	GULf4/Y8x3/GxrFE4FOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLlgZ-001KIM-N9; Sun, 20 Feb 2022 12:51:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLldX-001IMA-K1
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zt-4C; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPK-T0; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:13 +0100
Message-Id: <20220220124736.3052502-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044823_705730_A925F850 
X-CRM114-Status: GOOD (  12.59  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/24] PBL: fdt: factor reg property parsing into helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of duplicating the loop for each of base and size, move it into
a helper function. This may come in handy later when extending the
function, e.g. to have the generic-dt-2nd image take /reserved-memory
entries into account and not rely on CONFIG_OPTEE_SIZE.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 pbl/fdt.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/pbl/fdt.c b/pbl/fdt.c
index 7a913c546af6..51719698f269 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -3,12 +3,24 @@
 #include <pbl.h>
 #include <linux/printk.h>
 
+static const __be32 *fdt_parse_reg(const __be32 *reg, uint32_t n,
+				   uint64_t *val)
+{
+	int i;
+
+	*val = 0;
+	for (i = 0; i < n; i++)
+		*val = (*val << 32) | fdt32_to_cpu(*reg++);
+
+	return reg;
+}
+
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize)
 {
 	const __be32 *nap, *nsp, *reg;
 	uint32_t na, ns;
 	uint64_t memsize64, membase64;
-	int node, size, i;
+	int node, size;
 
 	/* Make sure FDT blob is sane */
 	if (fdt_check_header(fdt) != 0) {
@@ -51,14 +63,9 @@ void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsiz
 		goto err;
 	}
 
-	membase64 = 0;
-	for (i = 0; i < na; i++)
-		membase64 = (membase64 << 32) | fdt32_to_cpu(*reg++);
-
 	/* get the memsize and truncate it to under 4G on 32 bit machines */
-	memsize64 = 0;
-	for (i = 0; i < ns; i++)
-		memsize64 = (memsize64 << 32) | fdt32_to_cpu(*reg++);
+	reg = fdt_parse_reg(reg, na, &membase64);
+	reg = fdt_parse_reg(reg, ns, &memsize64);
 
 	*membase = membase64;
 	*memsize = memsize64;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

