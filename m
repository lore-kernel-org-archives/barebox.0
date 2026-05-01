Delivery-date: Fri, 01 May 2026 09:20:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIiAK-000nGc-0X
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 09:20:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIiAJ-0000b9-Ey
	for lore@pengutronix.de; Fri, 01 May 2026 09:20:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jTPRwoKJ9Y08PLF/1t8DMx6FVRWTB4rCuQ+wpgDW00w=; b=pKyYPvClwipRFL7LskURnYSa+Y
	sjBJ3AYs5/iZ1vlSxJEYeWYKh9p+7OvJWVAwGh1tTDaITv7cyoAwAHjUvXKgvhYW009pO4AkCBupL
	9a2XFeNltz2edOVV/O2k7dCh4TX/5DNDv6P3oZyowOXOH0aKhADrI4K+y9nbLmCATC36m+LID5vGm
	9PHNA0qsb6MuxgTc7bXINlhEVvZeKkP0H5tXRr/OsBxIQn7FWwpvnnRbwoQg3doRQsUEx066xFAuB
	KvFM05/qXaA2FAAFtZkjUHwecrYpN/bMAiDU3QDWnSWqoFw3KFzrwRfNdS0nM0UhYw67ml55eIg/l
	Xhai7CpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIi9x-00000006Ssm-2X1U;
	Fri, 01 May 2026 07:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIi9u-00000006SsG-2H34
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 07:19:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIi9s-0000Kw-UE
	for barebox@lists.infradead.org; Fri, 01 May 2026 09:19:33 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Fri,  1 May 2026 09:19:21 +0200
Message-ID: <20260501071927.961370-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260501070625.952091-1-a.fatoum@barebox.org>
References: <20260501070625.952091-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_001934_591110_44173660 
X-CRM114-Status: GOOD (  17.90  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 9/9] efi: reimplement query_console_serial using term_getsize
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

query_console_serial() used printf() to send terminal size query
escape sequences, which go to _all_ active consoles. This corrupted
the fbconsole cursor position because fbconsole receives the
ESC [999;999H sequence and moves its cursor to the bottom-right
corner.

Replace the custom implementation with term_getsize() from lib/term.c,
which calculates the minimum terminal size across all consoles,
including the framebuffer console.

Link: https://fosstodon.org/@otte_homan@theblower.au/116229733790452489
Reported-by: @otte_homan@theblower.au
Fixes: 65ac28276e5d ("efi: loader: protocol: add console support")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/console.c | 119 +--------------------------------
 1 file changed, 2 insertions(+), 117 deletions(-)

diff --git a/efi/loader/protocols/console.c b/efi/loader/protocols/console.c
index 211e725cfd7b..113443db09d6 100644
--- a/efi/loader/protocols/console.c
+++ b/efi/loader/protocols/console.c
@@ -20,6 +20,7 @@
 #include <efi/protocol/text.h>
 #include <efi/error.h>
 #include <efi/guid.h>
+#include <term.h>
 
 #ifdef DEBUG
 #include <efi/loader/trace.h>
@@ -83,76 +84,6 @@ static struct simple_text_output_mode efi_con_mode = {
 	.cursor_visible = 1,
 };
 
-/**
- * term_get_char() - read a character from the console
- *
- * Wait for up to 100 ms to read a character from the console.
- *
- * @c:		pointer to the buffer to receive the character
- * Return:	0 on success, 1 otherwise
- */
-static int term_get_char(s32 *c)
-{
-	u64 timeout;
-
-	/* Wait up to 100 ms for a character */
-	timeout = get_time_ns();
-
-	while (!tstc())
-		if (is_timeout(timeout, 100 * MSECOND))
-			return 1;
-
-	*c = getchar();
-	return 0;
-}
-
-/**
- * term_read_reply() - receive and parse a reply from the terminal
- *
- * @n:		array of return values
- * @num:	number of return values expected
- * @end_char:	character indicating end of terminal message
- * Return:	non-zero indicates error
- */
-static int term_read_reply(int *n, int num, char end_char)
-{
-	s32 c;
-	int i = 0;
-
-	if (term_get_char(&c) || c != cESC)
-		return -1;
-
-	if (term_get_char(&c) || c != '[')
-		return -1;
-
-	n[0] = 0;
-	while (1) {
-		if (!term_get_char(&c)) {
-			if (c == ';') {
-				i++;
-				if (i >= num)
-					return -1;
-				n[i] = 0;
-				continue;
-			} else if (c == end_char) {
-				break;
-			} else if (c > '9' || c < '0') {
-				return -1;
-			}
-
-			/* Read one more decimal position */
-			n[i] *= 10;
-			n[i] += c - '0';
-		} else {
-			return -1;
-		}
-	}
-	if (i != num - 1)
-		return -1;
-
-	return 0;
-}
-
 /**
  * efi_cout_output_string() - write Unicode string to console
  *
@@ -270,58 +201,12 @@ static bool cout_mode_matches(struct cout_mode *mode, int rows, int cols)
 	return (mode->rows == rows) && (mode->columns == cols);
 }
 
-/**
- * query_console_serial() - query serial console size
- *
- * When using a serial console or the net console we can only devise the
- * terminal size by querying the terminal using ECMA-48 control sequences.
- *
- * @rows:	pointer to return number of rows
- * @cols:	pointer to return number of columns
- * Returns:	0 on success
- */
-static int query_console_serial(int *rows, int *cols)
-{
-	int ret = 0;
-	int n[2];
-
-	/* Empty input buffer */
-	while (tstc())
-		getchar();
-
-	/*
-	 * Not all terminals understand CSI [18t for querying the console size.
-	 * We should adhere to escape sequences documented in the console_codes
-	 * man page and the ECMA-48 standard.
-	 *
-	 * So here we follow a different approach. We position the cursor to the
-	 * bottom right and query its position. Before leaving the function we
-	 * restore the original cursor position.
-	 */
-	printf(ESC "7"		/* Save cursor position */
-	       ESC "[r"		/* Set scrolling region to full window */
-	       ESC "[999;999H"	/* Move to bottom right corner */
-	       ESC "[6n");	/* Query cursor position */
-
-	/* Read {rows,cols} */
-	if (term_read_reply(n, 2, 'R')) {
-		ret = 1;
-		goto out;
-	}
-
-	*cols = n[1];
-	*rows = n[0];
-out:
-	printf(ESC "8");	/* Restore cursor position */
-	return ret;
-}
-
 static void efi_setup_console_size(void)
 {
 	int rows = 25, cols = 80;
 	int ret = -ENODEV;
 
-	ret = query_console_serial(&rows, &cols);
+	ret = term_getsize(&cols, &rows);
 	if (ret)
 		return;
 
-- 
2.47.3



