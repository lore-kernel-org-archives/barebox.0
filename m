Delivery-date: Mon, 22 Nov 2021 10:25:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5a3-0004bx-Ue
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 10:25:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp5a2-0006v5-RP
	for lore@pengutronix.de; Mon, 22 Nov 2021 10:25:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ksJRpGfM/n+ffZccxlDdtL3LP0yEBSiuucDYxceTkuU=; b=AEB1LtgHw/jhPjI+mf059pSWX2
	riyqZWfclSoCOFGVUWS0fqt2dSEzwYQYrH/uwJ97tSp+hVyf+ce1v7sCniFMtRVRyQZdkVGkLEIIA
	yBIDR6HIjDyoBqO62MwcDzGQZMdTQFM1nzYTYeyANQ/BGJFPEJhQl/ZbTDcwhF8ebiYl2sRRmCvXb
	hGK+QHbV5IhUZB8PB2PZa2d4/tPPc4ZCFXv4+2Nc7KWFeguEJORTP1Xeizi56ql5YoseP5rrmLhhj
	MOqjc/INQZbhulH6HnLu3MvRS1vcBuKwdzqf6JIbblhabfOTDCDO1iTUYXsSP9jJs6EIorJM+BsNa
	S9w2VrdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5YS-00FYlV-QH; Mon, 22 Nov 2021 09:24:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5MM-00FVEV-8g
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 09:11:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5MK-0004oh-3J; Mon, 22 Nov 2021 10:11:32 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mp5MJ-000524-DR; Mon, 22 Nov 2021 10:11:31 +0100
Date: Mon, 22 Nov 2021 10:11:31 +0100
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20211122091131.GY6556@pengutronix.de>
References: <20211101174053.68486-1-abbotti@mev.co.uk>
 <20211118130927.53123-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211118130927.53123-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:11:18 up 277 days, 12:35, 143 users,  load average: 0.56, 0.52,
 0.36
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_011134_353632_A81F9044 
X-CRM114-Status: GOOD (  20.48  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Nov 18, 2021 at 01:09:27PM +0000, Ian Abbott wrote:
> The device tree node for SoCFPGA's MMC device has the `resets =` property,
> but is missing the `reset-names = "reset";` property.  This causes the
> "dw_mmc" driver to output a warning:
> 
> WARNING: dw_mmc ff704000.dwmmc0@ff704000.of: error claiming reset: Invalid argument
> 
> Add the missing `reset-names` property to the `&mmc` node in
> "arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
> Linux device tree sources too!
> 
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
> v2: Updated commit message because it no longer fails to initialize the
> MMC device since commit 724512bbac14 ("mci: dw_mmc: make reset control
> optional again").
> 
>  arch/arm/dts/socfpga.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

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

