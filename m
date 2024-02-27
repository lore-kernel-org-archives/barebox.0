Delivery-date: Tue, 27 Feb 2024 08:16:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rerh2-009zof-18
	for lore@lore.pengutronix.de;
	Tue, 27 Feb 2024 08:16:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rerh1-00026s-Oq
	for lore@pengutronix.de; Tue, 27 Feb 2024 08:16:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qDZpjoDiVZPRrOC1HkRjEjWAUre4R0OW/9V2J9UbZAo=; b=HAIE644JnJ3McseH0A1USMaOTF
	XU+wPG30/ShUjEpPv5WCCoXU/AKtdBG42kbcJ4fv3pblKkaFvqkpQnWJpGlkQ7nxBEzJj0LSJKmu+
	EjGZ6z102tCRq2NXbBudLmP+npTwgMaF+i9pNm5nFli2gslKOPu7uADSzSVhxa23LIBDah8XjT46I
	CNbC2NlibwWZrtCSvOubESFey/9Fm7bxDAzg+giAztJ7verJitSaOmpgjVlg2sMNpIMjBYjf7xT2h
	C3gsTq7Sbh4i2xPBGRd7foF1maQtSuws3c34SLNBACbWAmYc6jMLq/D3e1W9d+yr2L7/QuEbC3es9
	rebSj8IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rergb-000000045i6-0HUX;
	Tue, 27 Feb 2024 07:15:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rergX-000000045gq-1i9t
	for barebox@lists.infradead.org;
	Tue, 27 Feb 2024 07:15:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rergW-00021i-8R; Tue, 27 Feb 2024 08:15:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rergV-0039A5-S8; Tue, 27 Feb 2024 08:15:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rergV-00GEVZ-2c;
	Tue, 27 Feb 2024 08:15:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240226141458.620463-1-s.hauer@pengutronix.de>
References: <20240226141458.620463-1-s.hauer@pengutronix.de>
Message-Id: <170901812780.3868888.1469586324124753130.b4-ty@pengutronix.de>
Date: Tue, 27 Feb 2024 08:15:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_231529_478471_880442FD 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX6ul: TQMa6ul: fix mmc aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 26 Feb 2024 15:14:57 +0100, Sascha Hauer wrote:
> The TQMa6ul upstream device trees contain aliases which swap the order
> of the mmc nodes, so what used to be mmc0 has now become mmc1 and vice
> versa. With this mmc0 now is the eMMC and mmc1 is the SD card.
> 
> Introduce a imx6ul.dtsi which adds barebox,bootsource-mmcx aliases so
> that bootsource_get_instance() matches our mmc numbering again. Also
> register the eMMC BBU handler on /dev/mmc0 and the SD BBU handler on
> /dev/mmc1.
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX6ul: TQMa6ul: fix mmc aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=c2f751908896 (link may not be stable)
[2/2] ARM: i.MX6ul: TQMa6ul: install barebox on eMMC boot partitions
      https://git.pengutronix.de/cgit/barebox/commit/?id=c654a59bd233 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



