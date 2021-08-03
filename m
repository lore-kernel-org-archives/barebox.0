Delivery-date: Tue, 03 Aug 2021 11:46:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr07-0005op-2Q
	for lore@lore.pengutronix.de; Tue, 03 Aug 2021 11:46:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAr05-0000e4-Gm
	for lore@pengutronix.de; Tue, 03 Aug 2021 11:46:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/LrglU9hrplbJA//V72VgE5q7zQVoWmUhk55DCl6PQ=; b=cH0cbZJuMLOZJi
	uQocm+g2KRpGLFuDWn2x7xO7lJmV7JSmjGZHKjUYc01Wn325cw57dWs3geMKG1AI0gvqk+COinIw7
	aFFBHt2NQUyzcYfGyTU90OGnrncTxTGBtPABHx/XxiZtYkx4PEFufhV6erudhECO015XBMfMGtv2T
	VwChLwTzOInxit4JHFGKXxuWFpUpVJ+3EqLlyVqoamxrxED1diIYVTvtshh0Q8uJ9jPffXNzpkdhu
	V9WEPb1dIcAlZUje9UdcQ2a+4BGXy/f+WNITgYf9ubv378lVCtCw5ErO2Ul80F8SU+p5J4jadbNST
	BlJBsGZvww/yfHjxoq1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAqyd-001r5h-Vi; Tue, 03 Aug 2021 09:44:48 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAqyM-001qzW-EE
 for barebox@lists.infradead.org; Tue, 03 Aug 2021 09:44:31 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 559888A10B; Tue,  3 Aug 2021 11:44:26 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:217d:6102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id 46BDE8A108;
 Tue,  3 Aug 2021 11:44:23 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  3 Aug 2021 11:44:14 +0200
Message-Id: <20210803094418.475609-5-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
References: <20210803094418.475609-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_024430_713850_6F8BC786 
X-CRM114-Status: GOOD (  13.82  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/8] of: add flag to not create resmem DT entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If we are parsing entries from the /reserved-memory device tree path we
don't want to add them again as resmem blocks at the beginning of the
device tree. Therefore add another flag to indicate this.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/of/fdt.c | 10 +++++++---
 include/of.h     |  2 ++
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9356a92c5c..030f1233d5 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -559,6 +559,9 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 	if (flags & OF_RESERVE_ENTRY_FLAG_XN)
 		of_reserve_map.xn |= BIT(e);
 
+	if (flags & OF_RESERVE_ENTRY_FLAG_NO_RESERVE)
+		of_reserve_map.noentry |= BIT(e);
+
 	return 0;
 }
 
@@ -601,9 +604,10 @@ void fdt_add_reserve_map(void *__fdt)
 	fdt_res += n;
 
 	for (i = 0; i < res->num_entries; i++) {
-		of_write_number(&fdt_res->address, res->start[i], 2);
-		of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1,
-				2);
+		if (!(res->noentry & BIT(i))) {
+			of_write_number(&fdt_res->address, res->start[i], 2);
+			of_write_number(&fdt_res->size, res->end[i] - res->start[i] + 1, 2);
+		}
 		fdt_res++;
 	}
 
diff --git a/include/of.h b/include/of.h
index 36936ecd6e..209d2898ae 100644
--- a/include/of.h
+++ b/include/of.h
@@ -56,9 +56,11 @@ struct of_reserve_map {
 	uint64_t end[OF_MAX_RESERVE_MAP];
 	int num_entries;
 	u16 xn;
+	u16 reserved_entry;
 };
 
 #define OF_RESERVE_ENTRY_FLAG_XN		BIT(0)
+#define OF_RESERVE_ENTRY_FLAG_NO_RESERVE	BIT(1)
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end,
 		 int flags);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

