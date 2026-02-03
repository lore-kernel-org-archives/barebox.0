Delivery-date: Tue, 03 Feb 2026 12:09:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEHP-008NS7-03
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 12:09:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnEHO-000051-2b
	for lore@pengutronix.de; Tue, 03 Feb 2026 12:09:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3QM13we+mXoejtun9KkrKWhHG4MQh+8quVWMnGup+O8=; b=AZb4HCrTADWjqQvnRFQKAYxDVZ
	dAJp71T82dfcMC6H/zEdGePREd3RzQwn2ZPcFgqy9rYDk2KDkConhyOUh0QveXabbApW7MmwPQyYo
	vD5wh6TIspxiuBAAkI+M221Jrm+H61DS1c4I+pnq+mUEOPTO8O2Mdge9EWHp/1EhxX0U9EufM+B6D
	0AKvNrz0RwqEl4YTFA+GW+LazPqBQo/W1LeL4QRhsT+u5WFVcRjeTDhNHFjR9UwEPXva98Jn8nGtO
	Uf1Al5/zwvQZXE8c2Hy3fOWpyS72vTnBwrDvFKW9cS5x7WEpHc4qIHcg0bZXHYHKe/7lT5RTVzlvu
	rUEjyqLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEGz-00000006WEi-22dG;
	Tue, 03 Feb 2026 11:08:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnEGx-00000006WDt-0GMq
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 11:08:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEGv-0008P8-H6; Tue, 03 Feb 2026 12:08:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEGw-003tPR-00;
	Tue, 03 Feb 2026 12:08:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnEGv-00000008GJh-37QY;
	Tue, 03 Feb 2026 12:08:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260129114000.3238194-1-s.hauer@pengutronix.de>
References: <20260129114000.3238194-1-s.hauer@pengutronix.de>
Message-Id: <177011692127.1969208.13713542018476997639.b4-ty@pengutronix.de>
Date: Tue, 03 Feb 2026 12:08:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_030843_102480_918AD016 
X-CRM114-Status: UNSURE (   7.12  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvmem: k3: add regulator support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 29 Jan 2026 12:40:00 +0100, Sascha Hauer wrote:
> K3 SoCs need an extra vpp for writing fuses. For boards which have that
> controllable add regulator support to the K3 OTP driver. The regulator
> is turned on before writing and turned off after writing.
> 
> 

Applied, thanks!

[1/1] nvmem: k3: add regulator support
      https://git.pengutronix.de/cgit/barebox/commit/?id=2100f32ba0ee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



