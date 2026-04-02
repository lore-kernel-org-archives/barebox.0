Delivery-date: Thu, 02 Apr 2026 09:00:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2b-007lDe-0k
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:00:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2a-00042X-Lx
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:00:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWiCdjlaWpJFsrk5Syy9OK6gIFsMW82TY/H28GM3OvE=; b=Z5ZyAxWVcyYZdDh9oxNyG2n7E1
	qaXwgihhu+ZSGVK0kI2hIY9OOj18Y0G7A7CZ2iYTczbLpDyXAbp5QIg0cUjPQs5bn1IbseSx+E+pA
	b3rZBw0CMe+RsC24DL0WnKE4heVNomj9CjbBPVBXmmjjmkF9e/jX2SoN64ljDEiHHgeEsKIiSKNw7
	YrpRN7baMqQIiPIyf7sN93KrPokC8o4GxkdWDe5+TsWGadxm3l1z6wZaesdf0y8vXm9X1+nTJcDFv
	OFdb2EPLhlMZbct7JkDYXyiyCM66+vi+lZvYzbVW1w2LMDXwfi0jYY/j5nQmz+eLqY3UFACOYkO4l
	QSVFZwxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C2E-0000000Gy7P-0NTx;
	Thu, 02 Apr 2026 07:00:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C2C-0000000Gy5S-0low
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:00:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-0003ol-Oe; Thu, 02 Apr 2026 08:59:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-003Kef-1o;
	Thu, 02 Apr 2026 08:59:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-00000003O7L-21vN;
	Thu, 02 Apr 2026 08:59:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:59:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dhcp-buffer-overflows-v2-3-fe4ca7c4b718@pengutronix.de>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775113198; l=1084;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WT5PP4JpEeGOb81uDXm3uKSzyGFCMl73mwjL8xMWlWc=;
 b=7NwP38UxzYoU2VWw9pK+9CEkj2XiykJfnk5G1+5FFmckCCQo6wMINSw/TLMvPFEiOOXHzfx5M
 jrl/N+FyKKRBuStz6p1pVCisD5VrOkU7LGh4Fe6FegMjEmwGo8TrwmP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_000008_241913_BD0178CF 
X-CRM114-Status: GOOD (  10.75  )
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
Subject: [PATCH v2 3/3] net: dhcp: cap DHCP option string length to 255
 bytes
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
index f4e4033351..21d48cfcf2 100644
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



