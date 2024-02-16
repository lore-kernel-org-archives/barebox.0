Delivery-date: Fri, 16 Feb 2024 12:57:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawqA-008Wij-1c
	for lore@lore.pengutronix.de;
	Fri, 16 Feb 2024 12:57:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rawq9-0005QS-Ud
	for lore@pengutronix.de; Fri, 16 Feb 2024 12:57:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HcggP1fN0TxQSdIYnoyw4dWu4YfPHOrxAR3WGyx2omg=; b=V7QrwFfEOHyAqyqXyV0Uc9ZqSy
	nyChx7ROL79XMnteZ2E2kiAfWoM+PwhVZAafIyAsg5GDJNeBJvuAdELVq9JyZMX6vmo0o+Y9zmuhh
	Cco5rrhSGXWUl14sUIX3s/c75B7upZCCyMCwtD52JwZrL1+2fYlU4uPtKfOHr5f5MMcagY0XGmv9C
	e9irZyWs4fna6CFoP0rP3U6Naf+fuOoSqPNkhoWm9lzBx13YZ8cG5M5UTjs0FwuQd7pEwQGcNuAOZ
	Tz690vBVb8ctLRps9KSAd7YYqzHuw4F9oEjE9pv3bjxEGlRHUNr7+BCmfWSDaEFIo7pOTX+V2f6xy
	WvFgm5mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawpc-00000002Dgf-2GSA;
	Fri, 16 Feb 2024 11:56:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rawpZ-00000002Dg9-1Cvo
	for barebox@lists.infradead.org;
	Fri, 16 Feb 2024 11:56:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawpX-0005Nw-H3; Fri, 16 Feb 2024 12:56:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawpX-00149b-4r; Fri, 16 Feb 2024 12:56:35 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rawpX-005uKR-0H;
	Fri, 16 Feb 2024 12:56:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240213100146.2778891-1-a.fatoum@pengutronix.de>
References: <20240213100146.2778891-1-a.fatoum@pengutronix.de>
Message-Id: <170808459508.1408152.10555407965595285536.b4-ty@pengutronix.de>
Date: Fri, 16 Feb 2024 12:56:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_035637_358375_21949E87 
X-CRM114-Status: UNSURE (   7.25  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] spi: atmel_spi: lower version log output from info
 to debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 13 Feb 2024 11:01:44 +0100, Ahmad Fatoum wrote:
> The IP version won't change from one boot to the next, so it's not
> useful to print this every time. Lower it to debug level instead.
> 
> 

Applied, thanks!

[1/3] spi: atmel_spi: lower version log output from info to debug
      https://git.pengutronix.de/cgit/barebox/commit/?id=f2fcaf2992e8 (link may not be stable)
[2/3] mci: atmel_mci: lower version log output from info to debug
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab420f54b470 (link may not be stable)
[3/3] mci: atmel_mci: mark atmci_setup_data very verbose debug print
      https://git.pengutronix.de/cgit/barebox/commit/?id=e90bf7a1c54b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



