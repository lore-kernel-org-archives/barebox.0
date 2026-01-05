Delivery-date: Mon, 05 Jan 2026 12:27:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikH-001VAs-2w
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 12:27:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcikH-0005z5-4n
	for lore@pengutronix.de; Mon, 05 Jan 2026 12:27:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JsnW9yyJNr0xh7eQT5vcK2SC+v0WDulLiYkSLMWuvlY=; b=VAfGugT3aOwk5kRIUSSBDmSGMG
	F4GDXMctcFBOUDwsxtXe2njcIVypMkf0+E42mLrSyyD//TuYc4/ocnZmWhQsTx+WOTIaidwm/3aGE
	qOnZMcVZkrSl+KeH3O4NN3ZJCLObPzlN3hFr2cJvdGnJsFYX2jBM0tLIHtZ/upTNfDw3m7XJnK7vm
	KMVykN7mtKTohTgpbNxxD8B9HUYQyvhv9LnqKe+Hs8bPClgSMbXpo1+Hig4Boe7o43GNiCocKdUhF
	ayfr1rJ0O4jbuVy/4RVbS2d6E42OpfwjmpczH03J0tZ7lRzBFGJWch6QiPuPSkeqDbOUE0uH6XynN
	XnW2ETvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijj-0000000BBG8-1eSE;
	Mon, 05 Jan 2026 11:26:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcijg-0000000BBDv-1Yy0
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 11:26:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0005Ym-M9; Mon, 05 Jan 2026 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-0099xZ-0r;
	Mon, 05 Jan 2026 12:26:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vcije-00000007KWP-0rU0;
	Mon, 05 Jan 2026 12:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 05 Jan 2026 12:26:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260105-pbl-load-elf-v1-1-e97853f98232@pengutronix.de>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
In-Reply-To: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767612414; l=865;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6vuFNc+w8HLXIUwaYV96uHVkopirQWdggd6VzZULJUY=;
 b=krfDSIbACD2E/Rm1mpCNknkGbOKiC/WiHuR9Eoavpe4G/F7OE2HndifpdvLz+oqz3wIZoGmIL
 aoQsoJWLt2/ACWQU9rXsaBejYFQpEishmEI+LMTYGqYWkVa8rpuFMkX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_032656_411039_224B8FA0 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
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
Subject: [PATCH 01/19] elf: Use memcmp to make suitable for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation of adding ELF support to the PBL use memcmp rather than
strncmp for checking against the ELF magic. The other possibility would
be to add strncmp to the PBL, but for the sake of binary size use a
function that is already there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/elf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/elf.c b/common/elf.c
index c68ea0be3fa668d988b27530644bbb77eb62ff48..692323c6beab2dd8aae9a9e874fb4980152a74e0 100644
--- a/common/elf.c
+++ b/common/elf.c
@@ -201,7 +201,7 @@ static int load_elf_image_segments(struct elf_image *elf)
 
 static int elf_check_image(struct elf_image *elf, void *buf)
 {
-	if (strncmp(buf, ELFMAG, SELFMAG)) {
+	if (memcmp(buf, ELFMAG, SELFMAG)) {
 		pr_err("ELF magic not found.\n");
 		return -EINVAL;
 	}

-- 
2.47.3



