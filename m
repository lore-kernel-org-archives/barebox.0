Delivery-date: Wed, 31 Aug 2022 08:42:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHR3-002QlT-Bd
	for lore@lore.pengutronix.de; Wed, 31 Aug 2022 08:42:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oTHR2-0008GK-3C
	for lore@pengutronix.de; Wed, 31 Aug 2022 08:42:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hdpLA1zG9r+inqlf2fJPmDlKv4l3ivkNOGf09pzsQy4=; b=AgBCdXGiCB9Fw5A82hVq82frRP
	zEaWsOY5pQYaovn0iqXrsjz1t4x2RiNUExPwoIag/GcWvyZ9HT4/h2uLej2EkLEaiphS43Y2qhuR/
	Sny1Ey74mpADYg3zgptxzXUsxiWyn0Y7slJyy9P/IbiDoxAAlgX4BWWrSzttoN2WNp4FDzpcy0vsS
	6fW0+EK2aH4Eq76uw1oAV7Fu9X9zPSVjwfLt+g5txNbC8TuuEc9X+dS5Cwpx4MK33b6H/iWJ9b+Ga
	BAFj9VEzCp4WBOg4ZOpLdEsvfM/2FObV19JFrQnzqz+7d5JmwuV9VZR9oKdRgNAwPe1jf5C7kXWv2
	9223bklw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHPo-004MRa-Vd; Wed, 31 Aug 2022 06:41:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTHPj-004MQf-Pa
	for barebox@lists.infradead.org; Wed, 31 Aug 2022 06:41:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHPi-0007zt-H9; Wed, 31 Aug 2022 08:41:26 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oTHPi-00062n-8V; Wed, 31 Aug 2022 08:41:26 +0200
Date: Wed, 31 Aug 2022 08:41:26 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220831064126.GK24324@pengutronix.de>
References: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830075045.1052357-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_234127_849145_192C1526 
X-CRM114-Status: GOOD (  20.50  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] ARM: dts: i.MX8MM: describe feature controller
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 30, 2022 at 09:50:45AM +0200, Ahmad Fatoum wrote:
> Now with i.MX8M feature controller driver support available, have the
> OCOTP provide feature control on the i.MX8MM to ensure the kernel DT
> does not cause Linux to access the VPU and its power domains,
> when barebox knows them to be unavailable.
> 
> This is needed because the upstream kernel imx8mm.dtsi only
> describes the full-featured SoC, which can lead to hangs when
> instantiating drivers for hardware that's unavailable in a
> less-featureful variant of the SoC.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 was RFC patch 10/10 of:
> https://lore.barebox.org/barebox/20220818051955.2088238-11-a.fatoum@pengutronix.de/T/#u
> 
> Patches 01-08 are still applicable, this replaces the approach in v1
> with a standalone feature controller with having the OCOTP as feature
> controller, like is done for i.MX8MN in patch 08/10 of above referenced
> series.
> ---
>  arch/arm/dts/imx8mm.dtsi | 52 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


