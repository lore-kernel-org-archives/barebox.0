Delivery-date: Thu, 25 May 2023 01:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAM-00Crew-CH
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAJ-00074G-JO
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X41GH6iCYO8hYAkgBrFYx98uwcxVpg7cnsML0df/qgk=; b=4XWS8g8KbCXhv2UiatbB3CWcKA
	ElJPFtQiqmzXCyuaSMHYqVwp7KPSecLma91PAKO6CkzH6SlCoF2OiE9xBDH2zNwnSwg4ffIcAzP6m
	a1MOkXnJdvX6iN2Loa5vlZKKsCc1yVlpCSKt4FHmijy29A8bpQkyFUf3qwuheaG/YTNaRHGlhYoLx
	AZCb8Oo1Hp6yyot2i28S3sQjUoruHQbDkZ49FbALzHhuaf0S0/Sr+GZnJTOgHPp+aO44Uf4LC7J0k
	OJ7SZFwsHNzbsOoDvO28lluI7Q3g8WMLP/VDcOjCsNiuPWxmMKt9iyRUDljlebWo+7y6FVsv6uxi5
	8ttfXKzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y91-00EzM4-0T;
	Wed, 24 May 2023 23:43:51 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8v-00EzHl-19
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:47 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id DC2D31C000A;
	Wed, 24 May 2023 23:43:37 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:19 +0200
Message-Id: <20230524234328.82741-5-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524234328.82741-1-jmaselbas@zdiv.net>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164345_540161_4FF550BA 
X-CRM114-Status: GOOD (  10.00  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/13] ARM: lds: Add SoC specific sections to go before .text_head_prologue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On sunxi platforms the boot rom (BROM) looks for a specific header which
will also be loaded in memory, causing pbl, or barebox, image not loaded
at the expected BASE addresse. This also cause an issue with relocatable
pbl: instruction used for relocation expect the image to be aligned on a
4K page boundary.

The proposed solution here is to allow to soc specific section to be put
in the very begging of the .text section, before anything else.

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
rfc->v2:
 - fix typo in commit title
 - replace the use of macro with SORT_BY_NAME(.text_head_soc_header*)

 arch/arm/lib/pbl.lds.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 114ec7bc81..059909806e 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -27,6 +27,7 @@ SECTIONS
 	.text      :
 	{
 		_stext = .;
+		*(SORT_BY_NAME(.text_head_soc_header*))
 		*(.text_head_prologue*)
 		*(.text_head_entry*)
 		__bare_init_start = .;
-- 
2.40.1



