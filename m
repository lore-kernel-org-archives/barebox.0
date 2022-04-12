Delivery-date: Tue, 12 Apr 2022 10:27:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBre-00GzLf-BW
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:27:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBrb-00005i-K7
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:27:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7Aj6yV+mgeZxYAyjtwB8lvnUySUXXiyD+H4mppFViKU=; b=0h3c0HCg7WD2mT8l4CWfxpzdJP
	seg9yHOHS5LDEtOHWBPncdbL6wtMuwVPQeKdiy6CD1BlC88lyUoAYSWQKywr6rX46kFUnHQhJPsmn
	mjoXKYDqRPH3DW7HHGNpXcCTkJmRmot55mWr2onmUvdKpdImfahPocrgUpTD3Je8zWbZ71VUVYF4x
	kI/WJ34SNtDWYaFi5O1qHH/nSCMPaMV27s9pAAz1Z7uuD7VKKA9Fs6rF4p9Wi7ngiJu1pEqIk0bo1
	jVCj0EufQyfCV9BxBiEUn8XX0KgglHZh8DGE7mzRRyT4N5LqvnMVM/q+kGlcbLRXwcaK2aHa4vUu7
	aq6oc/WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBqO-00CXdH-Bg; Tue, 12 Apr 2022 08:25:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBqJ-00CXbS-AS
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 08:25:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBqH-0008C4-T1; Tue, 12 Apr 2022 10:25:41 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBqH-0001xY-KC; Tue, 12 Apr 2022 10:25:41 +0200
Date: Tue, 12 Apr 2022 10:25:41 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220412082541.GX4012@pengutronix.de>
References: <20220408082950.824927-1-o.rempel@pengutronix.de>
 <20220408082950.824927-12-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408082950.824927-12-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:06:19 up 12 days, 20:35, 66 users,  load average: 0.10, 0.22, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_012543_402306_C7890444 
X-CRM114-Status: GOOD (  19.13  )
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
Subject: Re: [PATCH v4 11/13] net: dsa: add support for SJA11xx switches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 10:29:48AM +0200, Oleksij Rempel wrote:
> Port SJA11xx driver from u-boot v2022.04-rc2 to provide support for NXP SJA11xx
> series of switches.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/net/Kconfig   |   17 +
>  drivers/net/Makefile  |    1 +
>  drivers/net/sja1105.c | 3005 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3023 insertions(+)
>  create mode 100644 drivers/net/sja1105.c
> 
...
> +static const struct of_device_id sja1105_ids[] = {
> +	{ .compatible = "nxp,sja1105e", .data = (void *)SJA1105E },
> +	{ .compatible = "nxp,sja1105t", .data = (void *)SJA1105T },
> +	{ .compatible = "nxp,sja1105p", .data = (void *)SJA1105P },
> +	{ .compatible = "nxp,sja1105q", .data = (void *)SJA1105Q },
> +	{ .compatible = "nxp,sja1105r", .data = (void *)SJA1105R },
> +	{ .compatible = "nxp,sja1105s", .data = (void *)SJA1105S },
> +	{ .compatible = "nxp,sja1110a", .data = (void *)SJA1110A },
> +	{ .compatible = "nxp,sja1110b", .data = (void *)SJA1110B },
> +	{ .compatible = "nxp,sja1110c", .data = (void *)SJA1110C },
> +	{ .compatible = "nxp,sja1110d", .data = (void *)SJA1110D },

Instead of casting the id to a void * you could attach the struct
sja1105_info * directly here.

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

