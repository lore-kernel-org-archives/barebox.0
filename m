Delivery-date: Fri, 08 Nov 2024 12:36:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIN-006IzX-0t
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:36:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NIN-00043a-27
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MTmlHNziDMWqdOfI1BABVRECE2AsyR4EwujTG1Zm15g=; b=m3T97TVaAWaT/81DuZu3LYQgwZ
	dIzi9TVeDQM02R/LeEC/xuYjl8D5i8ZKtg7u2O0lgtlitQGDky0/gK6e8P4Lhza1NHLegJpaQctkP
	8Q9RYPmYGUwlbQbSNie7mKkmEnTNnmYl5pskS1+kJl/wR+z0QflhagsNheMvb1dMVM425u3rcIaMf
	JleC/hLTHDflYBct1TIczLVjrEMAJaBSNutKTxdhO4n4oI5OrGj/NqyuNZRcYkpo7Sg9M11Vffj/v
	enHNdd+X59pIqJZ94mnaD3SEgjXrCMfMZPnPNc6zhtJ0ZbHfm6O0Pr5ovXadxiYX5qXOvlPsOPMPu
	4C9B8tXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NHq-0000000AMbX-1UnB;
	Fri, 08 Nov 2024 11:36:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MgC-0000000AEWs-239p
	for barebox@bombadil.infradead.org;
	Fri, 08 Nov 2024 10:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=MTmlHNziDMWqdOfI1BABVRECE2AsyR4EwujTG1Zm15g=; b=NQ+w+S/myuHSPJBnRkH6FjE8yP
	1HYXTdIGjGS0w9V0FIJg0ZGyfyJVNyxqXid9ZRvu7WKRqmVqE2ioEHb0mwh2PVHaDmN82wDFOOses
	fFfZdE0wjVeJewRu3azK0GUj/UZtbcn2uAykOI1xRU2fE+oWeZcgTWSL4lq2ZhbDKufDEiB+P5bw+
	0K01aON0GMOhiH2I2EGIn/J9uzjIe6EuzRIowWSl8ywAkS3RuzogYNbAIVX9CyXAt0rUlNW1OLj8A
	vXv80Bxu9pgAr1nU00s2Fnp8f/bP0QwSwf1YlJGjfqRYV9cdxya2k/BR/JHxo5It8fcE3cEOwsCbb
	qNxCyy6w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9Mg5-0000000CI4R-1Jsc
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 10:57:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mg1-0000u9-R4; Fri, 08 Nov 2024 11:57:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mg1-002bet-26;
	Fri, 08 Nov 2024 11:57:17 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9Mg1-009mRW-1w;
	Fri, 08 Nov 2024 11:57:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
References: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
Message-Id: <173106343759.2331147.16753778323386310962.b4-ty@pengutronix.de>
Date: Fri, 08 Nov 2024 11:57:17 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_105723_984391_01F029B8 
X-CRM114-Status: UNSURE (   8.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] ARM: i.MX: Add bootm support for i.MX flash header
 v3 images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Oct 2024 15:59:59 +0100, Sascha Hauer wrote:
> On i.MX9 and some i.MX8 SoCs the barebox images are encapsulated in the
> i.MX flash header v3 format. This series adds support for detecting and
> chainloading them via bootm command.
> 
> 

Applied, thanks!

[1/2] filetype: detect i.MX flash header v3
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a62bf7493ce (link may not be stable)
[2/2] ARM: i.MX: Add bootm handler for i.MX flash header v3 images
      https://git.pengutronix.de/cgit/barebox/commit/?id=ce829430232d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



