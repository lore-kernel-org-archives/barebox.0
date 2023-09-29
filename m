Delivery-date: Fri, 29 Sep 2023 06:40:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm5II-00Frmt-GP
	for lore@lore.pengutronix.de; Fri, 29 Sep 2023 06:40:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qm5IG-00055u-P6
	for lore@pengutronix.de; Fri, 29 Sep 2023 06:40:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BS2PYPVaw4a5eysyZz+b8lZFqqk0sAv1gO/9lohtit0=; b=NaESx3+JHHuWaoXQFye/D6aZba
	rKDSjP0sqMqWfXDyq6EGgbNkLWPBMmq1JcOnP1wzXRX/AH7yKsb2+FYX4ywvm/OjViOR3UTFgyQu9
	uFucJFGZiu0LgCJ8ursV+ZRCSJpHB0iUeDBS7F4y7uq+iAAkNQC/8svE8nCIsO2zlDLkCKTUIWFlm
	aIihQw8oryAuvXWS/xvIdTVS6HCjZ30rCF7vL7ciduS7dEOF7prgs3dyU3rEa6APVkjoGPoYIzAL9
	wfpASGwnCnvtEjfUmoS/3C9U8ll6NFNwbvDxV4PLf8ExEC9bxxaZIhBjEtxgjBkft4H3lAou5T0yN
	fEXxyjBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qm5Gk-0077ha-0t;
	Fri, 29 Sep 2023 04:38:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qm5Gf-0077h4-0u
	for barebox@lists.infradead.org;
	Fri, 29 Sep 2023 04:38:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qm5Gc-0004tj-4y; Fri, 29 Sep 2023 06:38:18 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qm5Ga-009jXU-1m; Fri, 29 Sep 2023 06:38:16 +0200
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qm5GZ-00Bxsv-Vm; Fri, 29 Sep 2023 06:38:15 +0200
Date: Fri, 29 Sep 2023 06:38:15 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230929043815.GA2825985@pengutronix.de>
References: <20230928105837.2512555-1-o.rempel@pengutronix.de>
 <20230928105837.2512555-4-o.rempel@pengutronix.de>
 <b2771224-215c-8fef-ae10-0abb25292e0e@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <b2771224-215c-8fef-ae10-0abb25292e0e@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_213821_325578_10595AAD 
X-CRM114-Status: GOOD (  23.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 4/7] arm: dts: imx8mp-skov: Simplify SD partition
 definition to 1 cell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad,

On Thu, Sep 28, 2023 at 10:13:44PM +0200, Ahmad Fatoum wrote:
> Hello Oleksij,
> 
> On 28.09.23 12:58, Oleksij Rempel wrote:
> > Update the partition definitions for SD card in imx8mp-skov to use
> > single cell for address and size, streamlining the format.
> 
> Is your eMMC really smaller than 4G? If it's >= 4G, barebox will fix it up in
> the kernel DT as 2/2 cells, so keeping it 2/2 in barebox removes some noise
> in of_diff - + output.

Ok, i see. Thx for the tip.
It is SD card, not eMMC. So, most probably it will be >= 4G.

I just realized, that SD card can be used as simple storage, not only as
the boot source. So, it is probably better to remove partition table from the
devicetree for SD too?

> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/arm/dts/imx8mp-skov.dts | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/arch/arm/dts/imx8mp-skov.dts b/arch/arm/dts/imx8mp-skov.dts
> > index 1d4738dbd7..b94b9dd51d 100644
> > --- a/arch/arm/dts/imx8mp-skov.dts
> > +++ b/arch/arm/dts/imx8mp-skov.dts
> > @@ -88,17 +88,17 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
> >  &usdhc2 {
> >  	partitions {
> >  		compatible = "fixed-partitions";
> > -		#address-cells = <2>;
> > -		#size-cells = <2>;
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> >  
> >  		partition@0 {
> >  			label = "barebox";
> > -			reg = <0x0 0x0 0x0 0x100000>;
> > +			reg = <0x0 0x100000>;
> >  		};
> >  
> > -		env_sd: partition@e0000 {
> > +		env_sd: partition@100000 {
> >  			label = "barebox-environment";
> > -			reg = <0x0 0x100000 0x0 0x100000>;
> > +			reg = <0x100000 0x100000>;
> >  		};
> >  	};
> >  };

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


