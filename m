Delivery-date: Thu, 26 Jan 2023 09:13:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxNa-002TNC-Um
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:13:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxNX-0003Ta-Jq
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:13:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ogromn4v1VVOS194/qRrDrB9qi/2cjh8v7aGApTjQXk=; b=UCZUWzJnNE+3ZE5jhzkPCasliM
	Z8dWvtYDK4CXYEt04MQldY6vBZrPUcxf6IfT35AAmtnOfhsx6LOWzb+K8Hqm0QmCMtudy5V8TjXkA
	f1+CVjAQ7Ho8Li9WXpuOkJqhGGE9/iNKnnnx8KAMKYG6wuPGjuwrzGl1ZnjUPz19oMq6Q6BtcyNuk
	m3i9XaRC9pQCKvOOFZd/qdm2VGmb4lbSRyahCesgXHp2BDBwPsNN0dcf9SG/DrmiCGKqeoD/uK9Fd
	1+1t+pXxctRA7+h6XudeWIqERB4fQp/109e4YKsn20UF4QmjU1gX1NaspkjGuTb8RGWgPPjJhL3o1
	f0Kxl7SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxMJ-009xD2-IO; Thu, 26 Jan 2023 08:11:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxME-009xCW-GH
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:11:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxMC-0003IA-Fg; Thu, 26 Jan 2023 09:11:40 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxMB-0004JK-5K; Thu, 26 Jan 2023 09:11:39 +0100
Date: Thu, 26 Jan 2023 09:11:39 +0100
To: John Watts <contact@jookia.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230126081139.GF13319@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230125164230.2328043-3-contact@jookia.org>
 <20230125193940.mrgtbxuueixridtw@pengutronix.de>
 <Y9IxnqxbowcjOOZ/@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9IxnqxbowcjOOZ/@novena-choice-citizen>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001142_555318_A032CA70 
X-CRM114-Status: GOOD (  21.36  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/4] ARM: novena: Setup RAM using static configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 26, 2023 at 06:54:06PM +1100, John Watts wrote:
> On Wed, Jan 25, 2023 at 08:39:40PM +0100, Marco Felsch wrote:
> > Hi John,
> > 
> > this patch should be part of patch1 since without this one you can't
> > boot the board, right?
> 
> Yes, but I wanted to do a separate commit so I can document the origin of the
> code for the Git history and make it easier to review.

Normally you can put everything needed for a new board into a single
commit, but splitting it up in two patches as you did gives you the
opportunity to add a few lines to the commit message specific to the
SDRAM setup. Therefore I think it's good the way you did it.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


