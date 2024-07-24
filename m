Delivery-date: Wed, 24 Jul 2024 11:31:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYL8-002QZk-1W
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYL7-0004zE-RE
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vbCl9/qb7zKyyPXQ2QldL5HW4p2KWA9eG94Cc4lgS00=; b=dvkzz0HHhBqduXVEG3Aiy1NDS1
	uP8C6EomQLUNPHnMRLJ8dHSsuIAVm2tP8jFdVQCMbc/ZBLdk/vUEStTPEegOrFUC4YetIdW5iE2R1
	c2mfWy3wCJjR4IWpKPCZwkHFyCStx5QdmMqWwIdrT9X2qXCh69OUmvW26YDdMhvtOUzYhjrX2zZrx
	N6l/QxYRPmsX3z4atMbhPIjs6jSQDjVM3/MRtatRlIof93ZPKbu24YOJ1Pibvnp5tgxUxVf01Uyjv
	o5ozlpI4vZZlkSYf4/ZQaGUh8jWn3FywvZaTYWZadwdY04ldyqhfVRpjcSXcCEeumSx3l+JCXUVCm
	dueFWl3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYKe-0000000EwPS-2i0U;
	Wed, 24 Jul 2024 09:30:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYFw-0000000Ev8N-0TuI
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:25:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYFu-0004Zz-Bo; Wed, 24 Jul 2024 11:25:54 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYFt-001pAM-Us; Wed, 24 Jul 2024 11:25:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYFt-001LXK-2i;
	Wed, 24 Jul 2024 11:25:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:25:52 +0200
Message-Id: <20240724092552.303668-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_022556_178065_FC5EEB4E 
X-CRM114-Status: GOOD (  15.53  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] of: fdt: fix overflows when parsing sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function dt_struct_advance() is used to advance a pointer to the next
offset within the structure block, while checking that the result is in
bounds.

Unfortunately, the function used a signed size argument. This had the
effect that a too-large size in the FDT wrapped around and caused the
pointer to move backwards.

This issue was found by libfuzzer which generated an FDT that
always triggered an out-of-memory condition: One struct indicated a size
that caused the pointer to move backwards.

The resulting loop allocated memory on every iteration and eventually
ran out.

Fix this by using unsigned sizes and treating wrap around as an
error case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - remove unneeded (!dt && size) check (Sascha)

@Sascha, I didn't know (or had forgotten) that the FIT image parser is
separate. It lacks a number of checks that were added to harden the FDT
parser. I will submit this separately.
---
 drivers/of/fdt.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 8dca41990c87..4cd33cb04947 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -32,11 +32,12 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
 }
 #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
 
-static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
+static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
 {
-	dt += size;
-	dt = ALIGN(dt, 4);
+	if (check_add_overflow(dt, size, &dt))
+		return 0;
 
+	dt = ALIGN(dt, 4);
 	if (dt > f->off_dt_struct + f->size_dt_struct)
 		return 0;
 
@@ -165,7 +166,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
 {
 	const void *nodep;	/* property node pointer */
 	uint32_t tag;		/* tag */
-	int  len;		/* length of the property */
+	uint32_t len;		/* length of the property */
 	const struct fdt_property *fdt_prop;
 	const char *pathp, *name;
 	struct device_node *root, *node = NULL;
-- 
2.39.2



