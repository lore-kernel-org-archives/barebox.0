Delivery-date: Mon, 13 Feb 2023 10:01:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUiS-0062uR-Qw
	for lore@lore.pengutronix.de; Mon, 13 Feb 2023 10:01:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pRUiQ-0002tB-97
	for lore@pengutronix.de; Mon, 13 Feb 2023 10:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v0LXhqphNB8zYL+Cu2QPF5NJyAUH2pNZvMyWKNJ6Eeo=; b=Fy5PPKZuvF5YhJRxBd0I7l+A0c
	Gdv72gm8VaEi3yPgbPkuQV6rQz+5Fj/kSThq6FMVNUXWxCWbnTUkSH92iuoHBSDMxI6UwfpDwnnoo
	7TLSf1brNUEWWKaAzkpaRASfCx1D0GzYxjE7TD56fYYtoTNKoiRF5ba/i9tCDmx/XiJBLgjtiTMie
	cASmFZdztyammKz4vA1mFLyH6NSuHF7pz94PaNCXINmmdl+atyikQuL34j14Ke7abcZ5DPwEc5zDP
	SCAobyvt5qrV0iGOmpmiEZKMGcQLv+OLsa+23NsPjyZkYMCs2WEo9y3F53jHMYL6pMQngM/TpWf9r
	+bP4Go1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUh4-00Dhpt-KT; Mon, 13 Feb 2023 09:00:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRUgw-00Dhnu-RC
	for barebox@lists.infradead.org; Mon, 13 Feb 2023 09:00:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUgv-0002KW-Cg; Mon, 13 Feb 2023 10:00:05 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pRUgv-00080A-4L; Mon, 13 Feb 2023 10:00:05 +0100
Date: Mon, 13 Feb 2023 10:00:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Denis Orlov <denorl2009@gmail.com>
Message-ID: <20230213090005.GG10447@pengutronix.de>
References: <20230210143924.915149-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230210143924.915149-1-denorl2009@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_010006_974127_C2A3DD97 
X-CRM114-Status: GOOD (  14.34  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] make e1000 work on MIPS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 10, 2023 at 05:39:22PM +0300, Denis Orlov wrote:
> With these changes, e1000 driver now works on MIPS Malta in QEMU with
> the corresponding network controller attached:
>   -netdev user,tftp=/tftpboot,id=net0 -device e1000,netdev=net0
> 
> Antony Pavlov (1):
>   net: e1000: properly map dma allocations
> 
> Denis Orlov (1):
>   dma: use virt/phys conversions when no dma_offset is specified
> 
>  drivers/dma/map.c         | 25 ++++++++++---------------
>  drivers/net/e1000/e1000.h |  2 ++
>  drivers/net/e1000/main.c  |  8 ++++----
>  3 files changed, 16 insertions(+), 19 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


