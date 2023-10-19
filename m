Delivery-date: Thu, 19 Oct 2023 13:29:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD4-00E9Lm-Tu
	for lore@lore.pengutronix.de; Thu, 19 Oct 2023 13:29:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtRD3-000548-L9
	for lore@pengutronix.de; Thu, 19 Oct 2023 13:29:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=04dRmVDUaV5q1SSDRfKJ8Isk7p8GqejCaemSncNigYE=; b=nxzVtvWvFBPgtCuCCuH2v+lDrg
	6xNTEi8VQJ+FNmOx2hlhLU7js1sx5t5jHdUMHOu1YnEEmjdPpAnWfq0cge65wPUHuosq/CpiLwS1r
	P4wdFPd5MxiVEmaeisk9CrFmFeFqsl64YZIytSflO1SZZoeg8SugnbDM/pHjZ5od+o16UkvwER0ld
	liLZLnYEk237OC5+NHb99+H5oW0oWa4oI6WGlcGESZlDpNfVohwDWHtXWOmMdkvug+Icns/M1pWKs
	MDslh3XIf9dLFe+BkYGG028t78M97iGur2418/wVis/c5cpIHLoK91ZSjUEq66o/6yAa8Qhq2PwTw
	gejOzGUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBe-00H9pG-1Y;
	Thu, 19 Oct 2023 11:27:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRBa-00H9oA-0L
	for barebox@lists.infradead.org;
	Thu, 19 Oct 2023 11:27:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-0004Zb-MS; Thu, 19 Oct 2023 13:27:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-002mHK-9i; Thu, 19 Oct 2023 13:27:28 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1qtRBY-00GGSb-0o;
	Thu, 19 Oct 2023 13:27:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 19 Oct 2023 13:27:24 +0200
Message-Id: <20231019112727.3876442-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_042730_167331_65AFCC5C 
X-CRM114-Status: GOOD (  13.42  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] fdt: Do not reserve device tree blob
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As a matter of fact the reservation is buggy. fdt_add_reserve_map()
added the reservation for the address the fdt currently is placed,
but the fdt is relocated in bootm_load_devicetree() later. This means
we just add a reserve region for some arbitrary piece of memory which
can equally well be removed.

Linux doesn't require reserving the device tree blob. Some architectures
use early_init_fdt_reserve_self() to mark the fdt as reserved, some like
arm64 use architecture code to reserve the region, others like arm move
the fdt away.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9d72fafd36..734dbfc92a 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -554,9 +554,7 @@ void of_clean_reserve_map(void)
  * @__fdt: The devicetree blob
  *
  * This adds the reservemap entries previously collected in
- * of_add_reserve_entry() to a devicetree binary blob. This also
- * adds the devicetree itself to the reserved list, so after calling
- * this function the tree should not be relocated anymore.
+ * of_add_reserve_entry() to a devicetree binary blob.
  */
 void fdt_add_reserve_map(void *__fdt)
 {
@@ -584,10 +582,6 @@ void fdt_add_reserve_map(void *__fdt)
 		fdt_res++;
 	}
 
-	of_write_number(&fdt_res->address, (unsigned long)__fdt, 2);
-	of_write_number(&fdt_res->size, be32_to_cpu(fdt->totalsize), 2);
-	fdt_res++;
-
 	of_write_number(&fdt_res->address, 0, 2);
 	of_write_number(&fdt_res->size, 0, 2);
 }
-- 
2.39.2



