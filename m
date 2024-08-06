Delivery-date: Tue, 06 Aug 2024 07:56:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDB9-006jRJ-14
	for lore@lore.pengutronix.de;
	Tue, 06 Aug 2024 07:56:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sbDB8-00046b-QA
	for lore@pengutronix.de; Tue, 06 Aug 2024 07:56:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C0k8cBMQV/YOnfcCg7bRXGVx0ueoO3TPlw1gHygUMrY=; b=kHPYT620CO2N51Ep3fAlkzUzZd
	t8sb1lgrILpR3Jn44FTwmbea7+t+5J1pQp/NmLh92e3iv0tHPNHluLnOgXO8HZoFpE29FvuLnqejo
	Jnce5TZrYOeLMXI33Ir7yUEiM/FEkWQwJSr2Pu/pUKRLXovToBY6IoEgoh/N5sU8BlysbSQfjLSOm
	5hjCc15ZM+epTN4HXBad2x8OtoNzeTmD6nZ3CphyIVWkPLX2d7WIwSpc57UGYOP2pQA75WxGAaw1k
	ujtXdRnN00SORhTFB9fVYK0e4/U2nAjCzfaEGiUhq48PryDuvw6xmOYuymdLt5plEV1Y6y2E2q6eX
	pKGI+CUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDAg-00000000cD8-2vV0;
	Tue, 06 Aug 2024 05:55:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbDAc-00000000cBF-481N
	for barebox@lists.infradead.org;
	Tue, 06 Aug 2024 05:55:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDAb-00040q-JH; Tue, 06 Aug 2024 07:55:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDAb-004sdD-6S; Tue, 06 Aug 2024 07:55:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sbDAb-002jeC-0P;
	Tue, 06 Aug 2024 07:55:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240805153521.3085578-1-a.fatoum@pengutronix.de>
References: <20240805153521.3085578-1-a.fatoum@pengutronix.de>
Message-Id: <172292374112.652065.1949415604981140960.b4-ty@pengutronix.de>
Date: Tue, 06 Aug 2024 07:55:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_225543_053091_134C664D 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: dmc: reduce number of leading zeroes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 05 Aug 2024 17:35:21 +0200, Ahmad Fatoum wrote:
> Driver probe currently results in:
> 
>   rockchip-dmc memory-controller.of: Detected memory size: 0x0000000080000000
> 
> which while correct is a bit hard to read, because of the number
> of zeroes. Make it a bit more readable by showing zeroes to the left
> only if the size up to 4G. This would turn the above into a more
> readable:
> 
> [...]

Applied, thanks!

[1/1] ARM: rockchip: dmc: reduce number of leading zeroes
      https://git.pengutronix.de/cgit/barebox/commit/?id=eea0fa6f5d4f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



