Delivery-date: Thu, 02 Apr 2026 08:57:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzD-007l8x-0x
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzC-000321-He
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=acG9u7mMRCkc14HEV/15AnZL2KPGJ8KcIUlwtH1S5M4=; b=YxjK9nHGRp3evNwDAT46VeG5Hk
	4SqmMISel7R2VEwFvlDywpW9SzeQ7PxoYlsxun1JrOcECjnJUFaKt2bw9LhaatSFS+Tbp1NuxPjXf
	OVxW3aHUUQChVmHsSUGqVVNeQ4nlcNXUAgbtqp4eCFnxrZXi6UPzRxuSd60UIX3slmoR+9A4ps6kH
	Sw5KLKb98fJXqiF8KjIT51cpMPpquOHIKnCwreaXpN6fcYaqUkSNMOa7G+rF3EtN7B2p5RASgyVda
	HodZPLC9yhUks1eT5XIdTGEwKAd8Y848DhkICAwIPZPyzOw3s74Wjn7V//q1ri9mvBxVJygajmSSn
	wvQ78LTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Byl-0000000GxHE-25Lo;
	Thu, 02 Apr 2026 06:56:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Byi-0000000GxFf-0hqs
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:56:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-0002oH-HX; Thu, 02 Apr 2026 08:56:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-003KeE-0w;
	Thu, 02 Apr 2026 08:56:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-00000003Nta-0tEo;
	Thu, 02 Apr 2026 08:56:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:56:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dhcp-buffer-overflows-v1-3-cd60b651a629@pengutronix.de>
References: <20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775112990; l=1084;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DJpb6z2U7NGGbSKS3QGYExbzvkDTktAGjLrvsipYN2A=;
 b=zLgUQrlotwnsYK6QeMHB77lGw8JVKktTNp7aNHAluItOhthcJ4D9ZQQIynK1KCodaX8yYVhFd
 YpWbOWbgFBXBrOP5mmn01Mk/0xomfx6D10cGj3iaz2AJ8tidKRRSpEE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_235632_237028_BBB8E471 
X-CRM114-Status: GOOD (  10.45  )
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
Subject: [PATCH 3/3] net: dhcp: cap DHCP option string length to 255 bytes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dhcp_set_string_options() stores the string length in a u8 field but
uses the full strlen() value for memcpy(). If a user sets a DHCP
option string (hostname, vendor_id, etc.) longer than 255 bytes, the
length field silently truncates while memcpy() copies the full string,
writing past the expected region in the packet buffer.

Cap str_len at 255 to match the maximum DHCP option length defined by
RFC2132, ensuring the length field and memcpy are consistent.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dhcp.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/net/dhcp.c b/net/dhcp.c
index c77dcc41d8..112b68ef4c 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -173,6 +173,10 @@ static int dhcp_set_string_options(int option, const char *str, u8 *e)
 	if (!str_len)
 		return 0;
 
+	/* DHCP option length field is a single byte per RFC2132 */
+	if (str_len > 255)
+		str_len = 255;
+
 	*e++ = option;
 	*e++ = str_len;
 	memcpy(e, str, str_len);

-- 
2.47.3



