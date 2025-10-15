Delivery-date: Wed, 15 Oct 2025 10:30:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wu7-00828D-0p
	for lore@lore.pengutronix.de;
	Wed, 15 Oct 2025 10:30:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8wu6-0008QI-No
	for lore@pengutronix.de; Wed, 15 Oct 2025 10:30:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tx74g/f/xa+HqV27QPha2AB1IQ868YVEj9AVKZhxdOc=; b=UXnryfMLe3bZIBUZ1Iags+pPjS
	9dH4O3xhMxOSUL2f7Zb9uwER7D+/NXhlHfT2lRpirZADqLY30oMns+xZnoGhESzk3/qLAgcWstYZP
	EgNnOiBkmtqUiEyP4K6SuzfBgaNZyUpt9CQWhWdsAYuUtdMZdX4e+66K6mYtQIWHjDTD6pCJgtehe
	pTKHPgcjSbT4PUDkd6wGZdihh78DE0Mb4dOxB7Mr9wXvuWHgT4uQDzV7qXYu/h6etQu0uC+3JS/DK
	pk3vgUX+2P07mZR6TOPZk+KdLTKkJXfg0h8zUWTnEZHKTQ+88joHjPW+sCOkmDK+QxujLf7DR6s0b
	jq1D7dMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wtj-00000000wKY-0L4n;
	Wed, 15 Oct 2025 08:30:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8wtg-00000000wJe-40JU
	for barebox@lists.infradead.org;
	Wed, 15 Oct 2025 08:30:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v8wtf-0008LT-9O; Wed, 15 Oct 2025 10:30:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 15 Oct 2025 10:30:01 +0200
Message-ID: <20251015083009.4096076-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_013012_995392_942DD03C 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! tlsf: move kasan_poison_shadow into tlsf_add_pool
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tlsf: do not poison the control structure more than once

The control_t structure is only associated with a tlsf_t, not a merel
pool_t. Poisoning the control structure again in tlsf_pool thus served
no purpose.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/tlsf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/tlsf.c b/common/tlsf.c
index c4ba8259b261..3c72b41c0385 100644
--- a/common/tlsf.c
+++ b/common/tlsf.c
@@ -872,7 +872,6 @@ pool_t tlsf_add_pool(tlsf_t tlsf, void* mem, size_t bytes)
 	block_set_prev_free(next);
 
 	kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
-	kasan_poison_shadow(control, sizeof(control), KASAN_TAG_INVALID);
 
 	return mem;
 }
@@ -949,6 +948,7 @@ tlsf_t tlsf_create_with_pool(void* mem, size_t bytes)
 {
 	tlsf_t tlsf = tlsf_create(mem);
 	tlsf_add_pool(tlsf, (char*)mem + tlsf_size(), bytes - tlsf_size());
+	kasan_poison_shadow(mem, tlsf_size(), KASAN_TAG_INVALID);
 	return tlsf;
 }
 
-- 
2.47.3



