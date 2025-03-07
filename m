Delivery-date: Fri, 07 Mar 2025 09:20:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSwi-00Aw3J-0n
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:20:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSwh-00005B-2t
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:20:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZ35Fv9a37e6Nn2eoykuK/h3oEnGl7URHp9WC+8yb4Q=; b=Kxh0/3rce9+jG+rnjVVk9gDl9J
	/kIjctLeSlZgoJZJ6AzQeVAvU0aofO5zXFQLynRfkyjTy0VogwmR6nlwIaBcinUcMIZUQd5lnjrTh
	uH9Rk/8pTVQRol67Aic6FAiu6LRpvofIPtmgFWrnG+Hl/nNmtIScT1ZR84Y6zgdwzGMHz0jn4kldu
	G4wrqlanTB66SKHTf6RGzNrX0KcZF1XhFCS/spYqu2FBT0aqkDLRhR/QwRFAiXqH/aHCGTPMhWdvc
	D96x2MF4Oe+ptHFA+wwpoQfWzdLgHuVXDgdMPJvh+l6hhPhavszTbfY1SzEJL7nC3xvwXnkcmfE7c
	Ki1EL+9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSwH-0000000DY4d-2aY6;
	Fri, 07 Mar 2025 08:20:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSwE-0000000DY3j-32PJ
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:20:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSwD-0008Sc-IE; Fri, 07 Mar 2025 09:20:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSwD-004SFw-1D;
	Fri, 07 Mar 2025 09:20:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSwD-0046aI-0z;
	Fri, 07 Mar 2025 09:20:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250305062101.25588-1-eagle.alexander923@gmail.com>
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
Message-Id: <174133560930.978587.2705746813753385202.b4-ty@pengutronix.de>
Date: Fri, 07 Mar 2025 09:20:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_002010_765501_754130C5 
X-CRM114-Status: UNSURE (   5.98  )
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
Subject: Re: (subset) [PATCH 1/4] at91:: Remove dead definition of
 atmel_nand_load_image()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Mar 2025 09:20:58 +0300, Alexander Shiyan wrote:
> atmel_nand_load_image() is not defined anywhere.
> 
> 

Applied, thanks!

[1/4] at91:: Remove dead definition of atmel_nand_load_image()
      https://git.pengutronix.de/cgit/barebox/commit/?id=b4f53ca046e0 (link may not be stable)
[3/4] at91: ddramc: Trivial code cleanup
      https://git.pengutronix.de/cgit/barebox/commit/?id=94bb3615d786 (link may not be stable)
[4/4] at91: Use proper values of stashed SAMA5D2/3/4 bootsource
      https://git.pengutronix.de/cgit/barebox/commit/?id=b70ae92dda7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



