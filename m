Delivery-date: Mon, 16 Feb 2026 10:17:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujd-002Gug-0j
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 10:17:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrujY-0007So-1g
	for lore@pengutronix.de; Mon, 16 Feb 2026 10:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6tgWgG0NOqihA12Gt2ePjBpGJ6tyQZS9S6QW7XcliTg=; b=I9Hhhy3pmyuMN/WhHYxAfsG3Xk
	sDV+r1s1JZE4/rS2+eR0wCF5jz+OQsBMRwhKvzT3P6NAlwli9N7/K8DmJrUNe0mxqcoDYok8B/yNJ
	BBt5Iqh6CmA0yX+5elCuumzwwszuazM6gg/aJ9plzNfM2Sc5+2Bk0nEH36S/BOxF0Kazyv/oIeW+c
	VhRrePoajYjw6wE84dDVZg9Rne2rJDZiFHdkJnnmixyHlpaZjnV9Bc0d00QLglximElb5zfpaGrjc
	IIlvrdtH2bcT6Lux+hnZfHo2vEaGhO8pUTPuHYtBmZysBZK9f9v8VeJ/IX3A1UA5P9dwQno8O5CFD
	DGQywkrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruio-00000006Ebc-18fx;
	Mon, 16 Feb 2026 09:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruig-00000006ERr-36pd
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 09:16:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruif-0006V3-6l; Mon, 16 Feb 2026 10:16:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruid-0012X2-1k;
	Mon, 16 Feb 2026 10:16:40 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vruH1-0000000Eudd-24S0;
	Mon, 16 Feb 2026 09:48:07 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Feb 2026 09:44:39 +0100
Message-ID: <20260216084758.3548990-40-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
References: <20260216084758.3548990-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_011642_796370_E4B917BD 
X-CRM114-Status: GOOD (  14.10  )
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
Subject: [PATCH master 39/39] efi: loader: protocol: console: don't turn LF into CRLF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

puts() does LF to CRLF conversion, when it really shouldn't as the EFI
app is supposed to do it, so we end up with stray line feeds.

Use the newer console_putbin helper to avoid them and while at it, just
skip the unnecessary memory duplication as we are going to loop through
the original string anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/loader/protocols/console.c | 30 +++++++++++-------------------
 1 file changed, 11 insertions(+), 19 deletions(-)

diff --git a/efi/loader/protocols/console.c b/efi/loader/protocols/console.c
index 857b38f5df32..ff56525341d4 100644
--- a/efi/loader/protocols/console.c
+++ b/efi/loader/protocols/console.c
@@ -170,8 +170,6 @@ static efi_status_t EFIAPI efi_cout_output_string(
 {
 	struct simple_text_output_mode *con = &efi_con_mode;
 	struct cout_mode *mode = &efi_cout_modes[con->mode];
-	char *buf, *pos;
-	const u16 *p;
 	efi_status_t ret = EFI_SUCCESS;
 
 	EFI_ENTRY("%p, '%ls'", this, string);
@@ -181,16 +179,6 @@ static efi_status_t EFIAPI efi_cout_output_string(
 		goto out;
 	}
 
-	buf = malloc(utf16_utf8_strlen(string) + 1);
-	if (!buf) {
-		ret = EFI_OUT_OF_RESOURCES;
-		goto out;
-	}
-	pos = buf;
-	utf16_utf8_strcpy(&pos, string);
-	puts(buf);
-	free(buf);
-
 	/*
 	 * Update the cursor position.
 	 *
@@ -198,7 +186,15 @@ static efi_status_t EFIAPI efi_cout_output_string(
 	 * and U000D. All other control characters are ignored. Any non-control
 	 * character increase the column by one.
 	 */
-	for (p = string; *p; ++p) {
+	for (const u16 *p = string; *p; ++p) {
+		bool is_high_surrogate = p[1] && 0xd800 <= *p && *p <= 0xdbff;
+		u8 utf8[9], *end;
+
+		end = utf16_to_utf8(utf8, p, is_high_surrogate ? 2 : 1);
+
+		/* console_puts turns \n into \r\n, which we want to avoid */
+		console_putbin(CONSOLE_STDOUT, utf8, end - utf8);
+
 		switch (*p) {
 		case '\b':	/* U+0008, backspace */
 			if (con->cursor_column)
@@ -211,16 +207,12 @@ static efi_status_t EFIAPI efi_cout_output_string(
 		case '\r':	/* U+000D, carriage-return */
 			con->cursor_column = 0;
 			break;
-		case 0xd800 ... 0xdbff:
-			/*
-			 * Ignore high surrogates, we do not want to count a
-			 * Unicode character twice.
-			 */
-			break;
 		default:
 			/* Exclude control codes */
 			if (*p > 0x1f)
 				con->cursor_column++;
+			if (is_high_surrogate)
+				p++;
 			break;
 		}
 		if (con->cursor_column >= mode->columns) {
-- 
2.47.3



