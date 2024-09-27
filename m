Delivery-date: Fri, 27 Sep 2024 12:43:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RS-003N3L-1H
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 12:43:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su8RG-0005jB-S4
	for lore@pengutronix.de; Fri, 27 Sep 2024 12:43:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RAP2P+zxX8lAqNWypBDnSUCjbom62RVQXIt6E9LmxSg=; b=sxES5ptZeaAl5N2Ni6nABO8R/f
	/Wvc+MSfAHdFIuAfuy2CJBrh0FNKT1ZsFZygVt/2/6UGpKzvQ87boh5Hrm3Sf6kXnwVzuIC86vkJx
	CAAlPjQN3vxjTEJKTcB8taiTjy75ok7+yLjGFiQgaWxhVynk37DdRUo11qiDb8ZSZZWwKS8kwmAEY
	7wiRkvmU2TOGllYV1g+QlgPWaJKIpXbTSs1SV5Gs6OZoRIfsw+pvqw6tW7Lvoz4cKVgAU6gjD++PT
	Ow9q0AFAxq00wEb2ajHCK6QPhe9jXwidpkVFHNoPrQclRfJDE58DsTmcl1mxmNv4/pr8kNmpFjtuN
	zEsSp4Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su8QK-0000000Aqod-1tOf;
	Fri, 27 Sep 2024 10:42:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8OX-0000000AqSg-2gOx
	for barebox@bombadil.infradead.org;
	Fri, 27 Sep 2024 10:40:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=RAP2P+zxX8lAqNWypBDnSUCjbom62RVQXIt6E9LmxSg=; b=aRbVE4wVtKT6/YgkvuxLshavf9
	nA5QoV2Z3XAted8GLMQwOmIvOtMZL1ZTqVq4CSwM9NvEE4w4aGbuipi2ZgPnoSdHt0CR0nYcRS+wL
	sv555ZnFHNognVlzN3F5guYnS5P2jQi/XbW8qO9PJQZPPEzqaQzT5rfKU3d33P3SUHXUIPuDYXxWR
	qIxkMi8ltJhJaR6d7wJxwEX9q8qpOYfLL8ATwUADMD/LNa8VHrogKrdNiBCWD51Ge5fqZ/uv9v6HQ
	Sz+QRSDxKvNhzf1jUpoTCMNi/vrL37Mrg5DoaRsDUidwA52cSRSYO0gD1Efmvpt7HBH+E8ipOWxWE
	6x7jytIQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su8OU-00000002Kbu-0b7V
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 10:40:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8OT-0003t4-Kv; Fri, 27 Sep 2024 12:40:13 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8OT-001u40-8g; Fri, 27 Sep 2024 12:40:13 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su8OT-000Q6k-27;
	Fri, 27 Sep 2024 12:40:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
References: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
Message-Id: <172743361321.100323.12420395059218954775.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 12:40:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_114014_453580_955B113C 
X-CRM114-Status: UNSURE (   7.21  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] spi-gpio updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Sep 2024 13:21:36 +0200, Sascha Hauer wrote:
> Our spio-gpio driver currently only supports 8bit word width. This
> series updates the driver to support arbitrary word widths up to 32bit.
> Also we get rid of the deprecated GPIO binding that the driver uses.
> 
> 

Applied, thanks!

[1/5] spi: spi-gpio: actually delay in spidelay()
      https://git.pengutronix.de/cgit/barebox/commit/?id=105dd3824c50 (link may not be stable)
[2/5] spi: spi-gpio: support different word widths
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd782e60aada (link may not be stable)
[3/5] spi: spi-gpio: switch to new gpio binding
      https://git.pengutronix.de/cgit/barebox/commit/?id=b0c73a574c2c (link may not be stable)
[4/5] spi: spi-gpio: deassert CS during setup
      https://git.pengutronix.de/cgit/barebox/commit/?id=ddb7dc177d0f (link may not be stable)
[5/5] spi: spi-gpio: switch to gpiod api
      https://git.pengutronix.de/cgit/barebox/commit/?id=6cb75a3f2f79 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



