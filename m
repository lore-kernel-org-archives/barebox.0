Delivery-date: Thu, 18 Sep 2025 08:33:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz8Ce-004Mio-0A
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 08:33:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uz8Cc-00029D-1m
	for lore@pengutronix.de; Thu, 18 Sep 2025 08:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=umxnoK0MTEd97r/mbEn4vUeIofOYu+vARIC/Lxlf+vM=; b=2iA8mAfhXzr790D2I0YVxt5xMa
	tkfhh2EtKN4OpyIRTffSnut7aAfTWXshwyGlvcihIEY8hdWSH3MIoFEt+M9glauW2UNWf2TBR0ZC3
	2eAdzsDZDbxMcofDc4wOimmGuXgPW/mzazzyxf6aU2LbSLzqw2DQggYn8urUmb3mYIlj2tIhQALzt
	KFp9f4fNHXbqOwY4rSHFtqjPZmpq9zgvyKqOA7r/PAavtwHJ/v/L3831xduRX3aYPvwolb+y9nUh7
	iO0Zjtrosyb/qUmcLy+FcfUVB2sQiinziRl6pR9iRqD5dm/bxKyiY1y6LR16iLuPlb1dEWnb1n9Qf
	UHfkxLOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8C8-0000000GQi8-1qFs;
	Thu, 18 Sep 2025 06:32:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uz8C5-0000000GQhm-2INV
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 06:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8C4-00024y-0f; Thu, 18 Sep 2025 08:32:36 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8C3-001tGh-2F;
	Thu, 18 Sep 2025 08:32:35 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uz8C3-00Fm1b-1t;
	Thu, 18 Sep 2025 08:32:35 +0200
Date: Thu, 18 Sep 2025 08:32:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
Message-ID: <aMung6AF1mKR6CUk@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-4-2de8f69107a1@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-boards-enclustra-sa2-add-support-v1-4-2de8f69107a1@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250917_233237_586935_EF740822 
X-CRM114-Status: GOOD (  19.71  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/11] ARM: dts: socfpga: use upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 17, 2025 at 05:22:07PM +0200, David Picard wrote:
> From: Ahmad Fatoum <ahmad@a3f.at>
> 
> The device trees from the Enclustra BSP are outdated and not compatible
> with what barebox expects. Drop them and use the upstream SoC device
> tree imported from Linux instead. For the board itself, we import the
> device tree in the most recent posting[1] to the kernel mailing lists.
> 
> [1]: https://lore.kernel.org/all/20241116131025.114542-1-l.rubusch@gmail.com/
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  18 +-
>  arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 150 ++++
>  dts/src/arm/intel/socfpga/skeleton.dtsi            |  13 -
>  .../intel/socfpga/socfpga_cyclone5_enclustra.dtsi  |  69 --
>  .../intel/socfpga/socfpga_cyclone5_mercury_sa2.dts | 128 ---
>  dts/src/arm/intel/socfpga/socfpga_enclustra.dtsi   | 971 ---------------------
>  6 files changed, 152 insertions(+), 1197 deletions(-)

Please squash this into the previous commit. Or, to put it differently,
don't introduce files that you remove just in the next step.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


