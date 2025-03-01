Delivery-date: Sat, 01 Mar 2025 17:37:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqF-008Ym3-1i
	for lore@lore.pengutronix.de;
	Sat, 01 Mar 2025 17:37:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1toPqE-0005GD-Dp
	for lore@pengutronix.de; Sat, 01 Mar 2025 17:37:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4lnv2amhkXrp2yQDqc9XEL1V7A4LnwDAJRWLfCYyMiA=; b=ttVOwuJUDTHQg3LxPGpyiNYOBI
	bmhboKFG7nplQKazeZ9hobLUpfh0LB7FHFfqGk9qw/JB1rb/T0K8YMKO3rzy5/QjK3R+RMGCewKUm
	11V/vJo+ASV2r01iuMLru9MmOSgPtYgTKeke4NP1xLhr7tfFASMBDzzVeyghG1uwZxZCO2CELUi7V
	oxC0/cY+Mmns6cTGyAFK9jp86/w6pRo54uSGRuwuFJdxFgl2KUjnHaJ9zbdwtuud/liyvbjAtOruy
	GsL/UMC9ti1ZDsJUHVqw2PLDpl+Y3vkisH9B29G8cXTQcpXGxHn3AivcK3tjPa1Oq99ALImeUwf6g
	HGwcEE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpU-0000000EdE3-40r9;
	Sat, 01 Mar 2025 16:36:44 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toPpR-0000000EdCH-1eMU
	for barebox@lists.infradead.org;
	Sat, 01 Mar 2025 16:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1740846997;
	bh=wdu0OZGeS22rnZWJo5tC09fkakyYeVHrJ12o8iBsZUM=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=OT+crrCW6Zerwy6pbnVkoQpy4xsgd1yDRd0gxJCEp2p8HtYQ6JfHzZNyldxj8FCpG
	 D+x0M2qMf/GuvvBPAv5kqPjWIGUnNSklTSquJBbgJERozmn58jt9MkKOIqYb0wqRPK
	 eVSTqUSln24xxSxd4InnppMGIlbQccaSvNJtg7yF0ivPGjJhp6EwJ912FzhpVxoJ8g
	 VvaA/F1YTgv9z10PqFaGX471SiwKuZx7jnMAdFZZ2SykG+ylSPudQiUTHENavKnRPI
	 1hUHbajDkQWhcemfIKRVbnTkEjm6cKzkDT3l2lJBfEmHzWGlRgBibcDCqvtPHmaajM
	 jSsZnaURAjsvg==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id BA26DFAD482; Sat,  1 Mar 2025 17:36:37 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Date: Sat,  1 Mar 2025 17:36:20 +0100
Message-ID: <9be5d6592f1b13446808b9cf17a699a048db1069.1740846737.git.uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1740846737.git.uwe@kleine-koenig.org>
References: <cover.1740846737.git.uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=669; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=wdu0OZGeS22rnZWJo5tC09fkakyYeVHrJ12o8iBsZUM=; b=owGbwMvMwMXY3/A7olbonx/jabUkhvTD5u3eqyut37VeMjvmvzGDv+mnvuWyRrvmK5Xas803T tWp9+TqZDRmYWDkYpAVU2Sxb1yTaVUlF9m59t9lmEGsTCBTGLg4BWAiys3sf8UeMavb9/ZmrxP6 9nvqlqcNYruyfonMETpzrXHL1bbUKT1xHoxdn1mXLnxgY5AZeqW/5v3q+iaT9lnRn3+frpE69ry iWTPVZK9DmAT30zcFPg6KhT/nyVfxXpzOF8b+JH+2ydKpGl9DXvVUL7254OcB5qoOg2+ZFn8nqd V08abJ6AfvCNT4cK0sZ5K2rL3n08qJXnnXuZpbeqI67012cE0Lq1+4t/xR6HzhHQcmMZtlL3kr5 v1gZtg85yO13jIv7v65W3X7xPrX+9sVJWQ3zjUUa2fnEu++JZe313Sbxf+lwSIf9SvEpxkpZ4su s/GIEL68I8Fl7YyGljdVWf1bnPYJnipTvcrJtcHAlGchAA==
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_083641_572258_CACA2323 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] arm64: rockchip: Enable rk-usb-loader in rockchip_v8_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rk-usb-loader is the tool advertised in the rockchip documentation to
bootstrap a machine. So enable it in the defconfig.

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 arch/arm/configs/rockchip_v8_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 941625394ccf..f1f418872385 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -157,3 +157,4 @@ CONFIG_FS_BPKFS=y
 CONFIG_FS_UIMAGEFS=y
 CONFIG_LZO_DECOMPRESS=y
 # CONFIG_MISSING_FIRMWARE_ERROR is not set
+CONFIG_RK_USB_LOADER=y
-- 
2.47.1



