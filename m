Delivery-date: Fri, 01 May 2026 11:08:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIjrV-000oui-0u
	for lore@lore.pengutronix.de;
	Fri, 01 May 2026 11:08:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIjrU-0004Ga-N2
	for lore@pengutronix.de; Fri, 01 May 2026 11:08:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UPEIEdB4l3PWL4vGAwCTimO6VXIefv3bSWZxts/jGD0=; b=avePxYi7wQyzcSOJH7hMNqLDe3
	bN9lAZx0zLgAlab0m5ij0/mwn7i5fUHlNFBZsJPIapKw1stPm/kkXwrLLcQLv4um9zz7vv7TthT74
	/i6Q5cyF53PSA/teFzRE9sTdMV4jLoVKprmxakWhebv5S4Ta/A+C+HBqbn8Hpz5RuU5l5sYj/kMgR
	OqHSrHcsQf4u6b4fXqmGKGEqJH25P1bq/ApQfzAWVOfZeNl/OXBgTS2NB95NcmdlbND7Bnj4Yi9r+
	REXh1+Su8DoDUkBYwy+oYCsaASTYYY8hydtxlNE1sXVyKV1jC73nboZiOmX7c07H7wd40LEPMZ5B7
	hWGXyD0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIjqw-00000006X7h-2eF9;
	Fri, 01 May 2026 09:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIjqu-00000006X7M-1EHw
	for barebox@lists.infradead.org;
	Fri, 01 May 2026 09:08:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wIjqs-0003mu-8v; Fri, 01 May 2026 11:08:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  1 May 2026 11:08:00 +0200
Message-ID: <20260501090801.1041468-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260501_020804_333670_B3FB8A5F 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH] serial: efi-stdio: implement DEC save/restore cursor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

term_getsize() employs the DEC save/restore cursor control sequences
(\e7 and \e8) in its determination of the terminal's size.

efi_process_escape() did not handle them and instead expected that all
\e are directly followed by a [.

Implement support for \e7 and \e8 and have the function silently skip
any other non-bracket \eX escape.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/serial/efi-stdio.c | 26 ++++++++++++++++++++------
 1 file changed, 20 insertions(+), 6 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index b474fe635d15..1e7f5a4a3973 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -39,6 +39,10 @@ struct efi_console_priv {
 	const char **mode_names;
 	int *mode_num;
 	unsigned int var_mode;
+
+	/* saved cursor position for \e7/\e8 */
+	unsigned long saved_row;
+	unsigned long saved_col;
 };
 
 static inline struct efi_console_priv *to_efi(struct console_device *cdev)
@@ -274,16 +278,26 @@ static int efi_process_square_bracket(struct efi_console_priv *priv, const char
 
 static int efi_process_escape(struct efi_console_priv *priv, const char *inp)
 {
-	char c;
-
-	c = *inp;
-
+	/* skip ESC, so inp points at the char after it */
 	inp++;
 
-	if (*inp == '[')
+	switch (*inp) {
+	case '[':
 		return efi_process_square_bracket(priv, inp) + 1;
+	case '7':
+		/* DEC save cursor position */
+		priv->saved_row = priv->out->mode->cursor_row;
+		priv->saved_col = priv->out->mode->cursor_column;
+		break;
+	case '8':
+		/* DEC restore cursor position */
+		priv->out->set_cursor_position(priv->out,
+					       priv->saved_col, priv->saved_row);
+		break;
+	}
 
-	return 1;
+	/* We have consumed ESC + one character following it */
+	return 2;
 }
 
 static void efi_console_add_char(struct efi_console_priv *priv, int c)
-- 
2.47.3



