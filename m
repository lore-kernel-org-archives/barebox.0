Delivery-date: Mon, 16 Feb 2026 10:18:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukV-002H37-1h
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukS-0008VT-R9
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VRTJrMyyFLBEYYgfxlX3FtCZssbeogud7cDFdeMWH3Q=; b=r7+ox2jbJkyDG3fD8q39s5PF94
	STvYyQrcLhH3XtJ7AxerT0aBySjMtjc2Or4qf0e1hea7AQd1Ton2QyVqU7SrDVW2t9Nz1NHounHz6
	oF+P3Gm9iFX+XJFW5ldyARO54EnvScVsdL6oBEyUK6G4nWpE82BwKLmyPD3kZrdU8Ej30JV2FNf4F
	L9rAMn4t0XjX8sQvb6DHo9YhdCXpksr1XigcG5JD36PraTjWRUhrg2L9+nthm2KubSPZA1zBSIjG5
	Y7ZTzVvqTxUtyIRniGYAFo9QUgcXQDwkT6BB9DT82ISajSFUgXPVnPXxcOmZN1pFH1PXRG/xqM5qu
	pgErPQmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrujL-00000006FJy-2ioH;
	Mon, 16 Feb 2026 09:17:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruip-00000006Edo-48s7
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VRTJrMyyFLBEYYgfxlX3FtCZssbeogud7cDFdeMWH3Q=; b=lwg/bQxFDQUaUrY/tlGKeyDoGE
	CIa3OFohiARYy1TgeBKE6skWnj3Qz0NzYqy/Bh6759WulkagnqOudeSq95d9J48ZhwRYLHm5s6VW+
	vZnLvupk38vkbrs4b5siqw4Y4OjwQ/RMBVwd6fsQrzLSeXedv2TpdwrcOqVADT43UOhhBnJg0BaEm
	fxDjKpT4k1wKRCmVhokQI21MZwW08TXkLR+kV3RZtq6nIUNd6kmVgnzr5vNIzjuTSTZlL/5wLyqbN
	Q6ZVeRiaYAfSRfkHR1a4IQssH82K2nlz2DnXNNJshDY2C+ISX40LjAJMZWfznBQ/HawbBbWVKnNG9
	U3oflXmA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruik-0000000EIEp-0MFL
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006ZA-MY; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0012Y7-0C;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-1cGS;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:14 +0100
Message-ID: <20260216084758.3548990-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091647_392474_5A7ABEB0 
X-CRM114-Status: UNSURE (   9.88  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH master 14/39] efi: loader: fix HII string table realloc and memset bugs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Three bugs in the set_string HII protocol implementation when
expanding the string table:

1. The memset used stbl->strings which still points to the old
   (potentially freed) buffer after realloc. Move the
   'stbl->strings = buf' assignment before the memset.

2. The memset offset was string_id-1 (the target slot) instead of
   stbl->nstrings (the first uninitialized slot), leaving a gap of
   uninitialized entries.

3. stbl->nstrings was never updated after expansion, causing every
   subsequent set_string to re-expand and re-zero the table.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/hii.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/efi/loader/protocols/hii.c b/efi/loader/protocols/hii.c
index f35489eba283..f9719a91a94a 100644
--- a/efi/loader/protocols/hii.c
+++ b/efi/loader/protocols/hii.c
@@ -977,10 +977,11 @@ set_string(const struct efi_hii_string_protocol *this,
 				if (!buf)
 					return EFI_EXIT(EFI_OUT_OF_RESOURCES);
 
-				memset(&stbl->strings[string_id - 1], 0,
+				stbl->strings = buf;
+				memset(&stbl->strings[stbl->nstrings], 0,
 				       (string_id - stbl->nstrings)
 					 * sizeof(stbl->strings[0]));
-				stbl->strings = buf;
+				stbl->nstrings = string_id;
 			}
 
 			str = u16_strdup(string);
-- 
2.47.3



