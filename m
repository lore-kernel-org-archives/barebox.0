Delivery-date: Thu, 03 Mar 2022 11:00:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiG0-00GOU8-QF
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 11:00:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPiFz-0007xi-NP
	for lore@pengutronix.de; Thu, 03 Mar 2022 11:00:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QXsiul9aYMeYGdhC9HchVRlVlkq9xddMBNhz4hY0Ua4=; b=4Ff4PkQfIHuMnPidsDQ5VfC5kU
	3TmZ1p1/ho+k5ytEL+kawtbCBneSeAGungjgD/459meoU2SH6u5ONbDjDxAUSgnd6JciIh1XIkdjC
	DAnHOud6xfHuwqiizIiVJrp4CCP5VwCxZ/gBzdh2W2grEPvCOGlSTj48KfoOmrWCtUkcrfjoV/suC
	HWClolvencgkjs7MLVrpYc5t3MUd9OjjWSifB4dsMpHjGWhzGb4FuwqhbFM8MwOzUK/N9RjnX9Lyn
	lVFbGi9z7xEnsAq/q6x83sbUtf7T/xK18Mbdvaz5iNlK6sWLGNqJxHvC2/EItLM6ruO8IvIixfzwe
	L5LB2J/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPiEi-005yRj-JE; Thu, 03 Mar 2022 09:59:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPiEd-005yQr-Sd
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 09:59:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiEc-0007iE-Fk; Thu, 03 Mar 2022 10:58:58 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nPiEb-0001Aq-Ex; Thu, 03 Mar 2022 10:58:57 +0100
Date: Thu, 3 Mar 2022 10:58:57 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220303095857.GZ19585@pengutronix.de>
References: <20220301132232.343230-1-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220301132232.343230-1-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:55:38 up 82 days, 18:41, 83 users,  load average: 0.14, 0.17, 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_015859_974368_A2A64410 
X-CRM114-Status: GOOD (  20.13  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: imx: spi: Add NXP IMX8 Flex SPI/QSPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 01, 2022 at 02:22:32PM +0100, Joacim Zetterling wrote:
> +
> +static const char *nxp_fspi_get_name(struct spi_mem *mem)
> +{
> +	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
> +	struct device_d *dev = (struct device_d *)&mem->spi->dev;
> +	const char *name;
> +
> +	/* Set custom name derived from the platform_device of the controller.
> +	 */
> +	if (of_get_available_child_count(f->dev->device_node) == 1)
> +		return dev_name(f->dev);
> +
> +	name = basprintf("%s-%d", dev_name(f->dev), mem->spi->chip_select);
> +	if (!name) {
> +		dev_err(dev, "failed to get memory for custom flash name\n");
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	return name;
> +}

This should either return an allocated string or a static string, but
not both. This is copied from several other drivers in Linux upstream,
so leave it like this for now. Should be fixed upstream.

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

