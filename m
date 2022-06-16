Delivery-date: Thu, 16 Jun 2022 15:12:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pIc-003udk-Sx
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:12:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pId-0001WF-0a
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:12:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4HA7AAcRAI2JQDG+5w8gnhjeWw1kMftb9YMqdynDHQo=; b=OCxkhzvDLli7u/
	1+qyKh/VplZMJbz8lx1DPrP6wr4YfUdIjGi99wvh2L6tnSyI4IS490C9r7yMj3Jna4m3ZwuagiTji
	KiTpzm9N9jNHJ579h7zgDllMCTTS+XACyVa4UHEY0qoZ4Kni6rBIowWukuWkQD6ULY+1zKq2H/6Xt
	PSScXlL1NTAzNIUOWX0vkERcsh+uCqO1ZQ0HKyBgfKmp/uBOPC83TAOvRf6zo5tlJsC297jXpdjlU
	H3+hNGMVSigbP3hfwp0i53vHfs1+CLCQ/fBdqM8T42TnhFHKrJHIEwrNmv1ZtMfFfkybw/G7W4twe
	MF36yaG/RRVYBLUkOXBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHM-002OuS-Mb; Thu, 16 Jun 2022 13:11:20 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pHD-002OqB-91
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=4HA7AAcRAI2JQDG+5w8gnhjeWw1kMftb9YMqdynDHQo=;
	b=fTWobKVFhp6iYa2ib7RQWfcidX5cFbmbkaWxl+KQlPkrsmTSiGztKHF1iaINQ4LsLo28ErzG4PJCs
	 nY0tG39H4YTfmOUdEnsWghPMEInWFvRvcNcoYJzyC3TUiRg4gnOSlDT8rCViFSu45+yLkepxMoHFH5
	 Dpxgah1CH5NWVPDN6lmUXTTE8Pl0ec70N3hnWWnB223qCFXM82DoJH6eT5If9nwRKmjwSHVO/iNaVQ
	 5Lz6+ZT3dhHmJnl/V+scp8qSpkSp0tm7Nu0zPlS2dGUGcGZLDRPNq27kdR3kp1rffzFmi7Kl6jM6s/
	 i0TnyKjModFRJrhxJo0FWfTuwndUfVg==
X-MSG-ID: c9915f5d-ed75-11ec-9051-0050569d2c73
From: Robin van der Gracht <robin@protonic.nl>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 15:11:06 +0200
Message-Id: <20220616131114.214628-2-robin@protonic.nl>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220616131114.214628-1-robin@protonic.nl>
References: <20220616131114.214628-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_061111_539480_FDDB843D 
X-CRM114-Status: UNSURE (   8.78  )
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
Subject: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The usb check needs to be skipped unless both keys are pressed
simultaneously.

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/boards/protonic-imx6/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index cdbb8debe6..8f8a0c745e 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -645,7 +645,7 @@ static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
 	gpio_direction_input(GPIO_KEY_F6);
 	gpio_direction_input(GPIO_KEY_CYCLE);
 
-	if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
+	if (gpio_get_value(GPIO_KEY_CYCLE) || gpio_get_value(GPIO_KEY_F6))
 		priv->no_usb_check = 1;
 
 	return 0;
-- 
2.34.1



