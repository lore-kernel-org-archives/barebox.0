Delivery-date: Tue, 18 Jun 2024 08:17:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS9S-007zff-1s
	for lore@lore.pengutronix.de;
	Tue, 18 Jun 2024 08:17:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJS9S-0008Oi-1d
	for lore@pengutronix.de; Tue, 18 Jun 2024 08:17:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9WpbxluY5Bd/07VY/i8EsTpt7gXrKBRkdOW2+D+G/cA=; b=vNFMyI3sir7CP16rj279b5Ay8r
	yZrmE17lIYa3o5Z/8WlUNeMHXm2ABduA6bQKT7PW0zCjPkuE8Q8Q/wKYf00BBiIrs9265XlLGXVBX
	7wK3equ5I8uMcVxTMO832G2oeeUIg2BGrxsvpL389j01vFGi9vOzUSVAZLSV9szFzJCOrD28t7Z5A
	PTj6StRvs6kd8xpmc1R42OVFF/oJ8iaBvZwRVp96qFh6JskZwg29MWDWRzT3z3AREGCCEJQtUkOqg
	1j+mvmHAIHK2S8qmcMg+IIFTql0eGiQ776gfCP1AUdCRoij/vHCSry2ZKwLUjUQvEi2fI/dt3rFhv
	rRQpWTNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS8z-0000000DlSM-3doo;
	Tue, 18 Jun 2024 06:16:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJS8u-0000000DlRV-1JrU
	for barebox@lists.infradead.org;
	Tue, 18 Jun 2024 06:16:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS8s-0008JM-Ss; Tue, 18 Jun 2024 08:16:30 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS8s-0039sK-FT; Tue, 18 Jun 2024 08:16:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJS8s-00G3Jr-1K;
	Tue, 18 Jun 2024 08:16:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240617114200.1547118-1-a.fatoum@pengutronix.de>
References: <20240617114200.1547118-1-a.fatoum@pengutronix.de>
Message-Id: <171869139040.3825982.9226798493041795215.b4-ty@pengutronix.de>
Date: Tue, 18 Jun 2024 08:16:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_231632_383061_0F3A3888 
X-CRM114-Status: UNSURE (   7.79  )
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
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] misc: add /dev/port device for I/O ports
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Jun 2024 13:42:00 +0200, Ahmad Fatoum wrote:
> For MMIO, we have /dev/mem and the iomem command, but for I/O ports, we
> only have the ioport command and no way to access I/O ports from shell.
> 
> Add a /dev/port device that interacts directly with I/O ports.
> 
> 

Applied, thanks!

[1/1] misc: add /dev/port device for I/O ports
      https://git.pengutronix.de/cgit/barebox/commit/?id=31fd5d0d3b25 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



