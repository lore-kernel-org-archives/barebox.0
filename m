Delivery-date: Thu, 02 Apr 2026 09:22:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNN-007ljB-2m
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:22:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8CNN-0008Vh-83
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:22:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mIrU6sQza4R/MxUtsEZIGohS9UjILpqp6wkF3vOu6Tk=; b=EKFnqnzrYrM+8axkRd6YYvXaMu
	qWy5EAgdVR4XG49kuDYrP5PNqJgCrfqnf5fv6sfPHundZQ68kFQwO+qc0Pr7PaoLRU5cafYGdTcaE
	bWB96qxMo3BLIYvo+pxSpggUCU2fzszuzejJICR4xpCu6wWTQJsfvs6wHGpGvGWYX2zzlEEU0oeil
	M7mwanfhTYEPbmeGN+Mtulk5XhYks73TnGN9oyJG6Wz8L9hFZvLu02CtF65iAm81oG/pF1RlDLrFf
	Lux+4ojBJbNIilJJBh6V5wINzfpt635KL5KV8icLoiGXKmKPp85AroOU/XoI6fGqcSto8uVeXMEP/
	5tZpSQQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMq-0000000H2Hv-3jnJ;
	Thu, 02 Apr 2026 07:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8CMl-0000000H2FS-1ky5
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:21:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-0008Db-OS; Thu, 02 Apr 2026 09:21:21 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-003Kwe-1e;
	Thu, 02 Apr 2026 09:21:21 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8CMj-00000003PEH-1ns0;
	Thu, 02 Apr 2026 09:21:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 09:21:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-tftp-buffer-overflows-v1-1-0a18aa8ea19e@pengutronix.de>
References: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
In-Reply-To: <20260402-net-tftp-buffer-overflows-v1-0-0a18aa8ea19e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775114481; l=2906;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=1lxZjBQ/E12iS+rK0EBNHT9tkuxQslJGgOnxH/0G3WQ=;
 b=9+QpiXVHzUg36wMtyrKGJnu8roBejuhjy+AKO+YlDFute4CMjoiF2DenLcjl3GSW76iCL8VHh
 AFKD0Ud1GnCDBwI4knWszetbpnjqWod+0PY6ezBfRtcf39VRMqukQ4p
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_002123_600156_6611492B 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] fs: tftp: prevent packet buffer overflow from long
 filenames
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

tftp_send() constructs RRQ/WRQ packets by sprintf'ing the filename and
TFTP options directly into the packet buffer with no bounds checking.
The packet buffer is PKTSIZE (1536) bytes with 42 bytes of headers,
leaving 1494 bytes of UDP payload. A filename longer than ~1418 bytes
overflows the packet buffer, corrupting adjacent heap memory.

Replace sprintf with snprintf, tracking available buffer space and
returning -ENAMETOOLONG if the packet would exceed the buffer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 fs/tftp.c | 36 +++++++++++++++++++++++++++++-------
 1 file changed, 29 insertions(+), 7 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index a454306b4b..1b15bc18e7 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -79,6 +79,10 @@
 /* allocate this number of blocks more than needed in the fifo */
 #define TFTP_EXTRA_BLOCKS	2
 
+/* Maximum UDP payload that fits in a PKTSIZE packet buffer */
+#define TFTP_MAX_UDP_PAYLOAD	(PKTSIZE - ETHER_HDR_SIZE - \
+				 sizeof(struct iphdr) - sizeof(struct udphdr))
+
 /* marker for an emtpy 'tftp_cache' */
 #define TFTP_CACHE_NO_ID	(-1)
 
@@ -218,7 +222,9 @@ static int tftp_send(struct file_priv *priv)
 
 	switch (priv->state) {
 	case STATE_RRQ:
-	case STATE_WRQ:
+	case STATE_WRQ: {
+		int room, n;
+
 		if (priv->push || priv->is_getattr)
 			/* atm, windowsize is supported only for RRQ and there
 			   is no need to request a full window when we are
@@ -235,7 +241,9 @@ static int tftp_send(struct file_priv *priv)
 		else
 			*s++ = htons(TFTP_WRQ);
 		pkt = (unsigned char *)s;
-		pkt += sprintf((unsigned char *)pkt,
+		room = TFTP_MAX_UDP_PAYLOAD - (pkt - xp);
+
+		n = snprintf(pkt, room,
 				"%s%c"
 				"octet%c"
 				"timeout%c"
@@ -250,24 +258,38 @@ static int tftp_send(struct file_priv *priv)
 				/* use only a minimal blksize for getattr
 				   operations, */
 				priv->is_getattr ? TFTP_BLOCK_SIZE : TFTP_MTU_SIZE);
-		pkt++;
+		if (n >= room)
+			return -ENAMETOOLONG;
+		pkt += n + 1;
+		room -= n + 1;
 
-		if (!priv->push)
+		if (!priv->push) {
 			/* we do not know the filesize in WRQ requests and
 			   'priv->filesize' will always be zero */
-			pkt += sprintf((unsigned char *)pkt,
+			n = snprintf(pkt, room,
 				       "tsize%c%lld%c",
 				       '\0', priv->filesize,
 				       '\0');
+			if (n >= room)
+				return -ENAMETOOLONG;
+			pkt += n;
+			room -= n;
+		}
 
-		if (window_size > 1)
-			pkt += sprintf((unsigned char *)pkt,
+		if (window_size > 1) {
+			n = snprintf(pkt, room,
 				       "windowsize%c%u%c",
 				       '\0', window_size,
 				       '\0');
+			if (n >= room)
+				return -ENAMETOOLONG;
+			pkt += n;
+			room -= n;
+		}
 
 		len = pkt - xp;
 		break;
+	}
 
 	case STATE_RDATA:
 		xp = pkt;

-- 
2.47.3



