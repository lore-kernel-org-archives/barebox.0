Delivery-date: Thu, 02 Apr 2026 09:00:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2a-007lDJ-22
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:00:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2Z-00042U-W8
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:00:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=23DmFtU4HgwiCo7pMUmAwaofuVP19IyzJsZKaboxF24=; b=H/QAHE6a9CyS7tYktwJBA+OhMS
	Xnx3got0Lj6zNvYp6ZOQxgwuASI1mvqpg7tuYdSwAxZPKxqfSzVpZ7JSV31ziv/1MBmyoHVHDEJMd
	YfBE01GRZjk9FzX+QYZvsFhjZh+//rE8nQF18yxxeLmeaoIkWaqqNK8GsoyPnHrkLjHnrZ2mfGCyK
	SvDwqqdcTQKG2m2xIGXvzNOzdWChNPdMJX1DqD7zL82LL1qAQctuzZvw4i+fWo0EgUTfpJnlI0jJg
	3c4r13P4hVs3q3nh3XoeX0VRT808ISQPzvXJq3a76XzPX8VrGgQ7uMhB+uPhwp9Tmkh7wE3JBLWkQ
	AUgisbVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C28-0000000Gy38-1PCc;
	Thu, 02 Apr 2026 07:00:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C24-0000000Gy0H-182d
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:00:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-0003ok-Nv; Thu, 02 Apr 2026 08:59:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-003Ked-1k;
	Thu, 02 Apr 2026 08:59:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-00000003O7L-1zgj;
	Thu, 02 Apr 2026 08:59:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:59:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dhcp-buffer-overflows-v2-1-fe4ca7c4b718@pengutronix.de>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775113198; l=3331;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3ASKIVJtz0KoFTRzJMfNBed68zCGWmAUoLZkBsZRpw8=;
 b=9b1MatYdwd49OxwScfITWCiUXnCYNVjsNGk9Zh0S8ylEPdyMkDeZDdJ/0rehIzBFRdw25Igje
 Buq0ncd2A/xBDgDZzWtFJ5ek04kpSR/nXKs7zhtXPcOP5TomsOasgtT
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_000000_338661_5CB29ADA 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH v2 1/3] net: dhcp: add bounds checking to DHCP option
 parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dhcp_message_type() walks DHCP options with no end-of-buffer check. A
malicious DHCP server can craft a packet without a 0xff terminator or
with large option length fields, causing reads past the packet buffer
boundary.

Similarly, dhcp_options_process() computes its end bound from fixed
struct sizes rather than the actual received packet length, which could
parse past the real packet data.

Fix both functions by passing the actual packet length and computing
proper bounds. Validate that option type and length bytes are within
bounds before reading them, and that the option data region doesn't
extend past the packet.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dhcp.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index e25b64842d..1cb3fef5d7 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -318,30 +318,39 @@ static void dhcp_options_handle(unsigned char option, void *popt,
 	}
 }
 
-static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
+static void dhcp_options_process(unsigned char *popt, struct bootp *bp,
+				 unsigned int len)
 {
-	unsigned char *end = popt + sizeof(*bp) + OPT_SIZE;
+	unsigned char *end = (unsigned char *)bp + len;
 	int oplen;
 	unsigned char option;
 
-	while (popt < end && *popt != 0xff) {
+	while (popt + 1 < end && *popt != 0xff) {
 		oplen = *(popt + 1);
 		option = *popt;
 
+		if (popt + 2 + oplen > end)
+			break;
+
 		dhcp_options_handle(option, popt + 2, oplen, bp);
 
 		popt += oplen + 2;	/* Process next option */
 	}
 }
 
-static int dhcp_message_type(unsigned char *popt)
+static int dhcp_message_type(unsigned char *popt, unsigned int len)
 {
+	unsigned char *end = popt + len;
+
+	if (len < 4)
+		return -1;
+
 	if (net_read_uint32((uint32_t *)popt) != htonl(BOOTP_VENDOR_MAGIC))
 		return -1;
 
 	popt += 4;
-	while (*popt != 0xff) {
-		if (*popt == 53)	/* DHCP Message Type */
+	while (popt + 1 < end && *popt != 0xff) {
+		if (*popt == 53 && popt + 2 < end)
 			return *(popt + 2);
 		popt += *(popt + 1) + 2;	/* Scan through all options */
 	}
@@ -415,7 +424,7 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 		dhcp_state = REQUESTING;
 
 		if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
-			dhcp_options_process((u8 *)&bp->bp_vend[4], bp);
+			dhcp_options_process((u8 *)&bp->bp_vend[4], bp, len);
 
 		bootp_copy_net_params(bp); /* Store net params from reply */
 
@@ -426,9 +435,10 @@ static void dhcp_handler(void *ctx, char *packet, unsigned int len)
 	case REQUESTING:
 		debug("%s: State REQUESTING\n", __func__);
 
-		if (dhcp_message_type((u8 *)bp->bp_vend) == DHCP_ACK ) {
+		if (dhcp_message_type((u8 *)bp->bp_vend,
+				      len - offsetof(struct bootp, bp_vend)) == DHCP_ACK) {
 			if (net_read_uint32(&bp->bp_vend[0]) == htonl(BOOTP_VENDOR_MAGIC))
-				dhcp_options_process(&bp->bp_vend[4], bp);
+				dhcp_options_process(&bp->bp_vend[4], bp, len);
 			bootp_copy_net_params(bp); /* Store net params from reply */
 			dhcp_state = BOUND;
 			dev_info(&dhcp_edev->dev, "DHCP client bound to address %pI4\n", &dhcp_result->ip);

-- 
2.47.3



