Delivery-date: Tue, 18 Jun 2024 08:22:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSEb-007zi7-1r
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:22:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJSEb-0000Zg-0U
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:22:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lc6MgebYDiJ3oPm7iCg94DkGtkBtgEmrmiQdWPq3Grg=; b=Gbmcggd2hqLLnp9tUa2DVb/y6i
	w1TvQqVD+G4InLsbO+bb+wMCjwTB2goRintGxKHnwG3vi5d7hCrBCnBZrycWM5th221XnnoFggbjR
	Dc9LMsKX7aaN2LlnypbQNSm8Gf9gwPmNv04IHmHnUVu1coofoGJOuez7a5PfZTmHOsiu3Y5706iht
	u85I354tG/raTayAi+sTyQz83TTh03hiKwsrFRFfZc026fxE0YJ4wwbgobmyTbAaJd9czgQcaqHSX
	UI9uV6l8/YjyepTcVQatCjymJC2TCPuJRMEPaL3AtkskKcTcvrb4bsDoW595kdp7VEKXLgXihRdpV
	vZyVzfrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSEC-0000000DmlA-1IDo;
	Tue, 18 Jun 2024 06:22:00 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSE7-0000000DmkT-3YJV
	for barebox@bombadil.infradead.org;
	Tue, 18 Jun 2024 06:21:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=Lc6MgebYDiJ3oPm7iCg94DkGtkBtgEmrmiQdWPq3Grg=; b=OlWSpumCUla7gRR+7vk25qmamK
	FAD4zgiaY6bFzX5po+v2B7GRqLPtR8EY/uWIDkphIoe8CAXEwdt6Pw5pxjl+flpy+y6CLWMTSnXfU
	sVSWRZdiv9suH8u3QbK71eaJmljVgO3erc/my47syFphsCssCyFYdWb24ExBiA5jRnLZs4wjRyIXB
	/JcN7Wqbxw+5yb/yCP2O6oYIJZG99t+/I06ou0uG66yP+KbBKMcgc9l4Ow+ZyVengoBGFLj/sS/mm
	FH/gvcnjSWa/d/BqHNhKtl2Riqy4jC4fT35+I2jiV0vr7wKLBg2pPUdonvfbXwmBC/WVgpfgKS+Sw
	YfRd3q2g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJSE4-00000002ssA-2Hh7
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:21:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSCD-0000Es-Ed; Tue, 18 Jun 2024 08:19:57 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSCD-0039so-2F; Tue, 18 Jun 2024 08:19:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJSCD-00G3VB-01;
	Tue, 18 Jun 2024 08:19:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: ske@pengutronix.de
In-Reply-To: <20240617114047.1546830-1-a.fatoum@pengutronix.de>
References: <20240617114047.1546830-1-a.fatoum@pengutronix.de>
Message-Id: <171869159700.3826696.1099027442933322882.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:19:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_072152_592076_3375834A 
X-CRM114-Status: UNSURE (   5.07  )
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
Subject: Re: [PATCH] mci: core: don't add broken_cd parameter for eMMCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 13:40:47 +0200, Ahmad Fatoum wrote:
> We only register the fixup for SDs, so registering the device parameter
> for eMMCs serves no purpose, thus register it for SDs only as well.
> 
> 

Applied, thanks!

[1/1] mci: core: don't add broken_cd parameter for eMMCs
      https://git.pengutronix.de/cgit/barebox/commit/?id=9223f1a0a3c3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



