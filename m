Delivery-date: Fri, 27 Sep 2024 13:28:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98r-003NvM-1B
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 13:28:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98r-0001b0-Ry
	for lore@pengutronix.de; Fri, 27 Sep 2024 13:28:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3FhPCm6E/2tHNCOAzHQL+PVLibSQhy2AVxIcYojUfY=; b=wijNs2+2xxQVNfBAo3R7cJ64xc
	BvTRzMHyHfHv3qRGwWgH8TklpYS1466vmAD5lyB7D2UEJjDXrDAhrq2VEp+SfYFRotOcBAa92VPxS
	1kNTNtPH4+2H32hMbeQnVBNUuxV2jr0l55GgNjk1601+e+oISEn4wKjOjQcbcSsF7NEjQoFJ4eS7g
	SUeGkx93v5DPh7jf7Ajcpa+qrzRjXP9ZF1dYLHKPbzj2vGEhP4wTB3KNK9dNXcj81XIa3OKYCZUfg
	EMwPX5PmMTYOCoetZJW1pE8xcP4nGyr6Rol+hkW1PSXQgGJX5YCQWhh00VpM6R9wVv20I68hvSDN6
	Iq/SNy+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su98L-0000000Awzx-32sO;
	Fri, 27 Sep 2024 11:27:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su94Z-0000000AwPN-00fl
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 11:23:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1su94X-0007vM-Ld; Fri, 27 Sep 2024 13:23:41 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1su94X-001uY9-95; Fri, 27 Sep 2024 13:23:41 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1su94X-00F2Z5-0d;
	Fri, 27 Sep 2024 13:23:41 +0200
Date: Fri, 27 Sep 2024 13:23:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZvaVvWEecdNBwibl@pengutronix.de>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <172743618054.116559.8093415204739250402.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172743618054.116559.8093415204739250402.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_042343_220001_F0F8D868 
X-CRM114-Status: GOOD (  20.73  )
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
Subject: Re: [PATCH v4 00/16] Add ECDSA support for FIT image verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Sep 27, 2024 at 01:23:00PM +0200, Sascha Hauer wrote:
> 
> On Fri, 13 Sep 2024 09:59:08 +0200, Sascha Hauer wrote:
> > This series implements ECDSA signature verification for FIT images.
> > The ECDSA code itself is taken from the Kernel. Currently only supported
> > way to specify a ECDSA key is to compile it into the binary using
> > CONFIG_CRYPTO_PUBLIC_KEYS, taking it from a device tree is not yet
> > supported.
> > Since v2 this series unifies the way public keys are passed to barebox.
> > We now have a single Kconfig option which takes a list of public keys,
> > which can be either RSA or ECDSA keys.
> > 
> > [...]
> 
> Applied, thanks!

With afas comments integrated of course.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


