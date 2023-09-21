Delivery-date: Thu, 21 Sep 2023 14:33:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIrw-005s17-8x
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:33:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIru-0002pC-6c
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:33:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oXrF4wTKAQvS0jDnGRv6JUAkoCbCjOgXamjpifLOqdI=; b=vyJDvCPNBbdicRcCYAX+T+X43Z
	jnRzFy8r2GZvuckBXU3oLnTeyZFj7sb4lxeiF6RS+EQWFpsDPeTeDOugisttqbsdMV1Sjpzm5ow56
	epFNAfpdh3BURszPHIM/r6kgvGFSF3vlWEgV9DsOWX/Kpgp90bHQkYlC42gL8pCvi3Qs85pj5pn56
	DYoQV4+PXar5dThAXOlf2kitRoTd21Evgas+6yre1HIZ0x9xkx12mlE2u7MmWjAUOBW108a2TkkQH
	RhSZtNB7WOKTYvfL+Bdl86erfgIKN5/AWae56TQ10u3Vh+nT5HFwy+80nDll8Ryu4Q5SscKbkbxrF
	DtT3pFZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIql-0061gz-1R;
	Thu, 21 Sep 2023 12:32:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIqi-0061gX-29
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:32:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIqh-0002Sq-AK; Thu, 21 Sep 2023 14:32:03 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIqg-007vIj-S9; Thu, 21 Sep 2023 14:32:02 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIqg-00Al20-Py; Thu, 21 Sep 2023 14:32:02 +0200
Date: Thu, 21 Sep 2023 14:32:02 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921123202.GN637806@pengutronix.de>
References: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921102310.1108543-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_053204_725570_83C89EB4 
X-CRM114-Status: GOOD (  13.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] rsatoc: make useful for standalone RSA keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 12:23:05PM +0200, Ahmad Fatoum wrote:
> Standalone RSA public keys are those that aren't part of the default
> keyring used for FIT verification. This can be useful if barebox is to
> do board-specific RSA verification of e.g. unlock tokens.
> 
> This series lays first ground work.
> 
> Ahmad Fatoum (4):
>   scripts: allow user to build rsatoc if COMPILE_HOST_TOOLS
>   rsatoc: support extracting RSA public key from X.509 SPKI format
>   rsa: fix typos and missing type definitions
>   rsatoc: support generating standalone keys unreferenced by FIT keyring
> 
> Rouven Czerwinski (1):
>   rsa: escape pkcs11 string passed to RSA command

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


