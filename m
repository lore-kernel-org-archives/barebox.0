Delivery-date: Mon, 16 Feb 2026 10:18:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukK-002H0u-0i
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:18:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrukA-0008F2-So
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:18:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wR+0eII5+kCiz4DPrP49JV3yo47ka7YVyG9WtnluyUI=; b=cy62R0QF/eUdP5SGvavKRpxAnE
	kHz36mdCSQAsH9dQPd7+s4rh46luEaneucgCbFxYrJRkv01z/gBPRHJjVHPhohqN3IPHhQ4kl9uvU
	juiKSVYOo+u9BgYBS8ODvvC8UGBGcpAH0lg89378dqRXlnDBP0/b+024zv4XA0czwjJKixk86hj+f
	2DlGRk1NHAFxphzFD2LL1kLXLINajgPngD8mx5CPApE9EW0RmMaJN1TwYtoqlNeoU/3DOsOJ2l0ov
	aBg0w7Rla7vEz04djXxRMogX7cVWR36DMGsKKhkT4jfCI7vEr0ebOISauK6Q+BrOygCX+A5EVBSoO
	hYOm943g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruj6-00000006Exm-17x2;
	Mon, 16 Feb 2026 09:17:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006EaZ-1GGm
	for barebox@bombadil.infradead.org;
	Mon, 16 Feb 2026 09:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=wR+0eII5+kCiz4DPrP49JV3yo47ka7YVyG9WtnluyUI=; b=bLmchh9x5ur59IDBlfvHXI8IRg
	IKYRCQN80+Anb/PF2PPuPhG0rR53CwTQCbDjPKLvVpbGENK3PkMa5C0X1uz5rQuM9Qn1nXcUqaRxu
	MAQgoSNaRpDEbOkEmuEsyNLYJyLlbyeXUz4rkfksRHoQSX3PYabqRA2H5oowmlmn1G2/659suPFUS
	dYmtX7GciJu2wTu9o55IDZd0ZagR63CJ68CtZXD5jDpGc5kdG9zMKY5BRFVLKEVNtkFp0qDyhaQPH
	uf8eoyYZllS1o1A8wJLcOXpK1LOJzb1JLSMMEpt2w9xusJ+FfnClM6oADgHAv4Kaohfq8x+G1lgLu
	JRI2+KSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruii-0000000EIEi-294t
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruig-0006Y6-Cy; Mon, 16 Feb 2026 10:16:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruie-0012Xv-2V;
	Mon, 16 Feb 2026 10:16:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH0-0000000Eudd-1z90;
	Mon, 16 Feb 2026 09:48:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Mon, 16 Feb 2026 09:44:16 +0100
Message-ID: <20260216084758.3548990-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_091645_519538_FB27F75A 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-1.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 16/39] efi: fix unreachable free in efi_set_variable_printf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The return statement before the free() calls makes them unreachable,
leaking both buf and buf16 on every call. Store the return value,
free the buffers, then return.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/efivar.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/efi/efivar.c b/efi/efivar.c
index 1e82afcb8798..16c3228dc79b 100644
--- a/efi/efivar.c
+++ b/efi/efivar.c
@@ -96,18 +96,21 @@ int efi_set_variable_printf(char *name, efi_guid_t *vendor, const char *fmt, ...
 	va_list args;
 	char *buf;
 	wchar_t *buf16;
+	int ret;
 
 	va_start(args, fmt);
 	buf = xvasprintf(fmt, args);
 	va_end(args);
 	buf16 = xstrdup_char_to_wchar(buf);
 
-	return efi_set_variable(name, vendor,
+	ret = efi_set_variable(name, vendor,
 				EFI_VARIABLE_BOOTSERVICE_ACCESS |
 				EFI_VARIABLE_RUNTIME_ACCESS, buf16,
 				(strlen(buf)+1) * sizeof(wchar_t));
 	free(buf);
 	free(buf16);
+
+	return ret;
 }
 
 int efi_set_variable_uint64_le(char *name, efi_guid_t *vendor, uint64_t value)
-- 
2.47.3



