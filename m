Delivery-date: Sat, 02 May 2026 13:36:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJ8eU-000AY8-1F
	for lore@lore.pengutronix.de;
	Sat, 02 May 2026 13:36:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJ8eT-0003KP-4X
	for lore@pengutronix.de; Sat, 02 May 2026 13:36:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HOvg9IdMLeeNSGuWLqS2LgHGN4x3Jr3DZAiQvvcJ9gg=; b=aumYwJtF3LphRKs4ZTX/KXR3eU
	6zVgi68//+5iWu99oIKC3S2kxx9HzxkbnrD+GTO3ev3oYDDdOxcPlvCRVjyQhONgh7+okJ4l8W4it
	TxufVWc3C8Omp9qmcuZkIAVGf+qwEbmiKzmN7IPAeyT9keyb/l7ujej5Ee8NAIfwFZ2EeR+aTasyl
	xHyIz/bX4XWqrUmUVgha1KDj11krb5joYGJTBE8YMiP24ry9w9SrUVMAC/ffJ80W1Ij8f4XG9Ij5k
	pBJjNuPipezovikCRX6yK73Q3qJMu0ARgJojxsxLMONukiL5129EMGFrgwT2aEVkGMhkoY21aiu0j
	cYRrG0ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ8e6-00000008v3L-1HJ2;
	Sat, 02 May 2026 11:36:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ8e3-00000008v2E-2KKs
	for barebox@lists.infradead.org;
	Sat, 02 May 2026 11:36:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJ8e1-00032Z-Nm; Sat, 02 May 2026 13:36:25 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  2 May 2026 13:36:24 +0200
Message-ID: <20260502113624.1832173-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260502_043627_615281_FCB7E240 
X-CRM114-Status: UNSURE (   8.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: 2048: use 16-color ANSI palette
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The 256-color xterm sequences (38;5;n / 48;5;n) require xterm-256color
terminal support. Switch to standard 16-color ANSI SGR codes, which work
on any VT100-compatible terminal and can also be displayed fine by the
barebox framebuffer console.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/2048.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/commands/2048.c b/commands/2048.c
index c8b35bdb7d0a..6d35e03d4889 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -13,17 +13,22 @@ static uint32_t score;
 
 static void getColor(uint16_t value, char *color, size_t length)
 {
-	uint8_t original[] = {8,255,1,255,2,255,3,255,4,255,5,255,6,255,7,255,9,0,10,0,11,0,12,0,13,0,14,0,255,0,255,0};
+	uint8_t original[] = {
+		0,7, 1,7, 2,7, 3,0, 4,7, 5,7, 6,7, 7,0,
+		1,0, 2,0, 3,0, 4,0, 5,0, 6,0, 7,0, 0,7
+	};
 	uint8_t *scheme = original;
 	uint8_t *background = scheme+0;
 	uint8_t *foreground = scheme+1;
+
 	if (value > 0) while (value >>= 1) {
 		if (background+2<scheme+sizeof(original)) {
 			background+=2;
 			foreground+=2;
 		}
 	}
-	snprintf(color,length,"\033[38;5;%d;48;5;%dm",*foreground,*background);
+
+	snprintf(color, length, "\033[%d;%dm", 30 + *foreground, 40 + *background);
 }
 
 static void drawBoard(uint16_t board[SIZE][SIZE])
-- 
2.47.3



