Delivery-date: Mon, 22 Jul 2024 19:24:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwmQ-001sW8-1U
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:24:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwmP-0003l1-Rp
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:24:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EKcbIJ5y/otHY9+GrhrfkeScA4KhwinGKOmpFFVLbRc=; b=vi7qZOQw75aQWunrsUcBrvifRd
	V6peZYfgMVpmTR1uxCXu42zIeybzcOO+IPJk2zgQF+4R+39IzopFgjGVgb6k57aBeFGVSGOfDPJe2
	Qluu38zqmv3kx+m/nLW85r8XKyzkz/fe69iaZ/rowi+eIUzkN2wugx4UICN+FTPCSjkg3dr5uDd/k
	PoTvULNhManehcS32e+FoPbft9v/3vpeuIU2B92XdUEbBgWKhs2VuazAvfe8kJIrN9rEne0JSo0V2
	I/V+sI/xzLf3RgV1eBrtNXJcidZPISjIWdLOWbwRX9wFKrGMk2l7zvzNYqACBLxm9a1IEajZVbH3B
	D6G9wK4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwlv-0000000ABxb-3MeJ;
	Mon, 22 Jul 2024 17:24:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwli-0000000ABvK-0YmU
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:24:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwlg-0003hE-1o; Mon, 22 Jul 2024 19:24:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwlf-001QqT-L3; Mon, 22 Jul 2024 19:24:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwlf-00GGUp-1o;
	Mon, 22 Jul 2024 19:24:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:24:10 +0200
Message-Id: <20240722172410.3876647-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_102414_196029_6F12C975 
X-CRM114-Status: GOOD (  14.91  )
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
Subject: [PATCH master] of: fdt: fix overflows when parsing sizes
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
 drivers/of/fdt.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 8dca41990c87..237468cd8164 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -32,12 +32,13 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
 }
 #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
 
-static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, int size)
+static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
 {
-	dt += size;
-	dt = ALIGN(dt, 4);
+	if (check_add_overflow(dt, size, &dt))
+		return 0;
 
-	if (dt > f->off_dt_struct + f->size_dt_struct)
+	dt = ALIGN(dt, 4);
+	if ((!dt && size) || dt > f->off_dt_struct + f->size_dt_struct)
 		return 0;
 
 	return dt;
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



