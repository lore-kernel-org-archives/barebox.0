Delivery-date: Wed, 11 May 2022 08:30:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nofs0-009JC6-S8
	for lore@lore.pengutronix.de; Wed, 11 May 2022 08:30:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nofrz-0003nt-Jh
	for lore@pengutronix.de; Wed, 11 May 2022 08:30:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0HEt+I2ZUrJzH6SJiRGo7dUCEMydmTpSsY0B8isF4X8=; b=sByB2MTqHnkwE+fk2T3N3+UGSR
	8idSD9o9N1NOcz0gR4uB2xpQC8IcRJlyqB1KB2lg0zu1iloOEmk6oAFkswbz5XJdlPzMnBxXsfexn
	2oQaV4c77z9xW56/e3T61dXVvjq9rg/X09/yBViJyijsw7Mkkmq3YCp5j5UIb7pNZgtvVCyMb5wH6
	vY7dNcIgLW/hpwKWDHDIp8jlPsZH3uAZ4dRqWV4hah2kbTRsTVcuJEYwqYaHcBX9QL1qfuKaWlekw
	PWqHfaoiiymc2LhSm4zW9zAaVxz3Th5hqAi6DJHrMmcR82OQzjTrKge7Oq42uuVUhzU3+UC4Vz3uQ
	Qt/M/SdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nofqG-005Qqr-D0; Wed, 11 May 2022 06:29:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nofq9-005Qme-DS
 for barebox@lists.infradead.org; Wed, 11 May 2022 06:28:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofpm-0003bx-4z; Wed, 11 May 2022 08:28:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nofpj-0006an-Hv; Wed, 11 May 2022 08:28:27 +0200
Date: Wed, 11 May 2022 08:28:27 +0200
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: barebox@lists.infradead.org, Frank Wunderlich <frank-w@public-files.de>
Message-ID: <20220511062827.GF4012@pengutronix.de>
References: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:28:11 up 41 days, 18:57, 67 users,  load average: 0.15, 0.13, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_232853_491347_8217410A 
X-CRM114-Status: GOOD (  26.90  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/2] align rk356x drivers as preparation for mainline dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 09, 2022 at 01:36:16PM +0200, Michael Riesch wrote:
> Hi all,
> 
> These patches align the barebox drivers for the Naneng Combo PHY and the dwc3
> with the current device tree bindings in mainline Linux. Thereby, the
> migration from the initial device tree files related to the RK3568 EVB1 and
> the BananaPi R2Pro to their equivalents in mainline Linux is facilitated.
> 
> In order to ensure compatibility, the initial device tree files in
> arch/arm/dts are adjusted accordingly.
> 
> The changes are tested exclusively on the RK3568 EVB1 -- Frank, if you could
> give this a test on the BananaPi it would be great.
> 
> Looking forward to your comments!
> 
> Best regards,
> Michael
> 
> Michael Riesch (2):
>   phy: rockchip: align naneng-combphy clocks and resets with binding
>   usb: dwc3: align dwc3 clocks with binding

Applied, thanks

Sascha

> 
>  arch/arm/dts/rk3568-bpi-r2-pro.dts            |  7 +-
>  arch/arm/dts/rk3568-evb1-v10.dts              | 14 ++--
>  arch/arm/dts/rk3568.dtsi                      | 82 +++++++------------
>  .../rockchip/phy-rockchip-naneng-combphy.c    | 19 +----
>  drivers/usb/dwc3/core.c                       | 50 ++++++++---
>  5 files changed, 79 insertions(+), 93 deletions(-)
> 
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

