Delivery-date: Mon, 05 Jan 2026 09:34:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg2X-001SSw-1t
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:34:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcg2X-0003AV-2V
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:34:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qd5zShjgxSESXyyBi3TIvI+vr6XzYUHJAN7eMEKlMaA=; b=OrGRDkDqqeGwaOL9buI67r9RqQ
	0WTsqlRlRHJ2RxPm3xeKD3KoX4dmJic1gKe+bUyrvFP45LpOm76fhWFC3tRDtQX41+/Hyu1EqOqw0
	PWm3mXYVZWAneKeS5KKExmRWH5V07obN7Til7BCIJh4M1SJ6QAjGPIBbK/7J3e9zb7iGXIr6fmXtY
	yPYYJJtYr5qhe9Ueoeimn6E0YsPuypwbCRPj8J/+5JQJO8s3PdP1nOStGekYOF8cpNbr3l4kXlgsZ
	Rj19J3wHu23kQHV69zJiFL/gCxNu/uz749a4phIY7QYBKRtGYr6jY2PrvOIu7NzZURywmYBqzCzmL
	4tiQOO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg25-0000000AzYW-2vT2;
	Mon, 05 Jan 2026 08:33:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcg22-0000000AzXT-3LVE
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:33:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcg20-0002yf-RH; Mon, 05 Jan 2026 09:33:40 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:33:37 +0100
Message-ID: <20260105083340.3254634-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_003342_832837_5B0DA521 
X-CRM114-Status: UNSURE (   9.93  )
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
Subject: [PATCH 1/2] common: elf: use strdup_const for symmetry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The elf->filename is free'd by free_const, but it's always allocated
with strdup. Change this to strdup_const to be able to avoid duplicating
string literals.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/elf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/elf.c b/common/elf.c
index c68ea0be3fa6..e8126c9b64e7 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -315,7 +315,7 @@ static struct elf_image *elf_check_init(const char *filename)
 	}
 	close(fd);
 
-	elf->filename = strdup(filename);
+	elf->filename = strdup_const(filename);
 	if (!elf->filename) {
 		ret = -ENOMEM;
 		goto err_free_hdr_buf;
-- 
2.47.3



