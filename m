Delivery-date: Mon, 10 Jun 2024 14:23:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe3H-003gUE-2b
	for lore@lore.pengutronix.de;
	Mon, 10 Jun 2024 14:23:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGe3H-0008C6-8W
	for lore@pengutronix.de; Mon, 10 Jun 2024 14:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RHth5ZxsF51eTtIguPXJUUrZ0kTknwtIEti8DaQmmsg=; b=JaAWXew5iEijjtMauzffe+Syj7
	3eaKey/UMY2+4GZ6K7pGbZVe/+hIB5xSUUvzDqc5kLht2m84RQu2JAmRl9DkrXYDJq2VJyeoajeGC
	Jt9FPItXeYaKV04iCApBMiOw9Ck8msqXImxHoJRRhz6Pt3n11GOSwdBSy5p1ebFCBjv40HQsbiNSc
	zgCe1YK9/ZdEYW77xDGVZFP6dG2vdWC4wy3AgvEL+bqZT53QG42XsXdLDFZlzzZwwyeox7xtk3YU/
	FWDKOXQyzCKCoI6nvacPF8N4XsOQyMJBIT0osk01+IkA5KSi2+e41kCB2Zf9mSTHYhOl0Px7UTCLq
	rFTxQMjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe2Y-00000004zXp-2g0A;
	Mon, 10 Jun 2024 12:22:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGe2U-00000004zXR-3zsy
	for barebox@lists.infradead.org;
	Mon, 10 Jun 2024 12:22:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe2S-00088b-SL; Mon, 10 Jun 2024 14:22:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe2S-001Ijg-Ff; Mon, 10 Jun 2024 14:22:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sGe2S-006o1b-1L;
	Mon, 10 Jun 2024 14:22:16 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20240605172539.251490-1-eagle.alexander923@gmail.com>
References: <20240605172539.251490-1-eagle.alexander923@gmail.com>
Message-Id: <171802213640.1622256.18194487961037255108.b4-ty@pengutronix.de>
Date: Mon, 10 Jun 2024 14:22:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_052219_042953_9B06C012 
X-CRM114-Status: UNSURE (   8.38  )
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
Subject: Re: [PATCH] scripts/rk-usb-loader: Add support for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Jun 2024 20:25:39 +0300, Alexander Shiyan wrote:
> This adds support for rk3588 CPU for rk-usb-loader.
> Instead of 0x350a PID, the rk3588 uses 0x350b, so lets use mask
> to be compatible with both CPUs.
> Tested with 3588OK-C Forlinx board.
> 
> 

Applied, thanks!

[1/1] scripts/rk-usb-loader: Add support for rk3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=77dd6b2fb969 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



