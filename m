Delivery-date: Tue, 14 Mar 2023 15:09:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc5LU-00Egt5-GM
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 15:09:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc5LT-000754-W6
	for lore@pengutronix.de; Tue, 14 Mar 2023 15:09:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rBiWOdjZ84dUCl18+hzggzAs5aXMEdCMorI4C8++5no=; b=CJP5fv/9ZzpxeSyvy4TUvTkABp
	O8JaEGeeKt3l0FM3Q29CBH3t4cQ5mpaJ1ywLmtMnFbh3WcfpWV5jw3vw6ncw9u+xGW6cHBI9uKjkQ
	FlTCW5E4DUBNUD6cbTsUmAytSvxUej/icwmZaIDSJ5ayn75vwEe/ugsu7VcygsHbHRBRbboeqJ21f
	gp8IgBYDhb6EtbQyTyXyCrOIOwY/EMR5CsL4Z0Zgzpaamqv628JfFX6bD0vUVDtfMFN4I1FVBEcZE
	g33bH3NJkZLOnqOz1qNWJTWs4Tn+gKWYNYmHiYkOzO0PLwcid8H1DGTLLx+i99F5WUQUSU0hjcKTA
	cQxYPr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5KM-00APEX-0x;
	Tue, 14 Mar 2023 14:08:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc5KJ-00APDE-0n
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 14:08:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc5KH-0006vm-Jq; Tue, 14 Mar 2023 15:08:29 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc5KH-0005cD-CM; Tue, 14 Mar 2023 15:08:29 +0100
Date: Tue, 14 Mar 2023 15:08:29 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230314140829.GJ7446@pengutronix.de>
References: <20230312162928.2110697-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230312162928.2110697-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_070831_282648_976628FA 
X-CRM114-Status: GOOD (  26.11  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 12, 2023 at 05:29:28PM +0100, Marco Felsch wrote:
> since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
> make use of the esdctl driver. This cause the below error since barebox
> try to add the memory twice.
> 
> | imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
> | initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
> 
> Remove the memory node to fix this.
> 
> This behaviour was seen on a i.mx8mp-evk but the
> imx8mp-tqma8mpql-mba8mpxl also has a memory node and includes the
> barebox.dtsi.
> 
> Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/dts/imx8mp-evk.dts                | 2 ++
>  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
>  2 files changed, 4 insertions(+)

Applied for now as it fixes a regression.

For the longer run I'd like to try another approach:

On i.MX as well as on other SoCs we read the DDR resources from the
memory controller. When we do this it should take precedence over the
device tree memory nodes. If reading from the memory controller returns
wrong DDR resources then this is a bug that should be fixed. Trying to
merge the memory banks read from the controller with the ones from the
device tree likely doesn't improve the situation.

Therefore the memory controller should register the memory banks along
with some we-know-it-better flag which disables reading the memory
nodes from the device tree. This leaves reading the memory nodes from
the device tree for the cases where no memory controller driver is
available.

There are some known cases where the memory controller is configured
with bigger SDRAM than is actually equipped on the board. We'll find
the memory mirrored than in the registered memory banks. For i.MX
we have imx_esdctl_disable() for this case, the same could be done
for other SoCs as well if needed.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


