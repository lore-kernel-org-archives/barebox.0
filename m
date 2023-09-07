Delivery-date: Thu, 07 Sep 2023 23:06:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeMCj-007Tn6-Og
	for lore@lore.pengutronix.de; Thu, 07 Sep 2023 23:06:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeMCh-0007EM-9b
	for lore@pengutronix.de; Thu, 07 Sep 2023 23:06:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UpgphnAiprjeuudF6D327gMrLdfF4aY+W43TjLJvPfU=; b=EQAL2Dd1G3Hf5Gsd4fEW8ZYJSy
	t4DmVEst72tsBTyejkjGOh307IE4vbw8th2bIOx0ECQjN+UZFmYVTpYrLS8i1ShFgid7jHfOCykpe
	w7oqiud7fMcQJOSISZJLvAKrMlBAtSqEChTmrHzeY15Tr/zoj72CucT5ulUnP4JVms9u+ArGkFcYO
	rNrFM2hmvMb9UhUp9VghikNgGHhfbL8D/+HJTty6Dsc/h3K3VQVjSPGlLOV1NxhXqzRfmhoeVzJu5
	n73iP+t82oqw11lDJKrKHrhc13fOdv5risVU1BkKfCw5x3AKz/mcmfeStDYQZ4PqLh9/97eXYyV25
	cZoQrqug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeMB6-00Cgbw-32;
	Thu, 07 Sep 2023 21:04:40 +0000
Received: from relay3-d.mail.gandi.net ([2001:4b98:dc4:8::223])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeMB3-00Cgaq-0j
	for barebox@lists.infradead.org;
	Thu, 07 Sep 2023 21:04:38 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 131C460005
	for <barebox@lists.infradead.org>; Thu,  7 Sep 2023 21:04:27 +0000 (UTC)
Date: Thu, 7 Sep 2023 23:03:32 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Message-ID: <ZPo6pGwAwVJr5b7U@tour>
References: <20230907152047.102747-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230907152047.102747-1-jmaselbas@zdiv.net>
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_140437_434721_5C5FE478 
X-CRM114-Status: UNSURE (   4.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] decompressors: Update xz to include ARM64 BCJ
 decoder
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> +config XZ_DEC_ARM64
> +	bool "ARM64 BCJ filter decoder"
I've just noticied that this string makes this config entry visible
in menuconfig, while all others are not.
It should be only: `bool` without anything else afterward.

cheers
Jules


