Delivery-date: Mon, 07 Feb 2022 09:06:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGz2t-0084C9-Hu
	for lore@lore.pengutronix.de; Mon, 07 Feb 2022 09:06:47 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nGz2s-0003yS-4j
	for lore@pengutronix.de; Mon, 07 Feb 2022 09:06:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cSLS6otJH5ZRxfBvW3z9IT3LRixWsCSpGj0dnABFNoM=; b=FEcyzS4CCa6jLKnALOH8enHli2
	LSx4vp4fYC6EH7BUp4ljOBTQ6WaSMEUHsTb4GgZUE5c86wPQHcKdCVlZWDuGYo3stxRsX5VPQMwY5
	HocM7jCYZmp+maIF890H4m5igxmmsOKi1hvIAmKqqxOssxEdNhQC1dvAfts8ZETVR6X73P7c/nMdf
	CjSaHZnfWolGvRPHBxk3oSbG66JW2UTbqpTOCipCiuo1gSXNwnvaFbRswBe1QH1h2s/KzBYMx9yrR
	UvWRW8GT2wOzwVfO8eVXfsbD2mX91u5sGkhhMrok/u/TbT/GnbkZvFG8Z1hNzKcIFYpYNf7RWq7e0
	TfhCD49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGz1k-009IQh-5L; Mon, 07 Feb 2022 08:05:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGz1f-009IQM-PW
 for barebox@lists.infradead.org; Mon, 07 Feb 2022 08:05:33 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGz1e-0003me-CY; Mon, 07 Feb 2022 09:05:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nGz1e-0004U4-3r; Mon, 07 Feb 2022 09:05:30 +0100
Date: Mon, 7 Feb 2022 09:05:30 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220207080530.GP23490@pengutronix.de>
References: <20220203104552.3158202-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220203104552.3158202-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:05:18 up 58 days, 16:50, 68 users,  load average: 0.45, 0.40, 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220207_000531_868961_73B0732E 
X-CRM114-Status: GOOD (  19.66  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 0/6] refactore rpi board code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 03, 2022 at 11:45:46AM +0100, Oleksij Rempel wrote:
> changes v3:
> - make bcm2835 mbox to probe on first request solve dependency issue.
> - remove phybases from clk driver
> - move deep-probe to the separate patch
> 
> changes v2:
> - rework clk driver to properly support deep-probe
> - remove currently not supported compatibles from board code
> - reduce struct size
> - rework rpi_get_dcfg to return *dcfg directly
> 
> Oleksij Rempel (6):
>   ARM: rpi: convert board code to a driver
>   ARM: bcm2835 mbox: drop driver mode and probe on first request
>   ARM: rpi: move clk support to a separate driver
>   ARM: rpi: validate devicetree compatible instead of changing model
>     name
>   ARM: rpi: set host name based on DT compatible
>   ARM: rpi: enable deep-probe support

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

