Delivery-date: Thu, 10 Apr 2025 13:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2q7e-00AoM6-0X
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 13:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2q7d-0007H1-Km
	for lore@pengutronix.de; Thu, 10 Apr 2025 13:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CyibJDP3V8EOeSao14jBOb8QKPT05sg6gNjdN0c9dYU=; b=Z1bZmsSDRECwV8tR4wUeAJraWM
	2/4Hc9jwgEPf4zPnqWsPigsEx3xygRgGxpMwPE5y4jlGPazdoN5MX9Hs/z2JexUwKNH8TnrrZuCxR
	J57t+HvMiKCJc/zB4K7RucTlg33snLWkdOtLm9enxLI1HTZLTjhW/YuqrHho1JtH/nndhmc0vMOKG
	3lDbvDTtWfYPJZPFU0YZeIWddicGmTKAqkaVFpZxiH7wJRMrNzk9OB3tNsl7CDBzXdp2XNwJHfZ/f
	bvykfL9ADJl134ysufy/z9khMplju0oYBdSkUDMm0/UZDsh2XnuVmL9/zszmrgQfaI6Sax/NryDSK
	+p03T/vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2q7B-0000000AJ34-46J1;
	Thu, 10 Apr 2025 11:30:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2pQS-0000000A8Ol-3UTK
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 10:46:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2pQR-0006ty-Ae; Thu, 10 Apr 2025 12:46:27 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2pQR-004Fux-0K;
	Thu, 10 Apr 2025 12:46:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2pQQ-00AUbo-3D;
	Thu, 10 Apr 2025 12:46:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: David Dgien <dgienda125@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 12:46:25 +0200
Message-Id: <20250410104625.2500755-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_034628_868593_67830A26 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH] fixup! tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tlsf: fix KASAN poisoning of TLSF pool

By poisoning all of the heap after the first malloc, new_pool_entry
becomes a pointer to poisoned memory, which causes a KASAN error right
away at startup.

Move the kasan_poison_shadow call directly after tlsf_add_pool to
fix this.

Cc: David Dgien <dgienda125@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf_malloc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
index 4acf1c1c5071..6e9d48af26bb 100644
--- a/common/tlsf_malloc.c
+++ b/common/tlsf_malloc.c
@@ -115,12 +115,12 @@ void *malloc_add_pool(void *mem, size_t bytes)
 	if (!new_pool)
 		return NULL;
 
+	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
+
 	new_pool_entry = malloc(sizeof(*new_pool_entry));
 	if (!new_pool_entry)
 		return NULL;
 
-	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
-
 	new_pool_entry->pool = new_pool;
 	list_add(&new_pool_entry->list, &mem_pool_list);
 
-- 
2.39.5



