Delivery-date: Wed, 21 Sep 2022 13:03:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaxVp-00BFfX-3L
	for lore@lore.pengutronix.de; Wed, 21 Sep 2022 13:03:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaxVn-0005qD-O3
	for lore@pengutronix.de; Wed, 21 Sep 2022 13:03:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZV523uhNgXth/nU6g133qKuR++IZ9bfvSr2xll8mTx4=; b=ejC7G62wNseZss0oZPW+p4MGO4
	whMbJwC/hxST1XktHxK+GXFlQZuM97N0aN8GFvfENlH78SU7xM5RYY/KswwHjr7ZAcX88BedQKfX/
	LQCFWoMnyQRmt8H16J2UAHo1Z20Jm8zq4ibMvI1zc6mXjamxnTpP9ejUm2EV7gVLEjm29W+h+mVSO
	dnXJBE0r5sqmfpA4FbQulV3Jn9J23t6QMQhdod0aYUiD/qjTp0ZVlOt5w2Yx1gYOKc41o3jl/tuL6
	dv/53hX89zhWKwWLtlL88PJQlkO39dFjhhOPzZuyuQDEBlJQoYsmWN80wFmQbdXrlk6MMQXagjYgn
	m6x5cqHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaxU6-00B2PX-Lq; Wed, 21 Sep 2022 11:01:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oawJf-00AZNY-TL
	for barebox@lists.infradead.org; Wed, 21 Sep 2022 09:46:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oawJe-00044M-1G; Wed, 21 Sep 2022 11:46:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oawJd-0004nT-Cy; Wed, 21 Sep 2022 11:46:49 +0200
Date: Wed, 21 Sep 2022 11:46:49 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220921094649.GC986@pengutronix.de>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
 <20220919113948.991245-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220919113948.991245-2-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_024651_987201_30A23871 
X-CRM114-Status: GOOD (  21.73  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/7] soc: rockchip: add driver for rockchip io domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 19, 2022 at 01:39:42PM +0200, Michael Riesch wrote:
> The IO domains in Rockchip SoCs need to be configured to match the
> corresponding bank voltage. In Linux this is achieved by means of a
> platform driver that reads the voltage value of the supplies and
> configures the bits in the general register file (GRF) accordingly.
> Port this driver to barebox to provide support for the Rockchip
> RK356x SoCs.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  drivers/soc/Kconfig              |   1 +
>  drivers/soc/Makefile             |   1 +
>  drivers/soc/rockchip/Kconfig     |  17 +++
>  drivers/soc/rockchip/Makefile    |   6 +
>  drivers/soc/rockchip/io-domain.c | 223 +++++++++++++++++++++++++++++++
>  5 files changed, 248 insertions(+)
>  create mode 100644 drivers/soc/rockchip/Kconfig
>  create mode 100644 drivers/soc/rockchip/Makefile
>  create mode 100644 drivers/soc/rockchip/io-domain.c

There's nothing in this driver that makes sure it is probed before the
users of the io domains. What happens when the users are probed before
the io domain driver?

Normally I would expect that the consumers have some phandle to their io
domain, but there's nothing like it in the device trees.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


