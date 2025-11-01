Delivery-date: Sat, 01 Nov 2025 12:08:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9T4-00E7Iq-2p
	for lore@lore.pengutronix.de;
	Sat, 01 Nov 2025 12:08:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vF9T4-0001Tw-AR
	for lore@pengutronix.de; Sat, 01 Nov 2025 12:08:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jMy0LHsQiVIDBoKIM5dtkHj2UlRTPYSufciDRkS9+Bk=; b=rouJonLKCb+dHt+3wS5zhjk/wC
	BIrpDhg1Il/0gfkL4YlZHWNV/xQu/4rljuWeYzU3OYEP8h9xQcP3HZdfHEX+5P9LGNtuK5cDJG+tZ
	gLshxy6JpxQ/2gfpBEH3pswJZqStwals2e7HFeKQxMdOpI+4wA/6kwDxQ2diSlp5yT9HprXcuWUW+
	ghuGqT2bYgHiAClG9uboHigRUBdaNB++npOXs1d+XWF/cVkagXojSq0XgNe640NjKp/e/gRAnpBca
	rnd53nIU7YA2nBFBtLEadWZnmg6rZ2N1AQxBwE64qPGEv4ej4qEm35MDJwdIGj1x8hAaaM55U1Xfo
	sT6+Cuvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9SO-00000007Hgg-41GC;
	Sat, 01 Nov 2025 11:07:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vF9SL-00000007HgK-03rc
	for barebox@lists.infradead.org;
	Sat, 01 Nov 2025 11:07:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vF9SH-0001L9-VE; Sat, 01 Nov 2025 12:07:34 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  1 Nov 2025 12:07:31 +0100
Message-ID: <20251101110732.3835886-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251101105542.3830943-1-a.fatoum@barebox.org>
References: <20251101105542.3830943-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_040737_054210_09E873E9 
X-CRM114-Status: UNSURE (   7.78  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! range: fix corner cases when exclusive end is zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While there is no risk of miscomputation here, let's avoid possible
compile errors by putting parenthesis around macro arguments as usual.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/range.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/range.h b/include/range.h
index eb75486d9add..b5dc5cdb4d39 100644
--- a/include/range.h
+++ b/include/range.h
@@ -40,9 +40,9 @@ static inline bool region_overlap_end_inclusive(u64 starta, u64 enda,
 	u64 __starta = (starta), __enda = (enda) - 1;			\
 	u64 __startb = (startb), __endb = (endb) - 1;			\
 									\
-	static_assert(__same_type(starta, enda));			\
-	static_assert(__same_type(enda, startb));			\
-	static_assert(__same_type(startb, endb));			\
+	static_assert(__same_type((starta), (enda)));			\
+	static_assert(__same_type((enda), (startb)));			\
+	static_assert(__same_type((startb), (endb)));			\
 	static_assert(((typeof(endb))-1) > 0);				\
 									\
 	/* Empty ranges don't overlap */				\
-- 
2.47.3



