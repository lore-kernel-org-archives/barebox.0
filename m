Delivery-date: Thu, 16 Nov 2023 08:57:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3XFh-00Db03-1g
	for lore@lore.pengutronix.de;
	Thu, 16 Nov 2023 08:57:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r3XFh-00008k-Is
	for lore@pengutronix.de; Thu, 16 Nov 2023 08:57:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PrUISTnGF8A4PrAaXXeYa4MZivqpzz2JvJPyN6PpoOE=; b=LdMJZ1w7E7rLOMLLc6lehbRKcA
	2JtvIHddc+EFuNzvXAz8CyjJ80bbow5paFKdwPpDCCfObjoIS/YXJhvZdPgBvcRKXFIwMR0jOR08e
	uW19zhUVNoe8jPPM91njJzTf5G06w6ud5gzTu9/OUA1ZjAVQ858Slxde+JCUistiDb8rml3jxEyxb
	7ysmkV7AQBN+S/EVp1P3zefPmSkavhApq8+5mtSa5LtVb2k2Cb1+0C6u0Xik1gQ/lA+I2P1kMMsAJ
	Yfc1hOInUBtQVF4k2WT68IXWNkckUa84Jpk36c39r+GGjL2CYGGltZIU85isBaQ2bDVpVuAWeQyk/
	eagj5GJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XEV-002oGI-2r;
	Thu, 16 Nov 2023 07:56:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3XES-002oFY-1m
	for barebox@lists.infradead.org;
	Thu, 16 Nov 2023 07:56:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3XER-0008No-73; Thu, 16 Nov 2023 08:56:11 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r3XEQ-009P1F-33; Thu, 16 Nov 2023 08:56:10 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r3XEQ-002JDK-0f; Thu, 16 Nov 2023 08:56:10 +0100
Date: Thu, 16 Nov 2023 08:56:10 +0100
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231116075610.GI3359458@pengutronix.de>
References: <BL0PR07MB566525C65379702E930F2E99ECB1A@BL0PR07MB5665.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BL0PR07MB566525C65379702E930F2E99ECB1A@BL0PR07MB5665.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231115_235612_587527_CAE718E7 
X-CRM114-Status: GOOD (  18.45  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Device tree probe order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renauld,

On Wed, Nov 15, 2023 at 04:47:03PM +0000, Renaud Barbier wrote:
> We have a board based on the LS1026A with a boot SPI NOR on the QSPI
> controller and FRAM on the DSPI controller.  Currently, the DSPI is
> being probed first and got the device node /dev/m25p0. The boot SPI
> get /dev/m25p1.
> 
> I would like the  QSPI NOR to be assigned to /dev/m25p0 and the FRAM
> to /dev/m25p1.
> 
> Is it possible to change the probing order or the device node
> assignment?

You can create aliases in the device tree for both flashes, see
drivers/mtd/devices/m25p80.c:258:

        if (dev->of_node)
                flash_name = of_alias_get(dev->of_node);

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


