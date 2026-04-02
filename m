Delivery-date: Thu, 02 Apr 2026 08:57:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzD-007l90-19
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 08:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8BzC-000322-OZ
	for lore@pengutronix.de; Thu, 02 Apr 2026 08:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KAdh+/Hm/PJzidOm88pjjTf6aV8QGRAEijRkiVOauvM=; b=z6mGxE2kE9SEloZ01GIOO3pF0F
	0Srd2U8emY6ugxGwYzlBJlp6hajhKeGmXJe5ZE+IxZAt6nsg8QHtzbo6s90W0gMKqdsgWvCJ5Q4pu
	GPPqPX58QhQYfwAHCBXyoUjPqaVJTSQjTVTyMjn1iMMNSds8ghaXsbrfDR2MJSUqD/rKCY1EckdUH
	7f9scMA2K9rCI/NEaBj2alxF0ITGKrkGWjXE368uqrPr45UKxUaCwvjoeZ3LJ7bmpSvw3kUX0Hiie
	66XZ5BQR4Ex0wm0UQ2SIe6SFznV0sOcQKzFqEaiRN/IjE/GiCeXxdpFTsB3d2aVKKK2E9HTGG1uQ8
	6CdsM61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Bym-0000000GxHf-18k7;
	Thu, 02 Apr 2026 06:56:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Byi-0000000GxFg-0i55
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 06:56:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-0002oI-HW; Thu, 02 Apr 2026 08:56:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-003KeD-0y;
	Thu, 02 Apr 2026 08:56:30 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8Byg-00000003Nta-0sGz;
	Thu, 02 Apr 2026 08:56:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:56:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dhcp-buffer-overflows-v1-2-cd60b651a629@pengutronix.de>
References: <20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v1-0-cd60b651a629@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775112990; l=1237;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TYzDWGpSC4oocqpFTdmWyw9xBFjgpKqfFbxoohXsEMg=;
 b=Zb+vAU2ye7EO1cki8Udv8nuD3dYFZ017tjwJLgUJFOekcxTCSZWofhJNyB6KMHpOBREhcMbuO
 bwhjqzfL3TEDlL8JN8G3kYiJa/McJE5AJJjAhXRuCl8pA/819tQZKQ5
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_235632_238007_35A5694D 
X-CRM114-Status: GOOD (  11.34  )
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
Subject: [PATCH 2/3] net: dhcp: use strnlen/xstrndup for bp_file to prevent
 read past field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootp_copy_net_params() uses strlen() and xstrdup() on bp->bp_file,
which is a fixed 128-byte field in the BOOTP packet. If a DHCP server
sends a packet where all 128 bytes are non-null, strlen() reads past
the field boundary into the options data looking for a null terminator,
and xstrdup() then copies the oversized result.

Use strnlen() and xstrndup() bounded by sizeof(bp->bp_file) to ensure
we never read past the field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dhcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 1cb3fef5d7..c77dcc41d8 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -158,8 +158,8 @@ static void bootp_copy_net_params(struct bootp *bp)
 	dhcp_result->ip = net_read_ip(&bp->bp_yiaddr);
 	dhcp_result->serverip = net_read_ip(&bp->bp_siaddr);
 
-	if (strlen(bp->bp_file) > 0)
-		dhcp_result->bootfile = xstrdup(bp->bp_file);
+	if (strnlen(bp->bp_file, sizeof(bp->bp_file)) > 0)
+		dhcp_result->bootfile = xstrndup(bp->bp_file, sizeof(bp->bp_file));
 }
 
 static int dhcp_set_string_options(int option, const char *str, u8 *e)

-- 
2.47.3



