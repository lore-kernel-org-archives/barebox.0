Delivery-date: Mon, 12 Jan 2026 09:56:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjI-000Soj-14
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDjH-0002HS-Bm
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CdBdnDQnaxC1WYE7MrQAeMEWFhEsq8+IBqM6hjWT7FU=; b=XRgVqTCJtrsYjIopDfMdWUdGG5
	SkT+lydaMRnzfYrWrv6aWG0ulnjz1reh+JAtw31LORJtoSrqVRwvEoo/UET+smxtqQ8LYPymoIIDB
	2+zpxa8yFMU5737I+ET9ymr4S34xgNQPqkYZwLXl9s6dIAEnmUbXFCgewsLgDOjfDm//c6nIX4Sz7
	ASNRVGSNEXMjSbI47sIy1zz3X1jrPB0bRyziq/W2757gZVg3uNMyow1teb65O6bGLmi3TQHAfahOJ
	JmtvpZrMha5SzTy43A/iYkuOduYc6nB9WBSzsY+XRl3gFgR9DhgH0hE0rDwtJwH0YE9ZI/rN5dobw
	5wBhLKAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDir-000000052Dm-1a3m;
	Mon, 12 Jan 2026 08:56:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDin-000000052BD-3BLr
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:56:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDim-0001zv-4V; Mon, 12 Jan 2026 09:56:20 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:56:06 +0100
Message-ID: <20260112085617.2952747-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112085617.2952747-1-a.fatoum@barebox.org>
References: <20260112085617.2952747-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005621_798483_79607475 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] pbl: decomp: report errors on PBL console as well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Decompression errors without DEBUG_LL shouldn't result in a silent hang
when CONFIG_PBL_CONSOLE is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/pbl.h | 5 +++++
 pbl/decomp.c  | 8 ++++----
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/include/pbl.h b/include/pbl.h
index b330010562c4..063cd15cf0ea 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -34,5 +34,10 @@ int pbl_barebox_verify(const void *compressed_start, unsigned int len,
 
 void __noreturn barebox_pbl_entry(ulong, ulong, void *);
 
+#ifdef CONFIG_PBL_CONSOLE
+#define pbl_puts	puts
+#else
+#define pbl_puts	puts_ll
+#endif
 
 #endif /* __PBL_H__ */
diff --git a/pbl/decomp.c b/pbl/decomp.c
index ebdf81ddfbe5..c314f4901a48 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -45,10 +45,10 @@ STATIC int decompress(u8 *input, int in_len,
 
 static void noinline errorfn(char *error)
 {
-	puts_ll("ERROR: ");
-	puts_ll(error);
-	puts_ll("\nHANG\n");
-	while (1);
+	pbl_puts("ERROR: ");
+	pbl_puts(error);
+	pbl_puts("\nHANG\n");
+	__hang();
 }
 
 extern unsigned char sha_sum[];
-- 
2.47.3



