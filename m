Delivery-date: Sun, 08 Nov 2026 14:42:02 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQ39m-008h2C-05
	for lore@lore.pengutronix.de;
	Sun, 08 Nov 2026 14:42:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3EF4920183A
	for <lore@pengutronix.de>; Sun, 08 Nov 2026 14:42:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VNmMrHuZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794145322;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0H8BzKG3GZajYnYpctv4nQ7fXP0P6MyeUxzyl6TRMJE=;
	b=Wm7+OhkXKGcSnq1Z+J1UcoAJDqK+oAeZl4FN6ek5LBBI5/3l++H6+r8ZhpKdkDaBX7RqcZ
	YzPmnfnU9hrEnWZ1Lr5xSDDcadJ6E3RqPto92FBYUZGUfrdizYBthwFxGY5Sw1lbxA1sB5
	qbG+1GF0+Rr7SmajDixtEJdjpV8UOTr2Abn78BkLJ4qfTi330B5rlW721h6w2fjZDLZkum
	oK5cSLdE8ZCilgVotjF4n4S9AodQtsUj70iM7gjJIHpsrd+3SHDZJzGo+wyIs4gizQATm1
	xpOsBOJOHrBZxSNt+Ql55V3BsC7Vod3KtclXxnRaI7Y1CATBS5xT9AFJfylcag==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VNmMrHuZ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794145322; a=rsa-sha256;
	cv=none;
	b=GfXW+oDMlT92jfAqhrb+d6F9Q2ScDHLXPQ7G3RU2KAuMnU/Fr3gu3OBhf8J7X5FYs88RW0
	WBJV3XAHnRcrwb+iKCmH1Akv6ORmTCmKoXZ4gM0+NtOUuOu/QHCLMpYeGfOAa70qNCR3Df
	Oa/pa901U1cSR2vn46PfMSPy/EFJe2ER6wyolxhiMtxgoQE840Ula4us0nm9OCH3QBCQBq
	dkrZj2WVwx0l0OpF3e1xdU5CpYwfTBPnRqPm9es+VhUGcCBi5lOOpAHjwGktJz+L0s1Tzw
	D66oQP6Eb0Y4rqpz/ErKJZ2xEb/od77n2Du70UnDlrlKgi68F0JLU5hJgud3MA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=0H8BzKG3GZajYnYpctv4nQ7fXP0P6MyeUxzyl6TRMJE=; b=VNmMrHuZ74q8mcB1kDWGaolqvw
	oEbds9zrg6MqyPlKxvJzp5KaYOmD3Kn64TTPvvdVTZtlvMMSc4w3D8PZuUOLFZzYIDeRnmop18QUQ
	PwlxqUEUJpRqImTyfYTly+qrH0V4/pIDDuIRxV4jB/CEYBqOztq+mPw+17wD3hcYE2YwrWaZxohff
	zJABfDU1VYkYGz6xwuHLFFFqwGbLffOPJMjYtxeN1TLsBqHE++RgXISywzJNHjELzuiQ7lPNk09Rd
	zD3M+rDAC0dIDLgN4kn9DDBOGxvyMQJI2yugB/xfKHo6fyzWTGT/LSBDAnpvelmdEg+tXSCR16Hu2
	o03tcHfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ38a-0000000GDpf-1e3P;
	Sun, 08 Nov 2026 13:40:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ38W-0000000GDpJ-3aiv
	for barebox@lists.infradead.org;
	Sun, 08 Nov 2026 13:40:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xQ38T-0003ib-Cn; Sun, 08 Nov 2026 14:40:41 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] input: don't queue keys while the input console isn't stdin
Date: Sun,  8 Nov 2026 14:40:37 +0100
Message-ID: <20261108134040.1324667-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261108_054044_900033_CD10C322 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Applications like bareDOOM take the keyboard over by registering
    their own input notifier and deactivating the input console. The input console
    notifier keeps queueing every key press into its FIFO al [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3EF4920183A
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org]
X-Rspamd-Action: no action
X-Stat-Signature: 77a98ppj1qn8sdt94she1iabi863jsn1

Applications like bareDOOM take the keyboard over by registering their
own input notifier and deactivating the input console. The input console
notifier keeps queueing every key press into its FIFO all the same, so
once the application exits and reactivates the console, the shell
receives the last 32 keys pressed during the game.

Let's only queue keys and start the key repeat while the console is
actually active as stdin.

Tested with DOOM on TinyEMU: the shell prompt stays empty after quitting.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/input/input.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/input/input.c b/drivers/input/input.c
index 5ee63d94d6f4..b77de20ae975 100644
--- a/drivers/input/input.c
+++ b/drivers/input/input.c
@@ -128,7 +128,7 @@ static void input_console_repeat(void *ctx)
 {
 	struct input_console *ic = ctx;
 
-	if (ic->current_key) {
+	if (ic->current_key && (ic->console.f_active & CONSOLE_STDIN)) {
 		kfifo_putc(ic->fifo, ic->current_key);
 		poller_call_async(&ic->poller, 40 * MSECOND,
 				  input_console_repeat, ic);
@@ -196,6 +196,9 @@ static void input_console_notify(struct input_notifier *in,
 	pr_debug("map %02x KEY: 0x%04x code: %d\n", modstate, ascii, ev->code);
 
 	if (ev->value) {
+		if (!(ic->console.f_active & CONSOLE_STDIN))
+			return;
+
 		kfifo_putc(ic->fifo, ascii);
 		ic->current_key = ascii;
 		poller_call_async(&ic->poller, 400 * MSECOND,
-- 
2.47.3



