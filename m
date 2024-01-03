Delivery-date: Wed, 03 Jan 2024 19:37:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66x-002OJJ-0I
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66q-0008Oq-TX
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WOmUPy4DRyaH/1WyoInVr1tp/sZEBE+cpvJQ0NY4tBw=; b=ntLbxkR3hgcYndr92oVUPnJLEL
	NeUyn9vKXqphKh8JXRMprk0l4+F1s8Du9iDiRA/bSBLEFzHECTadV0B4VVTwft10wfSN7RkSnuhcQ
	QdtHCUkITBzVEnAdV4GKFPzZv7MToVc8uWnq5E2QbBQ5z9HtZMpKiWrSa53iuhOCAL7NQvc233R0Z
	Amlc51LWM/d9mdEBwXVS7lDL+m34DZo2yC83fYvben9hzitFV7a4Z7EDvHXmAlWjhI33cqq/pYZkB
	oJrKXNLLrZEYQe+e2xWJ5qt2ACPqBCrbq77ztQdHlOf/OZJ70d7OfcRF1+CEEMMgdSoujQ+fCZ/Ja
	S7+H+eQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65D-00Bm0S-25;
	Wed, 03 Jan 2024 18:35:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhVZ-0X
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=WOmUPy4DRyaH/1WyoInVr1tp/sZEBE+cpvJQ0NY4tBw=; b=KzME/5UbNUM3iEUAMcuMNsn4Dk
	DP9J9A6LpwxeKJGOOKQiwuSKQ0f6IL9G28iE34qwtVWJLFOXKilvLBr8nujRSHFkgqTtYBUQiiwUj
	L9hJh/7lg8RcbBdKFK1FhIexsWvWGsNIfoRCii68GoHr8SWEsR/rAJJvXwHrjajJRV29MoY+YAlfA
	WjKBHUUOc197UFzW4aHHk9lIhruBaBIVkSs/7KhRJ9fhhL2c1JzSco2pEsV0rN5GGu0TNDsQltssg
	utZRuLp0Puh+uSJI4ktrYeCKNRVNq0LutdvceRxKC2yzYKOfE1yYnpxZ5V8zd5g//GIGS8iZ8tjq6
	M3OKUwnw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61G-005eC2-2h
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001YO-RQ; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000Ave-Dx; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-21;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:35 +0100
Message-Id: <20240103181312.409668-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_921206_3FB1D5A2 
X-CRM114-Status: GOOD (  10.02  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 015/112] efi: payload: iomem: adjust types to avoid casting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We make ample use of GNU C's support for void pointer arithmetic, so use
it here as well to get rid of the helper variable.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/payload/iomem.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 6b92ca993aa7..316dacd6b3c2 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -142,8 +142,7 @@ static int efi_parse_mmap(struct efi_memory_desc *desc, bool verbose)
 
 static int efi_barebox_populate_mmap(void)
 {
-	void *desc;
-	u8 *mmap_buf = NULL;
+	void *mmap_buf = NULL, *desc;
 	efi_status_t efiret;
 	size_t mmap_size;
 	size_t mapkey;
@@ -169,7 +168,7 @@ static int efi_barebox_populate_mmap(void)
 		goto out;
 	}
 
-	for (desc = mmap_buf; (u8 *)desc < mmap_buf + mmap_size; desc += descsz)
+	for (desc = mmap_buf; desc < mmap_buf + mmap_size; desc += descsz)
 		efi_parse_mmap(desc, __is_defined(DEBUG));
 
 out:
-- 
2.39.2



