Delivery-date: Mon, 30 Jun 2025 10:07:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9XY-00CYet-2C
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:07:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9XY-0007HV-5n
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:07:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uuSzQ3SOKUcZGsLF5/A4T+S9cxLqMIbnPS7BRS2AIcY=; b=3OMY2LOnJjdN+xEGjnaoJZlLEm
	vaNAC+DlpUGSWk3NauKnWBKT27NCCwdLMusRHDcXGopAUwE11WhWoIbFw80sl0vF9hLGODYGduIpM
	cHv45x3vmHSwxiLWF6P9kcQtR0N95YQ051zrfi6wmK9wEOGgZpJiQxXEDQc9A3nORfsOF2j/j1niy
	4OB6dRY48pzf5mbx7qoI2+QRL0KGKsACxRyejIrCEfXoCCxbay71OAFYmYC0FRrx4uJXDwH9Ev8t/
	QxIlhOHQ6RiLk4KvmPSDZyqp9BTJ64DSUoaVSXdgHEEedrsIAANBDKv9z0QGkKyuvpn68dSS7vIJR
	B2mmDgDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9X8-00000001ZO2-1Wjg;
	Mon, 30 Jun 2025 08:06:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9X5-00000001ZMZ-2QQs
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:06:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9X4-0006Y6-D3; Mon, 30 Jun 2025 10:06:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9X4-0064R1-02;
	Mon, 30 Jun 2025 10:06:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9X3-006FkM-30;
	Mon, 30 Jun 2025 10:06:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bo Sun <bo@mboxify.com>
In-Reply-To: <20250627122811.1051283-2-bo@mboxify.com>
References: <20250627122811.1051283-1-bo@mboxify.com>
 <20250627122811.1051283-2-bo@mboxify.com>
Message-Id: <175127078992.1488485.10389133863792563049.b4-ty@pengutronix.de>
Date: Mon, 30 Jun 2025 10:06:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010631_622347_968ACDCD 
X-CRM114-Status: UNSURE (   6.86  )
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
Subject: Re: [PATCH 1/1] spi: convert transfer delay to new spi_delay
 struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 27 Jun 2025 20:28:11 +0800, Bo Sun wrote:
> Replace the deprecated delay_usecs field with the new spi_delay struct
> in spi_transfer structure. Update spi_transfer_one_message to use
> spi_delay_exec and the mc13xxx driver to use the new structure.
> 
> 

Applied, thanks!

[1/1] spi: convert transfer delay to new spi_delay struct
      https://git.pengutronix.de/cgit/barebox/commit/?id=b66fab5c7425 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



