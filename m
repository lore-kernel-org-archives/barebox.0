Delivery-date: Tue, 22 Apr 2025 07:38:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Kg-003v4Z-1B
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:38:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76Kf-0005sG-Oy
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:38:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IerNxdrJXyw8BZrWMlS2Cdmt/4tDQEmae01PqEE98GY=; b=BYJ5Mn7slBb3PC/kJvia+nJzdq
	jIgnU3GmlZo3+xYN54qa5tp75XyO99jyq9CIbc8JF4WqQjwxBo0AYTXmG8hQ/Sxd0hmDiyrjTpQQt
	MbcfEBwXEUUirQE+Z8wuZ9WF27j3uyVeTOd3DMpHP2uK69usTtRqty3UyAfPjo52mIU9X0Hs1wsHe
	nmp3rEKuAvft1Te5/dsHAhOPjs+2ncQwpuQVKe6zdHXVQhK3GdiZs8vBV3F/CBY1cJ9FPFgnkMG90
	Eenct01l8UmirkPhb54KJ53Pb8QOR4d2hVS35yC0KvTip/qihJINPW57mjWDIOxS18PD+Du5PdNvH
	6MiCsvKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76KH-00000005sWZ-2pba;
	Tue, 22 Apr 2025 05:37:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u76KE-00000005sVp-3XCR
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:37:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-0005jk-Cu; Tue, 22 Apr 2025 07:37:41 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-001V17-0c;
	Tue, 22 Apr 2025 07:37:41 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u76KD-00EQ0Y-0J;
	Tue, 22 Apr 2025 07:37:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:37:39 +0200
Message-Id: <20250422053740.3436389-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_223742_879131_E988527F 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] tlsf: hardening: unpoison trailing padding before zeroing it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The actual allocated buffer size can be bigger than what was requested
due to alignment.

When KASAN is enabled, only the requested size is unpoisoned.
This currently leads to problems, because with
CONFIG_INIT_ON_ALLOC_DEFAULT_ON enabled, the whole allocated
buffer will be zeroed.

If we fix that, we will instead run into a problem when freeing the
buffer while CONFIG_INIT_ON_ALLOC_DEFAULT_ON is enabled:
We don't record the actual size for later use and thus trying to zero
all of the buffer will again trip over the poisoned padding at the end.

Fix this by first unpoisoning the whole buffer, zeroing it and then
restoring poisoning of off-limits memory.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlsf.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index 5504453a9453..01293630dd7c 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -607,10 +607,19 @@ static void* block_prepare_used(control_t* control, block_header_t* block,
 
 		kasan_poison_shadow(&block->size, size + 2 * sizeof(size_t),
 			    KASAN_KMALLOC_REDZONE);
-		kasan_unpoison_shadow(p, used);
 
-		if (want_init_on_alloc())
+		if (want_init_on_alloc()) {
+			kasan_unpoison_shadow(p, size);
 			memzero_explicit(p, size);
+			/*
+			 * KASAN doesn't play nicely with poisoning addresses
+			 * that are not granule-aligned, which is why we poison
+			 * the full size and then unpoison the rest.
+			 */
+			kasan_poison_shadow(p, size, 0xff);
+		}
+
+		kasan_unpoison_shadow(p, used);
 	}
 	return p;
 }
@@ -1017,8 +1026,10 @@ void tlsf_free(tlsf_t tlsf, void* ptr)
 		control_t* control = tlsf_cast(control_t*, tlsf);
 		block_header_t* block = block_from_ptr(ptr);
 		tlsf_assert(!block_is_free(block) && "block already marked as free");
-		if (want_init_on_free())
+		if (want_init_on_free()) {
+			kasan_unpoison_shadow(ptr, block_size(block));
 			memzero_explicit(ptr, block_size(block));
+		}
 		kasan_poison_shadow(ptr, block_size(block), 0xff);
 		block_mark_as_free(block);
 		block = block_merge_prev(control, block);
-- 
2.39.5



