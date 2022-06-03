Delivery-date: Fri, 03 Jun 2022 09:27:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1ic-001YuD-FY
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 09:27:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx1ib-0008Ra-8R
	for lore@pengutronix.de; Fri, 03 Jun 2022 09:27:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LSREBgi5fKIXFhfd7AIuA9sRKn9SjYzduSsQIK6TeB8=; b=ybdN47N+rH7JYG
	HZjBOP49q2Ec95y/kKvkewYjCTOWAGy04tbI5EU15eD5KPQwVdqhVqOF8IAUOxMnjoIc/XOy3QALK
	7kZCkE5wCA17b9F225e9DXU9a4G/DWzYOJZm/THyVPUvXRbhnVyI6NpYFzw9C6E+D48MPHR2DinIT
	iEdiQalNdbmGYWoPZEeyfJXaET6dSTmWS5pzvyV6ZC50Pc6MP8+fZNfYChjB0SN1X1f+mQJBdFOoC
	AxhwHxENUgdyLt3Y9BIsXrxLrewsnYTHjFhVBb1JNuF4rxsG8MtjIM5khXfF2eZvaJfZt6fw17Fdf
	90+sTMzoWldt92Lap8tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1hO-006Iwq-MP; Fri, 03 Jun 2022 07:26:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx1hJ-006Iu5-HL
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 07:26:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1hI-0008AZ-8z; Fri, 03 Jun 2022 09:26:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1hI-006B7Z-UK; Fri, 03 Jun 2022 09:26:15 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1nx1hG-006d8r-OH; Fri, 03 Jun 2022 09:26:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 Jun 2022 09:26:12 +0200
Message-Id: <20220603072612.1580380-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_002617_671575_35C4AFB2 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM64/RISC-V: booti: support global.bootm.image.loadaddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far $global.bootm.image.loadaddr was ignored. Fix this, so user code
may explicitly decide placement if needed. barebox will still sanity
check the address and align it if necessary, but won't go below it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c | 29 +++++++++++++++++++++++------
 1 file changed, 23 insertions(+), 6 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index a2d63d8c3188..fbf0d8008443 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -6,11 +6,30 @@
 #include <bootm.h>
 #include <linux/sizes.h>
 
+static unsigned long get_kernel_address(unsigned long os_address,
+					unsigned long text_offset)
+{
+	resource_size_t start, end;
+	int ret;
+
+	if (os_address == UIMAGE_SOME_ADDRESS) {
+		ret = memory_bank_first_find_space(&start, &end);
+		if (ret)
+			return UIMAGE_INVALID_ADDRESS;
+
+		return ALIGN(start, SZ_2M) + text_offset;
+	}
+
+	if (os_address >= text_offset && IS_ALIGNED(os_address - text_offset, SZ_2M))
+		return os_address;
+
+	return ALIGN(os_address, SZ_2M) + text_offset;
+}
+
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 {
 	const void *kernel_header =
 			data->os_fit ? data->fit_kernel : data->os_header;
-	resource_size_t start, end;
 	unsigned long text_offset, image_size, devicetree, kernel;
 	unsigned long image_end;
 	int ret;
@@ -19,11 +38,9 @@ void *booti_load_image(struct image_data *data, phys_addr_t *oftree)
 	text_offset = le64_to_cpup(kernel_header + 8);
 	image_size = le64_to_cpup(kernel_header + 16);
 
-	ret = memory_bank_first_find_space(&start, &end);
-	if (ret)
-		return ERR_PTR(ret);
-
-	kernel = ALIGN(start, SZ_2M) + text_offset;
+	kernel = get_kernel_address(data->os_address, text_offset);
+	if (kernel == UIMAGE_INVALID_ADDRESS)
+		return ERR_PTR(-ENOENT);
 
 	ret = bootm_load_os(data, kernel);
 	if (ret)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

