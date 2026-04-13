Delivery-date: Mon, 13 Apr 2026 16:59:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIlL-00BkkJ-2A
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:59:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIlL-00036u-5E
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:59:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ESARXFUPaKrIg0uuJHUQnfDEvQlLFktCHgqTdP664w4=; b=28dtqDqyvl8iCoiyAdZee9toLF
	6P141h9/svLFuDRMB49HNkcjiq8m0YqA+xHZ4g2V7JEb+5JYBvNf+38aWP4dBpPiHgVKPibXZ2olU
	/Xj9yQSVz2r3xd9tqvjouGXpOZAeb9yI7QIFRvZ8btC1zxC4BeJw+l6wRjCuZXyIIXroB+Fcimeqj
	uEk71A7XW4cxYznVOR1zZa2JtFWvdnmvjlFyc2WZRIGt6N7ChczrrDHQzj0Ci60dZ7O5eDMIZvNpu
	i+q4APTGOugVj5XU7dDJTKRqcvcuiaEkZ8YQZVu4xPGY3FNa34LexGLuTgjZy2JaQ5vPTtnsPXmf2
	yQn6pdLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIl0-0000000Fuqm-16hh;
	Mon, 13 Apr 2026 14:59:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIky-0000000Fuq5-10hS
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:59:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIkw-00033G-Ey; Mon, 13 Apr 2026 16:59:18 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIkw-005BnG-0u;
	Mon, 13 Apr 2026 16:59:18 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIkw-0000000G2C4-0taI;
	Mon, 13 Apr 2026 16:59:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260413134913.3572223-1-a.fatoum@pengutronix.de>
References: <20260413134913.3572223-1-a.fatoum@pengutronix.de>
Message-Id: <177609235821.3821292.2506996164520083176.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:59:18 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_075920_279215_406E5E97 
X-CRM114-Status: UNSURE (   4.66  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: remove non-existent brcm,bcm2708-usb
 compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 15:49:13 +0200, Ahmad Fatoum wrote:
> There are no traces of this compatible in either barebox or Linux,
> so drop it.
> 
> 

Applied, thanks!

[1/1] usb: dwc2: remove non-existent brcm,bcm2708-usb compatible
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e55bedf4d14 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



