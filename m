Delivery-date: Fri, 06 Nov 2026 12:15:09 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPHuX-007zHw-1Y
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 12:15:09 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 62DCB202BB9
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 12:15:09 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yn/kunAw";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=V3u4vDrF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963709;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ewnioN6DyYxa5wWu22tMUBZeunu6VWTsQwyVdyJAYw8=;
	b=BQWriyzq7h4DIkWu7ptfSczsot9MNH7TPszOMiZNrXNGeqd7NolObIO/weNIbbv4EKlQZR
	xg4OZ/9YnG0c/sbePFvb6ThCuktgx0Cj4LgUntQaFeNpu3UaSYsQ2lt8w3k4P6sroFHq2I
	tFTICEJCNRU9xh+MWYGvkqU+XeE4rfbxVhh+0BB4g8VVm7tXy59BwOLxxCnydx5OC78gyJ
	pHKVHa/5RkX2z0fJirJW/qulvDVTRYLcjh1gX21gquLMF6TeXi9lkVdJjp8bnvTJyccXLn
	8MrXklGxTJfbR2XhblOgMvdJKXnga15rF/AgDCKNyI3PuJ/8vm6eNRpzvf+VGQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yn/kunAw";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=V3u4vDrF;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793963709; a=rsa-sha256;
	cv=pass;
	b=bTz5B9cnhNkpcC6kVlA+4NCgGEKIy/32X8+AbnV19x79u1FlKMv2JDZ7gD6pRmfy56DSMT
	K99G1C5jNB1v/8GaOfI072ltrw+AxVtNWSPAuLj40XU92CBQzu+HisTyWCw2ZzOV0bnjz4
	Ix5SsQ2xNW4BIgHlh5AdVCKlCo5OLiQ8i9Y8mYWSR0UtJvaLcKFRWkd1Fw/Y4L9MQyW0ZY
	E2DIrf6FSDu8bYZkOw1oVv2TDO390CIDZUjP8z44QBkQAScQqCk7Jd7TgbAXKggrKzfC1t
	WEFaDwXhuAU8SnzQ3QKT6w4aScYnzNcO+CNurqtBPP0TNFLrJQj9XKo9HzD2Rw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ewnioN6DyYxa5wWu22tMUBZeunu6VWTsQwyVdyJAYw8=; b=yn/kunAwBiDmVcsAwoAWEmCu6X
	0TWoEgAKRJwViDWD46AxhIFgzNKWsFvse/3aB1Umcsg9qv6cSICIf7SZfobn7LQX4VVR3dabHfK7/
	tC1ewn916ysL+nzwDGnvWR8t5xCr6cLQ6BteLTrp6QtXz7K6ffmiEvY3utHPZYO+GgFkxrcQaXnzD
	uvRLFv76d84RrZYxjUun5IcDtTV3AXHY64oPX3Tv4s5DNEg0gfIDJit3PyM5Xv3q/9hHt0CzkCEnH
	TdTBQWUTUyLVLPdu8XgFAnkY92fSWj5qUO/Gy9gZ8za7DIvirw3F4SJ+zLXnKOeopkYjW2MoaTQRd
	WybGMZJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtR-0000000C6nS-2Kid;
	Fri, 06 Nov 2026 11:14:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtN-0000000C6jn-1zHl
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 11:14:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C362720178A;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ewnioN6DyYxa5wWu22tMUBZeunu6VWTsQwyVdyJAYw8=;
	b=V3u4vDrFageZiThSUBaAewpDSp0o/KWJGmZbWkv6KkF9mgGnrR39QubDcaCRWmIv0ziVxz
	KVgyq/+0dgB6DS+15eR6PlFREEVlvMhEgL3JoDBCESuVtFAHj6ffmA2bRoWo7B8lBDbZUB
	oTtzSjc8DaP1ZEBOt/xr3YJBNT4d2QKOuTmL4PZYvP51yLa4TElq6AH3VUaEAHgz29gtQ7
	DFgi3LUsHIvX8gfnrc42Nf+V6BOL63Vw1QNCSRXhhMWmSOOsIOkgvuN2pAB0E5cIs2xmWh
	b/Y4CtgQIXYKv8bA1zd5ccNu7Sa+RiaWtwg5UG4xr67WILI7oYfzPKd9XPkcuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ewnioN6DyYxa5wWu22tMUBZeunu6VWTsQwyVdyJAYw8=;
	b=Xk2XX38fIEiBibHEvqdrRRhWWy1m1xjWOsuLDyHeWPDEv/6xEiFJUybjXIfFGZ1iGgZBhs
	59dcZO89KmJXmjD0Bd78DzjJUrX3Y5SriKJBmlgUoqVKU91iosSetzacl808fHu588lCHc
	pHNsYqg18MHF6qrOxMjR2zaSm5dGgYj8AGttWvIAnmMdfHBsJergQhS5PAwZAor+BQVgOk
	ayPrxGVp5PL5vNJ81lj2dCGQUtHXs7G8ajS3St/UtXWP8/Yf/sKrlkU0j4atyUNr43Y6tL
	c47J1zP329RoAqVYLiVCFOQB3e/pkMiAvgV0a8wrfxKCe6COhztj0SkvkBaVrw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793963633; a=rsa-sha256;
	cv=none;
	b=EQzUvmfDCLVxeh6Rzdb3g8DwlAbY+JomamwC79Ot8C+V/Ue9kPJIUT7m1ycgL2m7o4b2HI
	1BP4r7VjL0UP6ceOGcWGZu72/4pSgCGfpv5deyEUNx1Rpv9NRLVTpIEcZf/rWRQwrUAwdq
	haJWG2h3GEIst9jwACgv01HwhqERGX4ok01FLYqv1WUJ7CkC1J7M0vcU/MuEj1eKNVZei2
	H06PjDrbp1wVC/uB8K1h9QYOT48j2C0g1DzXA5ZAj71VtC5V2DmuiYWT6ctdKIiVo3Lxf7
	L57TQcH950UqIj0xr8rnWp4tEjbX86hRXKh+J/jEaD/CE2EQtq+1v6tFqPtWWQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A7EED7410EE;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/4] ARM: at91: sama5d3: pass BootROM r4 on to barebox proper
Date: Fri,  6 Nov 2026 12:13:47 +0100
Message-ID: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_031358_019076_53D30309 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The SAMA5D3 xload
    entry points pass a literal 0 instead of the BootROM's r4 to sama5d3_atmci_start_image().
    This leads to wrong $bootsource computation. Fix this by passing r4 through.
    Tested on a SAMA5D3 Xplained booting from SD. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: 62DCB202BB9
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: qzq8imxj3dijjwqw3iirijx848ghcxix

From: Ahmad Fatoum <a.fatoum@barebox.org>

The SAMA5D3 xload entry points pass a literal 0 instead of the BootROM's
r4 to sama5d3_atmci_start_image(). This leads to wrong $bootsource
computation.

Fix this by passing r4 through. Tested on a SAMA5D3 Xplained booting
from SD.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c | 2 +-
 arch/arm/boards/microchip-sama5d3-eds/lowlevel.c | 2 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c      | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index aa2161daeef0..e59578987ba2 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -44,7 +44,7 @@ SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_ung8071_xload_mmc, r4)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
-	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
+	sama5d3_atmci_start_image(r4, MASTER_CLOCK, 0);
 }
 
 extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
diff --git a/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
index 79346a9b6ac1..b05824c7d1b0 100644
--- a/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
+++ b/arch/arm/boards/microchip-sama5d3-eds/lowlevel.c
@@ -44,7 +44,7 @@ SAMA5D3_ENTRY_FUNCTION(start_microchip_sama5d3_eds_xload_mmc, r4)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		dbgu_init();
 
-	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
+	sama5d3_atmci_start_image(r4, MASTER_CLOCK, 0);
 }
 
 extern char __dtb_z_at91_microchip_sama5d3_eds_start[];
diff --git a/arch/arm/boards/sama5d3_xplained/lowlevel.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
index 2a0fed1141de..c7578e6db18c 100644
--- a/arch/arm/boards/sama5d3_xplained/lowlevel.c
+++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
@@ -45,7 +45,7 @@ SAMA5D3_ENTRY_FUNCTION(start_sama5d3_xplained_xload_mmc, r4)
 	sama5d3_udelay_init(MASTER_CLOCK);
 	sama5d3_xplained_ddrconf();
 
-	sama5d3_atmci_start_image(0, MASTER_CLOCK, 0);
+	sama5d3_atmci_start_image(r4, MASTER_CLOCK, 0);
 }
 
 extern char __dtb_z_at91_sama5d3_xplained_start[];
-- 
2.47.3



