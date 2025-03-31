Delivery-date: Mon, 31 Mar 2025 14:31:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEIJ-006Z6X-0x
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEII-00059k-MX
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpwV3BEsX5oUj+PgFs60j8+OgRdtTcG0XLTZF2Aso58=; b=vBFJXTr3N6iwkoWkMXr39LHPqh
	VSU+AIkkVHhGWcFFl6oODidlveWUivrUe99sU4F+04Ya71tWeTJs94qAvDjlNH1Ja8JTBl+w0Zv3m
	jIHFf8mvv4jqWq13uoSlR4iwWcmXn2ygEQzBdWqzbpFqaJ3EJ3TxfTVWYHMZbLOyAT+KKHUKFi673
	90+1IgV43MRahoLL4pOgNq+eICkMbLQ9GgVNAohvweOUquGjiRueI5Q/IMCKQhkMuuJgpVOIOwzud
	iKKPUr2cop8F1tKs0VdsqbbOb4bfYeSMf2LcNg7GfjAlafGQYbTseupkzhI6bBy+xt0rIV79Vts1/
	WRaEEEHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHl-00000000LAJ-3GA3;
	Mon, 31 Mar 2025 12:30:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHj-00000000L7a-0HcD
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:30:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-0004py-Ux; Mon, 31 Mar 2025 14:30:33 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002asY-2T;
	Mon, 31 Mar 2025 14:30:33 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002dCc-2G;
	Mon, 31 Mar 2025 14:30:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 31 Mar 2025 14:30:31 +0200
Message-Id: <20250331123032.626219-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331123032.626219-1-o.rempel@pengutronix.de>
References: <20250331123032.626219-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_053035_228228_CF97E10C 
X-CRM114-Status: GOOD (  10.52  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 3/4] arm: boards: protonic-stm32mp: fix stack corruption by passing correct ctx to stm32_bsec_optee_ta_close()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The `stm32_bsec_optee_ta_open()` function initializes a `struct
tee_context *ctx` through a pointer-to-pointer. However, its counterpart
`stm32_bsec_optee_ta_close()` expects the context pointer directly - not
its address.

Passing `&ctx` (i.e., a `struct tee_context **`) caused incorrect access,
leading to stack corruption. This was detected by the refcounter infrastructure.

Fix this by passing `ctx` directly to `stm32_bsec_optee_ta_close()`.

This bug affected both STM32MP1 and STM32MP13 board implementations.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c  | 4 ++--
 arch/arm/boards/protonic-stm32mp13/board.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 86cda1676b48..4c8ad9e53388 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -121,12 +121,12 @@ static int prt_stm32_read_serial(struct device *dev)
 
 	serial[PRT_STM32_SERIAL_LEN] = 0;
 
-	stm32_bsec_optee_ta_close(&ctx);
+	stm32_bsec_optee_ta_close(ctx);
 
 	return prt_stm32_set_serial(dev, serial);
 
 exit_pta_read:
-	stm32_bsec_optee_ta_close(&ctx);
+	stm32_bsec_optee_ta_close(ctx);
 	dev_err(dev, "Failed to read serial: %pe\n", ERR_PTR(ret));
 	return ret;
 }
diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
index d48a6dbf8e44..4268db2b384c 100644
--- a/arch/arm/boards/protonic-stm32mp13/board.c
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -104,12 +104,12 @@ static int prt_stm32_read_serial(struct device *dev)
 
 	serial[PRT_STM32_SERIAL_LEN] = 0;
 
-	stm32_bsec_optee_ta_close(&ctx);
+	stm32_bsec_optee_ta_close(ctx);
 
 	return prt_stm32_set_serial(dev, serial);
 
 exit_pta_read:
-	stm32_bsec_optee_ta_close(&ctx);
+	stm32_bsec_optee_ta_close(ctx);
 	dev_err(dev, "Failed to read serial: %pe\n", ERR_PTR(ret));
 	return ret;
 }
-- 
2.39.5



