Delivery-date: Thu, 02 Apr 2026 09:00:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2X-007lCt-0M
	for lore@lore.pengutronix.de;
	Thu, 02 Apr 2026 09:00:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w8C2W-00040o-I9
	for lore@pengutronix.de; Thu, 02 Apr 2026 09:00:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ww+6JFUzepVr6m4wrRaLiTvoGGd0CM5v1GPIug9A7rM=; b=s0mCcBChdYNGK8dnjy2JvetLVf
	wYIRyGPKAWXssdVMG045AEAJWuzCe3RDECVUdUe+6rw0XuLvyJrf4oBR5el7F9FhujZbQnodqg0mK
	Ca881FVXAz1biX6sR/k/O5ikF90oCgxeIC4R0vaTLpMVgp7MahQF7M7qnHT2cPYKfyvIbtbZPQy3l
	AfjFxhq9MMHq26PJ7cAqR6wKuHFwMtYA+fPkLuWH9eUr1t9WQ+y03Sf1egn4NRS+qd1nk78Vng7/q
	ddusl1dzykDcBR7igTfPQpN2BG+cXEDpdeOu3wrdXm/CaAmnlmf31Go44mHISqp+OLVPaFE/JuvSD
	13VuQsIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C27-0000000Gy2j-37Ue;
	Thu, 02 Apr 2026 07:00:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8C24-0000000Gy0J-16ng
	for barebox@lists.infradead.org;
	Thu, 02 Apr 2026 07:00:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-0003on-PD; Thu, 02 Apr 2026 08:59:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-003Kee-1q;
	Thu, 02 Apr 2026 08:59:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w8C22-00000003O7L-20nl;
	Thu, 02 Apr 2026 08:59:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 02 Apr 2026 08:59:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-net-dhcp-buffer-overflows-v2-2-fe4ca7c4b718@pengutronix.de>
References: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
In-Reply-To: <20260402-net-dhcp-buffer-overflows-v2-0-fe4ca7c4b718@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775113198; l=1258;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=nN+IRHbE6fjHTHOPrRWTSMzILOLKGhB8ad+r9X0vWAs=;
 b=NlD0JPOL1/skuM1ebySoi5Vd0kqxIhhxW2meWq7LHkNqMICdHKxq9cq1fVndGL9+r2117HAlR
 O0dLRI3zL1SDAa3arT/gwKVDPBsxWqyrd1C+Bp+JL1YYLwdYB4ugQpX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_000000_317905_0B07B33D 
X-CRM114-Status: GOOD (  11.44  )
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
Subject: [PATCH v2 2/3] net: dhcp: use xstrndup for bp_file to prevent read
 past field
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootp_copy_net_params() uses strlen() and xstrdup() on bp->bp_file,
which is a fixed 128-byte field in the BOOTP packet. If a DHCP server
sends a packet where all 128 bytes are non-null, strlen() reads past
the field boundary into the options data looking for a null terminator,
and xstrdup() then copies the oversized result.

Use a simple bp->bp_file[0] check for the non-empty test and
xstrndup() bounded by sizeof(bp->bp_file) to ensure we never read
past the field.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 net/dhcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/net/dhcp.c b/net/dhcp.c
index 1cb3fef5d7..f4e4033351 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -158,8 +158,8 @@ static void bootp_copy_net_params(struct bootp *bp)
 	dhcp_result->ip = net_read_ip(&bp->bp_yiaddr);
 	dhcp_result->serverip = net_read_ip(&bp->bp_siaddr);
 
-	if (strlen(bp->bp_file) > 0)
-		dhcp_result->bootfile = xstrdup(bp->bp_file);
+	if (bp->bp_file[0] != '\0')
+		dhcp_result->bootfile = xstrndup(bp->bp_file, sizeof(bp->bp_file));
 }
 
 static int dhcp_set_string_options(int option, const char *str, u8 *e)

-- 
2.47.3



