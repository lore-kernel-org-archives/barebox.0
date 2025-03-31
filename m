Delivery-date: Mon, 31 Mar 2025 14:31:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEII-006Z60-0y
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 14:31:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzEIH-00058x-OJ
	for lore@pengutronix.de; Mon, 31 Mar 2025 14:31:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ask50ooeA2lwGt1JJRB8tPuXOyLC3WerqsJgtusgiCc=; b=bUlK0VL1WktBJ0g9nDHBaqv6IW
	vKRYQlO6cWYtZONSXIAyEBfwj7M2fqgdp52wszH8LOc91GuU+7zhJbB9RBkRG+LS09C9pHn/MSVbL
	UURKRG1TkfoDYMmbNlN6e/Mm24VoggeWeYPBZ1wXFrxvy3QeLjV4vPZNENPgj/IvWNEOYyRWWdiCn
	zpXRnRnOQxlalHUDzNM5Iy4lvam6khmBNQjiW359HyM11tLHMqs+xLL/mA8aj5hPc1w1E1j/Sr4gU
	TShoxNVWNu+VmhyG8nFyV4BahR4SoYoq5QO53JBozBIKNVX984l/vhR3V5p8a1EIGfrMhQ4bxSHt3
	vQR5srlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHm-00000000LAr-1ZQU;
	Mon, 31 Mar 2025 12:30:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzEHj-00000000L7Z-0E0V
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 12:30:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-0004px-US; Mon, 31 Mar 2025 14:30:33 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002asW-2Q;
	Mon, 31 Mar 2025 14:30:33 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tzEHh-002dBM-2E;
	Mon, 31 Mar 2025 14:30:33 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 31 Mar 2025 14:30:30 +0200
Message-Id: <20250331123032.626219-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250331123032.626219-1-o.rempel@pengutronix.de>
References: <20250331123032.626219-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_053035_235929_7628A099 
X-CRM114-Status: GOOD (  12.12  )
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
Subject: [PATCH v1 2/4] arm: boards: protonic-stm32mp13: Use unique board driver name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver was previously named "board-protonic-stm32", which is also
used by another board support file. This can lead to confusion when
both drivers are loaded, as it's hard to distinguish them in logs or
drvinfo output.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp13/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-stm32mp13/board.c b/arch/arm/boards/protonic-stm32mp13/board.c
index 0173e3628dc3..d48a6dbf8e44 100644
--- a/arch/arm/boards/protonic-stm32mp13/board.c
+++ b/arch/arm/boards/protonic-stm32mp13/board.c
@@ -285,7 +285,7 @@ static const struct of_device_id prt_stm32_of_match[] = {
 BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
 
 static struct driver prt_stm32_board_driver = {
-	.name = "board-protonic-stm32",
+	.name = "board-protonic-stm32mp13",
 	.probe = prt_stm32_probe,
 	.of_compatible = prt_stm32_of_match,
 };
-- 
2.39.5



