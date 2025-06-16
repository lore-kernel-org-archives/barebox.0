Delivery-date: Mon, 16 Jun 2025 09:24:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cl-007qb1-0z
	for lore@lore.pengutronix.de;
	Mon, 16 Jun 2025 09:24:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uR4Cj-0004xO-Cy
	for lore@pengutronix.de; Mon, 16 Jun 2025 09:24:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QXlFfSPXsEPf7SHDYtZbLprqMNRCQVs4ZPHFDHpBWjA=; b=kXI2uyV9/zml1GaqlRaQOdkBGI
	VWJCw+sgfU3FP6p+RIVFvUCX6eeSJHNE/kO1SrLgGQlUCWWDFhG7rYI0/2RpNOt5VwntQCTp9V1nK
	KW7CsAjs8KHxGZxGC9JxWT8KnCZAr+r44MDc3O2Mh1PriNoTerVo7zAidvGLczj972Q9OlVl6MmeZ
	2Jp4UrI5heyKSqpMin8IULeIvVF48iEHgGxS7PEtnNfF4nA+4uWSA/xDPqk/N0pPfeDtwcOczosJF
	NTaaD8HfRJfTNITgSx7l0nDLZdZxMGH65NQUg4w4vvtli8ePSkjcMxJIU8AAz3yYTVqBaWD3xfI8o
	e0YQ3MNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR4C5-00000003cvp-3lGC;
	Mon, 16 Jun 2025 07:23:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uR474-00000003c88-1wF5
	for barebox@lists.infradead.org;
	Mon, 16 Jun 2025 07:18:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uR471-0006Gi-GV; Mon, 16 Jun 2025 09:18:35 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 16 Jun 2025 09:16:34 +0200
Message-Id: <20250616071634.811000-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250616071634.811000-1-a.fatoum@barebox.org>
References: <20250616071634.811000-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_001838_549998_E1B96547 
X-CRM114-Status: UNSURE (   9.49  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] efi: payload: iomem: populate resource type/attributes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that the iomem command has support for printing type/attributes,
we don't need to print them for debugging during initcall.

Fill out the resources with the information and bump down the debug
print to verbose debug instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/payload/iomem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 64f4b809e0c2..d58f95ca70a2 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -127,7 +127,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 
 	fullname = xasprintf("%s@%llx", name, (u64)va_base);
 
-	pr_debug("%s: (%pad+%pad)\n", fullname, &va_base, &va_size);
+	pr_vdebug("%s: (%pad+%pad)\n", fullname, &va_base, &va_size);
 
 	res = request_iomem_region(fullname, va_base, va_base + va_size - 1);
 	if (IS_ERR(res)) {
@@ -136,6 +136,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 	}
 
 	res->flags |= flags;
+	resource_set_efi_memory_type_attrs(res, desc->type, desc->attrs);
 
 out:
 	free(fullname);
-- 
2.39.5



