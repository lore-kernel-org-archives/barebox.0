Delivery-date: Fri, 19 Jan 2024 07:43:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQibI-006crb-2L
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 07:43:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQibJ-0007ci-Em
	for lore@pengutronix.de; Fri, 19 Jan 2024 07:43:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CiyryNUOVFmaFoEKe5FAZjfQRpWzJiJ6eXEXVBlwX8I=; b=CdDAy4ed3yGXse0bL0gLJEjgDN
	z/BtjP7cNpWvdUTa+KtMOqwDmOIxFVtH9LAUkJdHAYYGRStVBI8uo/ECCpTAVIK9zkLjcXOvSGhd0
	qz6zqGLteThuQELmpNBRnbYbJ/iNw+fAjnieSuwjHYfEs8aaEKzK/hngpjsrYtOyB3rVJ/uMM+T2j
	ekZbVlwJi69d5yOXrxrBt19eauf4NaBzFgbDnF1pdY2SpHP6RS4hdceQIKsFJM3dwo4SGfZ7VfqLJ
	jU7/b+v2wA5/tVZ7AsNKFHjK9YeYIUQ8gfpjKiJgPDaf4umkpJPDlTdbh5S0eBEu5IMSQJ2cUAEwp
	zlXqQr3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQiZy-004cV0-2Z;
	Fri, 19 Jan 2024 06:42:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQiZv-004cUE-1o
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 06:42:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQiZo-0007ZY-DY; Fri, 19 Jan 2024 07:42:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQiZo-000rJM-0x; Fri, 19 Jan 2024 07:42:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQiZn-0095hD-37;
	Fri, 19 Jan 2024 07:42:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240110131557.1289602-1-s.hauer@pengutronix.de>
References: <20240110131557.1289602-1-s.hauer@pengutronix.de>
Message-Id: <170564652396.2166843.15017887208735773107.b4-ty@pengutronix.de>
Date: Fri, 19 Jan 2024 07:42:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_224211_617791_34F85ED6 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mtd: nand: denali: Make partition binding configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jan 2024 14:15:57 +0100, Sascha Hauer wrote:
> The binding for the denali NAND driver changed over time. Originally the
> partitions were placed directly under the controller node. Nowadays
> there is an additional chip node between the controller node and the
> partitions. So what originally was:
> 
> nand: nand@ff900000 {
> 	compatible = "altr,socfpga-denali-nand";
> 	partitions {
> 		...
> 	};
> };
> 
> [...]

Applied, thanks!

[1/1] mtd: nand: denali: Make partition binding configurable
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a248e60d261 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



