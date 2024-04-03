Delivery-date: Wed, 03 Apr 2024 14:10:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzRW-0065hI-1c
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:10:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzRU-0008RN-8V
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:10:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MRJT4TzqNziDbxVIY1nknham/1yPXeSHgdzSKhlccBw=; b=DX4oOPZ/lSDyo7dB0QRQyIjGZm
	Ruqo8ZuNlYMGoryyzkXXfb43DNNgGf7U5ODqGwyAmEcxtDNBIgpDxEB+fswF9C5IC/qWv9CGbCLYu
	Kh4OtO/c52OHGUq6BwZYSQAQJVpQzTRObb7rnQkUm4QJrmGkvpTpdhcQksDxX0pLjI5dkq6Bw24/I
	CqdFyb5H6ifaDApxnUIpqiINNPnn6VBakQPnOfD+gMIihtwRf29P+9nnA3MJP3p9o85PUIC/OF93k
	dskIN3/HzQZ6fBl0uA2hgAiVgajrRORFJ6OH0TZdXjwGJexH+wiLOknl72FiQYzPkNBHGis0sRUAv
	h/FoHb7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzQt-0000000FtmD-1WDd;
	Wed, 03 Apr 2024 12:09:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzQp-0000000Ftl6-3WR9
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzQo-0007ve-DA; Wed, 03 Apr 2024 14:09:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzQn-00AAUx-Ru; Wed, 03 Apr 2024 14:09:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzQn-007A8W-2Z;
	Wed, 03 Apr 2024 14:09:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tomas Marek <tomas.marek@elrest.cz>
In-Reply-To: <20240403074909.32256-1-tomas.marek@elrest.cz>
References: <20240403074909.32256-1-tomas.marek@elrest.cz>
Message-Id: <171214616979.1707213.10350035182681844708.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 14:09:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_050931_910437_C42BBD64 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 03 Apr 2024 09:49:09 +0200, Tomas Marek wrote:
> Add an I2C master driver which uses EFI interface to implement access
> to I2C bus.
> 
> 

Applied, thanks!

[1/1] i2c: add EFI i2c master driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=f637731d77eb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



