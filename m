Delivery-date: Mon, 23 Jan 2023 09:45:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsS1-002wZm-Qz
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 09:45:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJsRz-0002YX-Tb
	for lore@pengutronix.de; Mon, 23 Jan 2023 09:45:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FBhpmpyGBvzPf1c9RuBVgtzpDGIEpUrxIHqYsl4a9x4=; b=HRj45o8KDIT7+S+ZO1pLFpR9Ae
	5yYKSJUhjsG3oJHVzRNK6v6Vzf7I2lxkzBEdFf+RIvhnSPQK0P8nO+zU14A/kcYBXELGDQobumpY0
	WOwmjKD9ZQPEAJyzZEKrIfJDFtwHFF5HAGyQZfWCHkd8odUz8WLyJPppvkNOUtJDMFRXvVxvxie9R
	W8iQLCIGi8TU7/9c/5jFa/8ZdoTdWO1NgxIqU3awGGkBMLA3p8FJvgQ008YlMMqtO3cvVMrPMKItb
	BHr2g4dFUwr8X5tTwnQhocDPZZJRwX/J2v817hBH6Zy+wwc3O9CmJZ7Zd6mzVDzyKas4kHVglp73C
	IcOsXqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsQr-00GOjC-Cg; Mon, 23 Jan 2023 08:44:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJsQm-00GOiQ-Qo
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 08:43:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJsQk-0002RO-RQ; Mon, 23 Jan 2023 09:43:54 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJsQj-0005uf-5k; Mon, 23 Jan 2023 09:43:53 +0100
Date: Mon, 23 Jan 2023 09:43:53 +0100
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: John Watts <contact@jookia.org>, barebox@lists.infradead.org
Message-ID: <20230123084353.GQ24755@pengutronix.de>
References: <20230122150432.4096816-1-contact@jookia.org>
 <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
 <Y81upA0H8lA7qKQz@novena-choice-citizen>
 <CAP1tNvSgOGC3FgGpS8bJjf_WAMZd7RejsO_JCcGX4t8gYdrTzw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAP1tNvSgOGC3FgGpS8bJjf_WAMZd7RejsO_JCcGX4t8gYdrTzw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_004356_901433_5D9B723C 
X-CRM114-Status: GOOD (  13.18  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: Fix probing SPI drivers without a cs-gpios node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Jan 22, 2023 at 09:09:38PM +0300, Alexander Shiyan wrote:
> I dont know. I said how would I do it if it was my patch. I hope
> Sasсha will decide how it will be better.

I would also prefer a dedicated function that just returns 0 if there
are no CS GPIOs found.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


