Delivery-date: Thu, 16 Jun 2022 15:12:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIr-003uh3-06
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIq-0001cV-KC
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mrXTBGlZsMuJyuGU79Egvjp0rXyZoiEN9Y8dFi0rDqs=; b=eEVy+eyVnCr+So
	aiy8KmFyaxkFx/DZWOu+GKc0Bf7WVWsD2W7YSTCxlWlcBp5KQi+Ei6Jon2IUsUC6De8Hw3qOVKCat
	niMAnWuCbrUMCAox8Mv9p9m2fZ2SLRwrcIcZ7tE32RxrK7CAnR7tC0E7/xN76iEMNoGQRjNWD+clC
	DPEjmmDCfaHJ30ju8HB0O0Xc8urZa/rA1m7uvCounDEe9BBf66a1bcUl1BmGUD3AUlC0EOhuszjWN
	fxdbc//fu/IdT6ecBnabG3FzWn2pRv6w8R3m/YlXswJzGEFTH2uNzZ+cRuOvYFxkuaoGR71xNI6RN
	3ogKqO/SdMtpEZmU9wjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHf-002P2k-Jg; Thu, 16 Jun 2022 13:11:39 +0000
Received: from smtp15.bhosted.nl ([2a02:9e0:8000::26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHF-002Oqc-KO
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=mrXTBGlZsMuJyuGU79Egvjp0rXyZoiEN9Y8dFi0rDqs=;
	b=txIs5GA6RoFqk3CjDxmWdHurkOog9Lw2D3zI5tMMJGAsqgr3TMh8XJyr7EmaPJ4Ht7UJPGuk/CJoH
	 cjzSOydgeirAuW7gIoK8gYWAGYe9Rb0/z+m+c+yL5zwuEHx/470Ij0areeVz4FbrUx/1BRUuywE1x7
	 VSfwWJuvOyPPF/LuRWbK8WbC6ONNaPfOjlMMZ7/5x9eCb493K+xveV275DSh33Wl2WYVy/SHeh62Q6
	 5/kbAZUVuho5zGUjKIq4FigQLuBuJ7kmob8TFxLvW9tea+UCNmGOgo+qr3vcT0RhniQyJl8Vd75apK
	 z6SDvztSIsEsm1VgVTGq9PjuMQnb8bg==
X-MSG-ID: c9e8f9be-ed75-11ec-ba03-0050569d3a82
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:12 +0200
Message-Id: <20220616131114.214628-8-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061113_839863_F5366619 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Robin van der Gracht <robin@protonic.nl>, david@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/9] ARM: boards: protonic-imx6: Remove usb_delay from the priv struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

It's only used in one function right now.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 2c4f323799..95ec7be793 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -88,7 +88,6 @@ struct prt_imx6_priv {
 	unsigned int hw_id;
 	unsigned int hw_rev;
 	const char *name;
-	unsigned int usb_delay;
 	unsigned int no_usb_check;
 };
 
@@ -423,6 +422,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 	const struct prt_machine_data *dcfg = priv->dcfg;
 	struct device_d *dev = priv->dev;
 	char *delay, *bootsrc, *boot_targets;
+	unsigned int autoboot_timeout;
 	int ret;
 
 	ret = setenv("global.linux.bootargs.base", "consoleblank=0 vt.color=0x00");
@@ -433,12 +433,11 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 		set_autoboot_state(AUTOBOOT_BOOT);
 	} else {
 		if (dcfg->flags & PRT_IMX6_USB_LONG_DELAY)
-			priv->usb_delay = 4;
+			autoboot_timeout = 4;
 		else
-			priv->usb_delay = 1;
+			autoboot_timeout = 1;
 
-		/* the usb_delay value is used for wq_queue_delayed_work() */
-		delay = basprintf("%d", priv->usb_delay);
+		delay = basprintf("%d", autoboot_timeout);
 		ret = setenv("global.autoboot_timeout", delay);
 		free(delay);
 		if (ret)
-- 
2.34.1



