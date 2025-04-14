Delivery-date: Mon, 14 Apr 2025 08:59:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnQ-000XTp-0S
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:59:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DnP-0000kp-Gq
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:59:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kunk2kQauV6473RIPOYGFL6zQ7PGhFGVKAmXsk6a7/0=; b=oWPkF3ZcR2OMHTYp0iVcFi7TPP
	hJJTsjfCKJ7zBvIk9I0BzdRktP5z1r4sJKjNhEThIwVYql2ezuM+obvhnaMAV4l7+qHsp8nUDRueT
	6RICBsf3ZFI0mlzDD0BjOGRiwYqamaS2SQABkLw8Ls9GyZpl0NuLYNpkddBOGyxhYKrEXZZQjrpAJ
	+o4xO1gjKv1n2so3h/paISNY+lXICifXOz7D1XzEPLM2m5MubSf14qzqTQ6vjJ1IAjvdLeQ6Bu2iN
	R5SbL4oAiGIltwGwGSFiEeqs3TznFGlMRroI3UEOZbaZg0tJisNPgqvU35WTpJWaoPHxhm902kGSH
	uUpbow/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dmy-00000000rnt-07Wd;
	Mon, 14 Apr 2025 06:59:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4De1-00000000ql0-3sDT
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:50:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-0006V5-JM; Mon, 14 Apr 2025 08:50:12 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-000Coq-1C;
	Mon, 14 Apr 2025 08:50:12 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4De0-00BcuJ-0t;
	Mon, 14 Apr 2025 08:50:12 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:50:08 +0200
Message-Id: <20250414065009.2770749-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
References: <20250414065009.2770749-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_235014_010556_31171F44 
X-CRM114-Status: GOOD (  11.62  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] ARM: skov-imx8mp: print initial > on every boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

putc_ll expands to nothing if CONFIG_DEBUG_LL is not defined. As we have
normal CONFIG_PBL_CONSOLE support, we can just use normal printing
functions to always output. Let's do that, so we have a very early
character (>) printed to console to indicate that barebox was entered,
even if further boot was to hang shortly after for whatever reason.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/skov-imx8mp/lowlevel.c b/arch/arm/boards/skov-imx8mp/lowlevel.c
index d7bd771f259d..1fd665d67675 100644
--- a/arch/arm/boards/skov-imx8mp/lowlevel.c
+++ b/arch/arm/boards/skov-imx8mp/lowlevel.c
@@ -51,7 +51,7 @@ static void setup_uart(void)
 
 	pbl_set_putc(imx_uart_putc, uart);
 
-	putc_ll('>');
+	putchar('>');
 }
 
 static struct pmic_config pca9450_cfg[] = {
-- 
2.39.5



