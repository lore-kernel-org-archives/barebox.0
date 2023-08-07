Delivery-date: Mon, 07 Aug 2023 11:25:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSwUm-00Aqr5-Bd
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 11:25:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSwUk-0007sy-Mv
	for lore@pengutronix.de; Mon, 07 Aug 2023 11:25:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9VDgMvMbQDCIQhtNpkDzxW+r1Mw1vcmWNjsQeAPqYCo=; b=Dt13M+7g5sP+4nOjNdinQ/jqHt
	P3QUiWyGutjsW6a7J27cpknSS47tme2GfTcY4eiU7mb9CZFqmnnVlU36Ac1ODLTKPO8uSfY0ScuMF
	jJ9MP6CWaQkm9qoJwxVyf8lmMg0T91UkU0DvFiOcPIZ9YGZDqQlKjxG2Y6n6p70LCcswkwco9WTe2
	69GaF7oNFRN3+l5rVOoVhyhRhy9oiYyKUUoF1nzV0TIY5emz/x6U2fgeRAQDRiSPA5k639QE76Ffo
	u78QI4BOYo9ozWu/oQ9HIJ/wHq9nq4gt7ucGLKfU5TiGuXa9euHUP+LMa6dczauxdjSexpxXLOJDL
	EjYlQ6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSwTV-00GYu7-2G;
	Mon, 07 Aug 2023 09:24:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSwTR-00GYsR-39
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 09:24:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSwTO-0007Wk-FG; Mon, 07 Aug 2023 11:24:22 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qSwTO-0006Yg-1K; Mon, 07 Aug 2023 11:24:22 +0200
Date: Mon, 7 Aug 2023 11:24:22 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230807092422.GN26314@pengutronix.de>
References: <20230803103238.51706-1-eagle.alexander923@gmail.com>
 <20230807065945.GJ26314@pengutronix.de>
 <CAP1tNvSY9v1s3oy9vNj0m1E14Pvxi_2a_Q9E6rE_GaTXj6+53g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvSY9v1s3oy9vNj0m1E14Pvxi_2a_Q9E6rE_GaTXj6+53g@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_022426_013843_E1FBD09D 
X-CRM114-Status: GOOD (  17.43  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] memory: Add driver for FMC2 External Bus Interface
 on STM32MP SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 07, 2023 at 11:30:25AM +0300, Alexander Shiyan wrote:
> Hello.
> 
> Please do not apply the second part of the patch to git. NAND chip
> detected, but read/write operations are not performed correctly. I'll
> deal with it.

Ok, in that case I drop the whole series for now, just in case you find
a problem in the FMC2 driver as well. In the end we won't need the FMC2
driver without any client.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


