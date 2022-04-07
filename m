Delivery-date: Thu, 07 Apr 2022 16:05:55 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSlo-00AWBU-H3
	for lore@lore.pengutronix.de; Thu, 07 Apr 2022 16:05:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ncSll-0002Qd-S9
	for lore@pengutronix.de; Thu, 07 Apr 2022 16:05:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oDeoI8FCKqyEMfDRkF6DE5vtQ3GuDSQmkaqQge4MffE=; b=rzBw/ApKk/sSvNklCL1ehaTnDS
	wB6S12vPWlinebYFIdQNjR26pIwEmzT0SbIwJ4MQuT0M13zsnLAVy1VyQ2xW3eOci8F1GgaezftxD
	fH2DmVBqc6lATTnzdgePID5VgHx8gggmLMHcwAmSzKAUxd5S/+dIafXQ1UHhcWswtPW45rXinc5/j
	gMMkh2sriiy095mQ5U1WdKHafkuKr/4RVqTtVwkxrBI+r8jotiUhJqkjM2hyti7ir95W98WbTkRQu
	CaUqrvyjV3bqvZ+3EbsyBhaNVketQSTVwjtP/1OfWMutOa7Tdrv5mA+cJorbhDQF56dp5d37y/ICS
	UlfpJUyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncSkS-00CICq-Tx; Thu, 07 Apr 2022 14:04:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncSkL-00CIA3-JS
 for barebox@lists.infradead.org; Thu, 07 Apr 2022 14:04:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSkJ-0002Bg-Vq; Thu, 07 Apr 2022 16:04:23 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncSkJ-0007Z0-N5; Thu, 07 Apr 2022 16:04:23 +0200
Date: Thu, 7 Apr 2022 16:04:23 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220407140423.GK4012@pengutronix.de>
References: <20220407091604.956577-1-o.rempel@pengutronix.de>
 <20220407091604.956577-11-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220407091604.956577-11-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:58:48 up 8 days, 2:28, 73 users, load average: 0.10, 0.21, 0.30
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220407_070425_657024_02F61D2E 
X-CRM114-Status: GOOD (  17.45  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 10/12] net: dsa: add support for SJA11xx switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Apr 07, 2022 at 11:16:02AM +0200, Oleksij Rempel wrote:
> Port SJA11xx driver from u-boot v2022.04-rc2 to provide support for NXP SJA11xx
> series of switches.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig   |   17 +
>  drivers/net/Makefile  |    1 +
>  drivers/net/sja1105.c | 3000 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3018 insertions(+)
>  create mode 100644 drivers/net/sja1105.c
> 

[...]

> +	ds->ops = &sja1105_dsa_ops;
> +	ds->needed_headroom = VLAN_HLEN;
> +
> +	dsa_register_switch(ds);

See my review for v1.

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

