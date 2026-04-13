Delivery-date: Mon, 13 Apr 2026 16:35:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCINY-00BkOX-36
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:35:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCINY-0000Qn-FW
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:35:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cfePfHXN+t2nmCAWd0BNzt1+hupflo4JEV+e5QKMYzw=; b=siH6rA7BIziZkrqbjDyT/3aF4S
	iBNz4DKCfnXHypLgT5hzhvmpmMcBqtWdIytaivBvAYUBIiDcUq6ioZWXNfPBPGANWcLsdwH2FHmLm
	/xHPORsW6dYMuujI4hpjPIH/F6WV2x9MBbvOIVxB2jPAk/UTyMYVmu/jjhYamy/2yC7mLffsCHqoI
	3HvkZdifeLokMkEgWqQ6ryan1rncSxbDNNiXuaj6eCEiVz/eHJPfmKnI4HraBXvJuEJ2wX8KGCw+Y
	rFGYL5oEIj6qtjHN0SRtxfeyU3qmLn1jyxQF4bjTsZg06K+fvkkbB5NMvSSVfmwLdotKgNEczgxad
	4iFFFF8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCINE-0000000FsFQ-3a91;
	Mon, 13 Apr 2026 14:34:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCINC-0000000FsF4-3vSO
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:34:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCINB-0000IQ-F3; Mon, 13 Apr 2026 16:34:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCINB-005Bkj-0g;
	Mon, 13 Apr 2026 16:34:45 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCINB-0000000Eylp-0dAg;
	Mon, 13 Apr 2026 16:34:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260320135744.3624480-1-s.hauer@pengutronix.de>
References: <20260320135744.3624480-1-s.hauer@pengutronix.de>
Message-Id: <177609088514.3570158.2725576459300896677.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:34:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_073446_974965_38777F16 
X-CRM114-Status: UNSURE (   5.05  )
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
Subject: Re: [PATCH] tee: drivers: rksecure: improve logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Mar 2026 14:57:44 +0100, Sascha Hauer wrote:
> Add a pr_fmt string to give error messages more context. Also we have
> "invoke func failed with" message three times in the code, make them
> unique.
> 
> 

Applied, thanks!

[1/1] tee: drivers: rksecure: improve logging
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf43bf08dd24 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



