Delivery-date: Tue, 11 May 2021 22:19:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgYrC-00016k-3l
	for lore@lore.pengutronix.de; Tue, 11 May 2021 22:19:54 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgYrB-0003AI-CX
	for lore@pengutronix.de; Tue, 11 May 2021 22:19:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nMmfRzG3eGIRWj/byiclX+cKDUf8x5hw579QgF23gJk=; b=N28jTQo+ZlEiwK
	Ns33z/MHZNKC1eO66YmzT76d2GaRXsIAlgwykqHVMui5UELVLLh0yLHw/GRgrbsiq2iUGTlo14Xla
	ZyD0R3gTzkozJy98vC42lz8XRiRmzHVzyy4iFQI9nu4NFyPtfR0HBHwlLvox7xrg9x4uhx/Q68RWJ
	ekZUP8xoFLn0sPPWS99huUBEGpfhD+ONd1cm/4WmpaNCt3FJryGaQgBoSb4cQD+TUvnIprEjdo3lc
	+MLV1TxBZSK4xm5QgVLOM1KOa+smZHwTE8SYDJiQqZ2cckDHbVsNa/mG5X1RdfEWTDX8Ui0m6H/fn
	Zgsmv5QI4/YiVtQjywvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgYpj-001Fjq-79; Tue, 11 May 2021 20:18:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgYpa-001FiL-7C
 for barebox@desiato.infradead.org; Tue, 11 May 2021 20:18:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=jIiQIoGY/m9qtDRP7/+dBJ8FBkhEuuW0luqlsAIUnpk=; b=1oiXiD/S2pxxKY6HVy5uG8pxDD
 +0s0U+cFJx6IdDGfHjZyTAkedvf+1s9FRo8ZzVMk7i1uMGdulKU4tnflfwDcBAKXQ7DCS6ZouKR34
 hH2hpGf0M7gCiPFZuDfv2RlwyhdqVId3dx6zbvYBFM2uW3TVee8l65ccArTsp6RFyB1o83WHjjB28
 wRtDrrqlWOQGyXIhqWoAHfZFQdAohN6dewpnIHscOUhkgsezMY05SqxkPPLtpQ1cN3+L1xQSoIaeO
 f6yOg6LnKe7Ywj4Q5zl9vNWFAMxzxLecoOshAFzvGmKM0Y8A/jMJ72iv6H0UmO7i1T61OEUj6ZMfY
 qHe6fQaA==;
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
 id 1lgYpW-009tmG-Qx
 for barebox@lists.infradead.org; Tue, 11 May 2021 20:18:13 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id 0DBFFE74260; Tue, 11 May 2021 22:17:33 +0200 (CEST)
Received: from astat.fritz.box (a89-183-95-160.net-htp.de [89.183.95.160])
 by lynxeye.de (Postfix) with ESMTPA id 2727BE74217
 for <barebox@lists.infradead.org>; Tue, 11 May 2021 22:17:33 +0200 (CEST)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 11 May 2021 22:17:29 +0200
Message-Id: <20210511201729.63076-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_131811_041795_C802236F 
X-CRM114-Status: GOOD (  12.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: use new vendor prefix for MNT Reform2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Lucas Stach <dev@lynxeye.de>

The vendor prefix for MNT Research GmbH in the upstream kernel will be
mntre (not yet landed, but acked by the maintainer). Switch to this
prefix in Barebox now to keep bootspec booting working.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/mnt-reform/board.c  | 2 +-
 arch/arm/dts/imx8mq-mnt-reform2.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/board.c b/arch/arm/boards/mnt-reform/board.c
index e2d628586a50..feb874c0a0ef 100644
--- a/arch/arm/boards/mnt-reform/board.c
+++ b/arch/arm/boards/mnt-reform/board.c
@@ -28,7 +28,7 @@ static int mnt_reform_probe(struct device_d *dev)
 }
 
 static const struct of_device_id mnt_reform_of_match[] = {
-	{ .compatible = "mnt,reform2"},
+	{ .compatible = "mntre,reform2"},
 	{ /* sentinel */ },
 };
 
diff --git a/arch/arm/dts/imx8mq-mnt-reform2.dts b/arch/arm/dts/imx8mq-mnt-reform2.dts
index 4e80e00dd143..5a65324b3c75 100644
--- a/arch/arm/dts/imx8mq-mnt-reform2.dts
+++ b/arch/arm/dts/imx8mq-mnt-reform2.dts
@@ -12,7 +12,7 @@
 
 / {
 	model = "MNT Reform2";
-	compatible = "mnt,reform2", "fsl,imx8mq";
+	compatible = "mntre,reform2", "fsl,imx8mq";
 
 	chosen {
 		stdout-path = &uart1;
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

