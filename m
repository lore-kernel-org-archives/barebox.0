Delivery-date: Wed, 03 Jan 2024 19:36:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66H-002OBc-0f
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL668-0007Xk-V0
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Dqyze8ZnrVt/kbwk8l0WPCvcftBBPKU5mITNnFNVHZU=; b=Aw6wpWaFmMjQD62PIywl6HB/Xz
	pIaMEPaDP75KNnMP9Zy1twNpCUTByCgLAoLEH5+dnLIn1RmUQkvv91cXMRihrSykn6H1Gg25pjoJN
	Bn22J7pB02xwbuUaMggfrZfq23xs+KLpGYgkbD7NlKykXLMbd91wFGol9ljYIwsbF5N8QCJEi3xCM
	rPrgQsVDU6V+rMFs7OYCpaTxpOLUEeVaQq8cniL4iUCIC7wAFM9vVRWCybd1JPJ89iKFVz1XvlGf7
	Wxpy4BotpnCnUVEMCc3Q1/3xHrDbIBL3hJiAkdYLu3LTIJZ1jcs05XixbflQ/qRlNaoz6GdYA+vQq
	a93OBRVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL64S-00Bl5b-1O;
	Wed, 03 Jan 2024 18:34:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61M-00BhQH-1N
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Dqyze8ZnrVt/kbwk8l0WPCvcftBBPKU5mITNnFNVHZU=; b=gsF7bGUkHl5rJK+dPEwM62NOlG
	rGt05uv65cawUyCxIpv3eD0qcMto7v/JywtdE2sQK8GKl3CeosKmd1fAk8xKO0V/KHJM7hsERsa4l
	AxI2dZeqP0ekeEge5OOdJv6JRQPQ7/G6Pm/cwFOdgOysAWFSv4yFuGZzsRhnhmhgGjeQQ/55W46rM
	RdvosXV7jy3e857bDMnF/WazaFwT3/ALsOQ54nBj8DglJ1Gj323wE9aLzvqnCK/H0DlGx7fVZetIG
	ISwat6bh7Wu9XymsAGBG9DObiPSUG+8idxOJ9U1wCsJ4CKE+I0I+ydJv+ZAeBMwvsU8s5sGrTM7nn
	wplhd26w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61D-00DIlu-HS
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Vg-Ud; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000Auj-Hz; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0n;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:33 +0100
Message-Id: <20240103181312.409668-74-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183110_001173_F78B882D 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 073/112] efi-stdio: wait for extended input key event when using extended input
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extended input protocol support was added to deal with EFI firmwares that
don't report control characters rendering utilities like barebox edit
unusable.

The extended input support comes with its own event for use with the
wait_for_event boot service, which we should use instead of the
non-extended variant in case we are going to read the key with the
extended protocol.

Fixes: 438f80e98658 ("serial: efi-stdio: Add simple_text_input_ex_protocol backend")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index d31de5f53796..235d67a303ed 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -79,17 +79,23 @@ static int xlate_keypress(struct efi_input_key *k)
 	return k->unicode_char & 0xff;
 }
 
-static int efi_read_key(struct efi_console_priv *priv, bool wait)
+static void efi_wait_single_event(void *event)
 {
 	unsigned long index;
+
+	/* wait until key is pressed */
+	BS->wait_for_event(1, &event, &index);
+}
+
+static int efi_read_key(struct efi_console_priv *priv, bool wait)
+{
 	efi_status_t efiret;
 	struct efi_key_data kd;
 
-	/* wait until key is pressed */
-	if (wait)
-		BS->wait_for_event(1, &priv->in->wait_for_key, &index);
-
 	if (priv->inex) {
+		if (wait)
+			efi_wait_single_event(priv->inex->wait_for_key_ex);
+
 		efiret = priv->inex->read_key_stroke_ex(priv->inex, &kd);
 
 		if (efiret == EFI_NOT_READY)
@@ -118,6 +124,9 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
 		}
 	}
 
+	if (wait)
+		efi_wait_single_event(priv->in->wait_for_key);
+
 	efiret = priv->in->read_key_stroke(priv->in, &kd.key);
 
 	if (EFI_ERROR(efiret))
-- 
2.39.2



