Delivery-date: Wed, 07 Oct 2026 16:58:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xET6Q-00AyNg-0D
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 16:58:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 90AF22023AF
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 16:58:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sablIx18;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L7dCltfR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791385121; a=rsa-sha256;
	cv=pass;
	b=VDUubxBViFAiNTsSYn4/FDiPSEG7XPy2uiIfzgzUXHbw1vfaWCfzKGwFj71bCb1AP9ySSW
	To8iNnJVFV/zG9ce9+DcxOUJqedlv5cuiX1Cl/qkVWUD1u3rQMHFe7UMP/YG2pQ391nLNW
	gCCaRlxEDQPc5Sh+SoahaORVL1hzA7PEx6AqX8xzzCrJVRaVSwz9KcjKUzhh5hPgv8uASZ
	5AcfhaZne8wVa5D2T/kDSovxXG6hy/doAzYmqMiqp7BygPaDYnDUH8PFQ/IxV+cbcvbyus
	a95M6Mopjbt4owElxZDkB/m8FyjnMFwkh3x3PGMas2zJDrYvN8EErVdwDGSTXA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sablIx18;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=L7dCltfR;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385121;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=wZCf+07/KI8moDf8pjl9z/4I8X4OeRzERYpAkY38Hm0=;
	b=XvpGXUnsPEeLIbIvQHJZ/FFwjp4LdzFuxrjnkgGlJaTFwo872IVBp97GtBlN+98kah1hCQ
	9ef4U+pSBJoiqvKJ9TvqkZACxYPUWGaOxed3R+5D1mhVlVNcqyLYcKIYHRT4qq0/XEqebg
	MYafQGLZQozvRFbWhiuxU7I4ue3XGE8OAS/rpfLtJiYcUlkmHHOmyiEnBRQB8Zr7EgkO2+
	lwW57DtkRIGc7qHgyh407PzLz7fFQFC4mToFivF5j4SwO9NugPY17jH38tBsEY/GQ7TCmu
	UsAdPtgmq0MFwGebLypICvhxDCtFAnkPjLocS/PBl4itcQeAOtd09bHeJEzVpg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wZCf+07/KI8moDf8pjl9z/4I8X4OeRzERYpAkY38Hm0=; b=sablIx18+d8m3RHoIyxlOPO8/9
	lxrQYq6EDqNfdX0QYuhYg6iC+uwXS3xMgg/Rd1PD3EENLf6AVnSeKBTcuZcHcmBG63j2/fU3S+ohs
	mBskwU+MFd1MUTiWfJZgbuQ0FwRLfpUNOGlPek38+irrK5NCXu6KWoO0oiMK1roFcFC0xS1BCFK3a
	xtsv/Ne5swj+VpME0Zv955pSb8LByBFVMBS4xbrLcgaLnmvI3wYpllL8TaI+a2bRVNclQJoL6gKlE
	PsVBcTG6ddVIIj1zjZ593cpM+cTKa9v9E0zt065+msZ/13TVIpUQbPJhlSEXaGYOcoH4kFDjkyRvb
	ExXs8BdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET57-00000002f2x-3thH;
	Wed, 07 Oct 2026 14:57:21 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET54-00000002f1w-1C0b
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 14:57:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E15942023B1;
	Wed, 07 Oct 2026 16:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wZCf+07/KI8moDf8pjl9z/4I8X4OeRzERYpAkY38Hm0=;
	b=L7dCltfRUGO/Ti7CR+kYJsJX4uUauMdb11oTReRZ2JBWPuJ7VV1Zh315GEOB4zy1CQHr2n
	P7pnyXCY6ZHXnnf+LHd+WbO+WbzdYQV1xMIvYgFPbNECrhDarPERv2xCPrGKjAeYrucznm
	mPoCJnhg7sm7KxbwwoJnXnBLjVE9D/x6HdmX3PNWnrrgPDU+OQs4lsfCT1ckwgKit1RzKj
	FpkuqAZqewMg8S7N5KjtwWU4GhC7ExHPUgkkFtEetnF2sa0fJh+kZW6zTjK9fRjgx2KYw7
	2MJoV4mDJATJHtDi7+FobRrlZ4TKn4MWFDsMoqs1xiOSnNgp+R18x4RF8gH7Yg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791385035; a=rsa-sha256;
	cv=none;
	b=D4ZaS6dDyFk00kNuo7/gPczcn7ImQImjVGnFxx8OavJtFgxSUrkx6yA61M690878gIf3DS
	0NiOFXxBjRMN4LHzOevqJGBwwtba3ONdGgkCfIuiPB6lV0RAGMhwEmRoz3uU66jt8Q5iqr
	ZzsE8gSB0NuYT2A98vwR/GfGmVyfRKWM4ZwuwNQrQvJIJwW22a+hFYR/SOiy1Ov8nme69L
	QHXvupMfyHY9dyRlOoMue68YwrP+xd4uP8fvWFGZGk8iG/LEs0zqYme+5A5fAjPYAURYCN
	WtqFzLgiHu4JUKkkXVGPBqP3AUhkwUBSfcCMiMSRBNu+0IDrf8AR8KEfJSbXiw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wZCf+07/KI8moDf8pjl9z/4I8X4OeRzERYpAkY38Hm0=;
	b=RYSxMaRYE4UzJ4Y+FTPgfnoAnnVFFRlvVnf0DFNnTnrHjge4T1YkKbGNHzOJWHYkReqxdR
	a+TPwTosXuyOQpxz3l3UYSzjAjx2MJDXmNGoPUoNqNhKUyPGZQH+sX26nqP5NW3VoEg9Fy
	9XAEDZMLWG5bi2piAln5bHQo6YppE4dR+VJahD7fG8NO4uk0BgaCn6hXoxKqkhrAQOI3na
	21/t8tegeJZDhaeazyIezUM9eSB6Fjkk0wR8aSml20jW0iRCEFqgFdeuV7/tewQVsp62W3
	fakpHHu/saVa78HhgjL5FLgMHP9j/LScdAzlSN1Vb8ghb7z2U15IsujU8wWpyg==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xET51-004jZX-2c;
	Wed, 07 Oct 2026 16:57:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 16:57:16 +0200
Subject: [PATCH 2/2] arm: socfpga: axe5-eagle: drop hard-coded PHY reset in
 board code
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-gpiolib-v1-2-a2911b434fc0@pengutronix.de>
References: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_075718_502647_40CBD8AF 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Since GPIOLIB is now enabled for Agilex 5, the Ethernet driver
    resets the Ethernet phy via the GPIO. Remove the hard-coded reset code from
    the Arrow AXE5 board code. Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
    --- arch/arm/boards/arrow-axe5-eagle/board.c | 24 1 file changed, 24 deletions(-)
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 90AF22023AF
X-Stat-Signature: w5syybjbxpd7dnj66gzx38drzj4w74kk

Since GPIOLIB is now enabled for Agilex 5, the Ethernet driver resets
the Ethernet phy via the GPIO.

Remove the hard-coded reset code from the Arrow AXE5 board code.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/board.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/board.c b/arch/arm/boards/arrow-axe5-eagle/board.c
index b197367f45e4..1ce48385f80d 100644
--- a/arch/arm/boards/arrow-axe5-eagle/board.c
+++ b/arch/arm/boards/arrow-axe5-eagle/board.c
@@ -3,33 +3,9 @@
 #include <init.h>
 #include <io.h>
 #include <bbu.h>
-#include <mach/socfpga/soc64-regs.h>
-
-static void axe5_ethernet_phy_reset(void)
-{
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x224);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x228);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x23c);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x234);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x248);
-	writel(0x14, SOCFPGA_PINMUX_ADDRESS + 0x24c);
-
-	writel(0x410, 0x10c03304);
-	writel(0x410, 0x10c03300);
-	/*
-	 * reset the phy via GPIO10. We currently haven't got enough space
-	 * to enable the gpio driver in barebox.
-	 */
-	writel(0x000, 0x10c03300);
-	/* FIXME:  can this be decreased? */
-	mdelay(1000);
-	writel(0x410, 0x10c03300);
-}
 
 static int axe5_probe(struct device *dev)
 {
-	axe5_ethernet_phy_reset();
-
 	return 0;
 }
 

-- 
2.47.3



