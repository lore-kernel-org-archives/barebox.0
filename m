Delivery-date: Thu, 16 Jun 2022 15:12:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIi-003ufT-6B
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIi-0001YH-2z
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlsWQNH2oG3rC8RbU6Y9StEoGbYPvV2/YSGudKSR6s8=; b=jebqf1XauivOaj
	/fEau2yR87Rh4jDAR+rb8yJrR3ZXzPt4+KygT/bHYt4jUQ4YID5SK7zUoz1reyNzgdql8X6E3tru9
	T/6umMw9PtevhMOqttFw+vGTWC6+NQ+I0jCzquctageadvdVn4o/XLeIi9PRSO6uiWUJ6BlinPaHP
	ohFQtLE/FmFKPLEBjocB7kbpNmRkBgJCY1wo/HtwNcesR8ScnZZIpXHdsDTa8/+xu57T14YaFWznk
	i3R4TZF4pk+8TVlWK12zepypVg6Xc7V8XsiKEX76ciD2oe5Vy1S7FRUNXYjUxRnWqgn1biyV9njtY
	hjXib7Mu6ggRyXiaJnjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHU-002OwI-31; Thu, 16 Jun 2022 13:11:28 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHF-002OqD-Ag
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=TlsWQNH2oG3rC8RbU6Y9StEoGbYPvV2/YSGudKSR6s8=;
	b=vUvES9F2oKd8C7l/iJ8yJXo1NPdZYhYyLEoFOl6K5xro5e1ejFWD4//sPpxNycNZKcMXqrVs5tV6L
	 pRAgehGqXAMI0kQ7WNKz9G7aOh/AfY27xuCgGVNAHnZ+8U8uXnnxSld/fVxud4tuXqeoGEP5YDF/7K
	 EavnpUq7Tuwhk+n8AINw8WW+EecAx0t7iizb1pfp+VT+by1anqjN+kA8Ii1tHv6v9sWypv6ssxWLXQ
	 9yRR0xgRacnFd1aYoV8VvkmXPUnuUlyxsnm0+hMm28ZbyViKwfHGb1gfMgbyLYLiO97yRVyqJrWkr4
	 SU2HkpGXUAYhe+ybEgyzINuiw97XwqQ==
X-MSG-ID: c9a065d3-ed75-11ec-8a45-0050569d11ae
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:08 +0200
Message-Id: <20220616131114.214628-4-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061113_537716_6106207B 
X-CRM114-Status: UNSURE (   7.20  )
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
Subject: [PATCH 3/9] ARM: boards: protonic-imx6: Free allocated autoboot_timeout string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 3116f3ac42..76c26fe296 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -395,6 +395,7 @@ static int prt_imx6_env_init(struct prt_imx6_priv *priv)
 		/* the usb_delay value is used for wq_queue_delayed_work() */
 		delay = basprintf("%d", priv->usb_delay);
 		ret = setenv("global.autoboot_timeout", delay);
+		free(delay);
 		if (ret)
 			goto exit_env_init;
 	}
-- 
2.34.1



