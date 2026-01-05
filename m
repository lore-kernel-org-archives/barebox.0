Delivery-date: Mon, 05 Jan 2026 09:07:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcv-001S1v-1L
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:07:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfcu-0008AC-IP
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:07:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wVznDaw+IKYdGfG+edGulz/BAeNRYcqmtc34++E1ypg=; b=wT72PnN8+64s/hjAYb1hGbZb8Z
	hEJ7i/fZvLzitxT05wJZh5smm5wmAGRe2u7W5yb8F6VOufeLSGFDhqF1i6ByufGa8xb9iwSBMKqFu
	ExfAbZFGrxbJRqyaao3QhU08H3p4v+p5OFJEihvEls3EZfByJ7cqKHGksDLux2meg1K8qItw+kLws
	nZqWmhEa6jLPTGQ+M22+VpSCr2xcPm2cR43Cfk2hyyTmSh/37zbCNIWn/yuc8zFiGiwU/MftUv7Rw
	IhSHhGNxADNXyW+XTPB50wX3jU3NuhjKfQcvbzuegomwdieZd4uozIf6OeLRZWc35Jyi8iOo87guR
	4kWBRcfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcF-0000000Ax2q-3cLN;
	Mon, 05 Jan 2026 08:07:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfcB-0000000AwzP-3JRs
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:07:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfcA-0007f0-6c; Mon, 05 Jan 2026 09:06:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:03:40 +0100
Message-ID: <20260105080653.3240497-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105080653.3240497-1-a.fatoum@barebox.org>
References: <20260105080653.3240497-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_000659_823384_31E6BCDF 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 08/10] common: elf: use release_region unconditionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Given that release_region and release_sdram_region are the same, just
use release_region regardless of whether SDRAM or I/O memory region was
requested.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/elf.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/common/elf.c b/common/elf.c
index c68ea0be3fa6..4f4151f722d7 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -18,7 +18,6 @@ struct elf_segment {
 	struct list_head list;
 	struct resource *r;
 	void *phdr;
-	bool is_iomem_region;
 };
 
 static int elf_request_region(struct elf_image *elf, resource_size_t start,
@@ -40,7 +39,6 @@ static int elf_request_region(struct elf_image *elf, resource_size_t start,
 			pr_err("Failed to request region: %pa %pa\n", &start, &size);
 			return -EINVAL;
 		}
-		r->is_iomem_region = true;
 	}
 
 	r->r = r_new;
@@ -56,10 +54,7 @@ static void elf_release_regions(struct elf_image *elf)
 	struct elf_segment *r, *r_tmp;
 
 	list_for_each_entry_safe(r, r_tmp, list, list) {
-		if (r->is_iomem_region)
-			release_region(r->r);
-		else
-			release_sdram_region(r->r);
+		release_region(r->r);
 		list_del(&r->list);
 		free(r);
 	}
-- 
2.47.3



