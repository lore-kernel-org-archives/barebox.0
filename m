Delivery-date: Mon, 16 Feb 2026 10:17:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujg-002Gvk-08
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vruja-0007WL-5H
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ven62fpmQFqdJvjB3CjtcZorQFuu5deZ3tU6TFaVvKI=; b=g22IOzUBLh/g4RQqLu+xd8I1UX
	K5XFUnA8s/n5IOAQpqrY9fmqUd7UsDVqxE2K7EaMo7e9PRkqjTz0NkZV/XKzQgOOsCbZkYkeHlVDX
	Zrnj4mr0vgr2+XuF90Y3Dbmmd+FmxdJGBadl9PdLP7VFgWyooNs5jJsbyweQxGBZWd9ELQwtFvoD+
	auo3LaYg+5RZZB7LfJdI9R4BJOphq6fUf4RU/mURvKXTJ6nKpVw+2/dY2yT7zq86mU2pBM2nbae3i
	qOmeWdYClTxbDEIkUF2tE61vbu9DFgcrAoh7YWtKnjqSbMC5F6Qq+NyadMs5mlAu42tHc8Y+t5GsC
	AAlqThLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruim-00000006EZr-3bxN;
	Mon, 16 Feb 2026 09:16:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERn-240l
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0006UJ-On; Mon, 16 Feb 2026 10:16:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012Wm-0h;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-18El;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:34 +0100
Message-ID: <20260216084758.3548990-35-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_570075_44184358 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH master 34/39] efi: loader: fix off-by-one in FAT codepage translation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

efi_fat_to_str() uses 'c > 0x80' to decide whether to apply codepage
translation, but character 0x80 (C-cedilla in CP437) also requires
translation. Use 'c >= 0x80' to include it.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/unicode_collation.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/efi/loader/protocols/unicode_collation.c b/efi/loader/protocols/unicode_collation.c
index 4d9a26501723..9e522410fa2e 100644
--- a/efi/loader/protocols/unicode_collation.c
+++ b/efi/loader/protocols/unicode_collation.c
@@ -251,7 +251,7 @@ static void EFIAPI efi_fat_to_str(struct efi_unicode_collation_protocol *this,
 	EFI_ENTRY("%p, %zu, %s, %p", this, fat_size, fat, string);
 	for (i = 0; i < fat_size; ++i) {
 		c = (unsigned char)fat[i];
-		if (c > 0x80)
+		if (c >= 0x80)
 			c = codepage[c - 0x60];
 		string[i] = c;
 		if (!c)
-- 
2.47.3



