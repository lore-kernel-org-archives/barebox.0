Delivery-date: Wed, 06 Aug 2025 14:47:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYW-007dmQ-1j
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:47:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdYW-0002Pc-1v
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:47:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wiHNYm4KXTRcCfDQzktDfkyw2UJ2VG8Llo2oaY62Jy0=; b=ENg97fADoM9kTOf+PVu9S+EgN+
	iAyJ+fi8/rdSFHm98zZLFRHksVyU4/lxuXggIzBLkEGxWd5HBcgOFljvumaIVqRsbWn6dufJBfWga
	2a1ch4wORmENs0K/oz9D9sHFphmNYOME3SNqAwn/UsoJd/ALxmbje9fIO9gMsddzsDMqvTRzOPwzg
	nt5Fv/Lru+W7/Mk0IsWBbOHjl1VMV8tehAHv4eqBG3d+YfN6T2m9SXEyjqYwQGH1K6CdWR0wDbqKs
	NwWfW7npyhrxJFdhRXeTtjOd2FmYG112ZNKIio/0DNlXBwFk0JE79bBhtuV4GyvYd5l8N8G9LtDXc
	RHnceuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdY9-0000000FCdB-2aom;
	Wed, 06 Aug 2025 12:47:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdY7-0000000FCbd-14mc
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:47:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujdY5-0002Ek-PK; Wed, 06 Aug 2025 14:47:17 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 14:47:15 +0200
Message-Id: <20250806124716.2800716-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_054719_293780_EE09BCB1 
X-CRM114-Status: UNSURE (   7.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] common: prefix panic with PANIC:
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This makes it easier to match against in the test suite.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/misc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/misc.c b/common/misc.c
index ce1fbc284f48..af22579af16f 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -289,6 +289,8 @@ BAREBOX_MAGICVAR(global.of.kernel.add_machine_compatible, "Extra machine/board c
 
 static void __noreturn do_panic(bool stacktrace, const char *fmt, va_list ap)
 {
+	if (*fmt)
+		eprintf("PANIC: ");
 	veprintf(fmt, ap);
 	eputchar('\n');
 
-- 
2.39.5



