Delivery-date: Mon, 26 May 2025 15:50:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYDw-000XOP-2F
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 15:50:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYDw-0008Je-2K
	for lore@pengutronix.de; Mon, 26 May 2025 15:50:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xaa0NYpMIW7Y2YlhNA2eKERk8nqSXmA3MQbfpX9srcY=; b=4UTWU6nTcG1Snj8poCFg5GjV8/
	H1mA9cJGivKAifOOBI7GEwKQKf55jhrMO7RKEISSG9Lb6MT21YJezf64gu/wh3tNc4i0oBeyojLM8
	7hZ3cI5RupSPvAVLYtY3+gofyGQJiPxBfo3tlPxEKCOvpjAZxsaXLZ4lbxQNYDm3xADWBMYeyhujG
	OcC0IBI9qHky2apEgDdo0+M53NQM2PlOQtcCXB4LvqV7ym3kETuuZjy2grGBFuGo3QVDFOaANAti5
	oNLun3ZrVJjXyrDWJ6yhyyoYLLiY8VfWyQvoPg4wJooYVr9I6A3v6HBCm1cRaSk/Ehc0aG84wNptH
	aAm4QJqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYDW-00000008w3O-47Ww;
	Mon, 26 May 2025 13:50:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYDU-00000008w2w-1uuv
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 13:50:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYDT-00087o-Az; Mon, 26 May 2025 15:50:11 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYDT-000G90-0V;
	Mon, 26 May 2025 15:50:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJYDT-0030Y6-0I;
	Mon, 26 May 2025 15:50:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250522081715.22546-1-eagle.alexander923@gmail.com>
References: <20250522081715.22546-1-eagle.alexander923@gmail.com>
Message-Id: <174826741108.717047.11621633710392518344.b4-ty@pengutronix.de>
Date: Mon, 26 May 2025 15:50:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_065012_500856_820254EE 
X-CRM114-Status: UNSURE (   6.76  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: at91: Using "clock-frequency" property from
 devicetree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 22 May 2025 11:17:14 +0300, Alexander Shiyan wrote:
> This patch allows the I2C bus frequency to be configured from
> devicetree. This improves compatibility with AT91-based systems
> with different I2C device clock requirements.
> 
> 

Applied, thanks!

[1/1] i2c: at91: Using "clock-frequency" property from devicetree
      https://git.pengutronix.de/cgit/barebox/commit/?id=5dd7360f3b17 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



