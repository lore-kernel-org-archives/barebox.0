Delivery-date: Wed, 18 Oct 2023 10:20:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1ma-00CmTV-I3
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 10:20:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt1mZ-0002rC-CR
	for lore@pengutronix.de; Wed, 18 Oct 2023 10:19:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SkYHzY/4UcinfqAEfFZYM8yh2BASdMiZQcLJpvzW+w0=; b=akwJEj2j+5GemT+A/O2pVIG3Ys
	SHVXfO2HUACl+YzTpcJfvnffjmP5Rq4TvzfZvKMAfZMLGRNK1BOFBIjRjfi7/tgoku++N486y4+xp
	PmQrOMPb/FEg0iViYbU36lV1tKobXTL5ictckDEBBtAqu4/U5UVT+OMV1tqDuO8y8ikzA9ZS0b8l9
	7NZmoOm8aJev/rQK+bOp9YbrxhV6QJH1Y15ax+/qTXFby7XkbA6dMP6hMdXV3n/LgHwkUJf+08VYC
	j0R4mYLWdTqC4tGp1q3fkgJD3ccESL2i19q5rS+f9Ywn86/YdB33G+0LfkCemNwW82D3A12bTwOOT
	yAS05o2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1lX-00E7c5-0D;
	Wed, 18 Oct 2023 08:18:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt1lT-00E7as-1w
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 08:18:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1lR-0002hI-Fb; Wed, 18 Oct 2023 10:18:49 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1lR-002Von-3K; Wed, 18 Oct 2023 10:18:49 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qt1lR-00F3MX-0m; Wed, 18 Oct 2023 10:18:49 +0200
Date: Wed, 18 Oct 2023 10:18:49 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231018081849.GJ3359458@pengutronix.de>
References: <20231017213608.3494255-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231017213608.3494255-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_011851_643244_2BFAC804 
X-CRM114-Status: GOOD (  14.90  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/4] i.MX USB Loader Windows Fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 17, 2023 at 11:36:04PM +0200, Marco Felsch wrote:
> Hi all,
> 
> this small series enable our imx-usb-loader and barebox-pbl
> implementation to get loaded via Windows.
> 
> Regards,
>   Marco
> 
> Marco Felsch (4):
>   scripts: common: fix read_file_2 for windows
>   scripts: common: fix buffer freeing
>   usb: gadget: fsl_udc: lower state_complete constraints
>   imx-usb-loader: fix windows usage
> 
>  drivers/usb/gadget/udc/fsl_udc_pbl.c | 2 +-
>  scripts/common.c                     | 5 +++--
>  scripts/imx/imx-usb-loader.c         | 8 ++++++--
>  3 files changed, 10 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


