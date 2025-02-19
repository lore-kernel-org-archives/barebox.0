Delivery-date: Wed, 19 Feb 2025 13:14:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkiyN-004Iyg-2b
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 13:14:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkiyM-0000Bz-KW
	for lore@pengutronix.de; Wed, 19 Feb 2025 13:14:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y0qNHVY04/PMqWCh4NVHPkpJtoebw9qUHyri+PKi7uw=; b=wWWlZDmLRo5treiX5oB6BvoYvy
	s/6C3354rEL4nQvDaWYKZkrj/7WQ4MaLtCe+W9EuzkEuztB9gWZzWvwcVqHmB7UYaK40beXT3HurB
	nollALSR7xW8b3RS5PuYoU+TcVlu+jrrHB8U+0O/DmF8scFbRetR5v/SX0QPLXq/ZUOyTmDiMNri1
	Y79HxTeZiP6ucPKMIEXEALLDU0FugJXqYfHIBZwlhQgN+1zNVPgntfsW1pK/JtCJdJueiPOKD+WJF
	iyJbS5wc3VKdsuqfXsLAkX1p86v+IB0ADT1roFA9cSB4d1ntkW86dvZYAQ95rp+9gPDy6ZXSIISZA
	phobP0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkixc-0000000Cbjm-2zGe;
	Wed, 19 Feb 2025 12:13:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkixZ-0000000Cbha-17fL
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 12:13:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tkixV-0008VK-UB; Wed, 19 Feb 2025 13:13:45 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkixV-001lIJ-2P;
	Wed, 19 Feb 2025 13:13:45 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tkixV-006FmR-24;
	Wed, 19 Feb 2025 13:13:45 +0100
Date: Wed, 19 Feb 2025 13:13:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z7XK-T1R6HHU99p_@pengutronix.de>
References: <20250218140407.1224499-1-s.hauer@pengutronix.de>
 <20250219104329.toyskdpkbtwftatc@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250219104329.toyskdpkbtwftatc@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_041349_305653_475EDF3E 
X-CRM114-Status: GOOD (  22.43  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX6: Enable PBL_VERIFY_PIGGY with HABV4
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Feb 19, 2025 at 11:43:29AM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 25-02-18, Sascha Hauer wrote:
> > Some i.MX6 configurations use the xload mechanism. With this the ROM
> > only loads and verifies the PBL. The PBL will then load barebox proper.
> > Without verification the barebox proper binary is untrusted and could be
> > modified. Select PBL_VERIFY_PIGGY when HABV4 is enabled to ensure the
> > barebox proper binary has not been tempered with.
> > 
> > boards not using the xload mechanism don't need this option, but there
> > is no good way to detect currently if the xload mechanism is used, so
> > these boards will have to live with a slightly increased binary size
> > for now.
> 
> I hav no objections but do you have numbers? There are many i.MX6 based
> systems which do use a spi-nor with limited amount of space already
> facing size issues since barebox is becoming bigger and bigger.

Enabling PBL_VERIFY_PIGGY increases the PBL by about ~6k on ARM/ARM64.

We could add the select to MCI_IMX_ESDHC_PBL instead. The SPI xload
code doesn't have a corresponding Kconfig symbol though, so we would
have to add that first.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


