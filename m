Delivery-date: Wed, 18 Aug 2021 06:53:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDZo-0001N6-FE
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 06:53:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGDZj-0004vg-Tx
	for lore@pengutronix.de; Wed, 18 Aug 2021 06:53:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GIlPORzbKp8IJfoNrTtX714OIJuelKgTcPnxj4eMgyw=; b=flx8qPaPWRuDZH+qvWKxCz77ZI
	x/1j5olGKivOxqhAUgXHgfJS34BmCSaoEF/oScysvazrjYRSPP1uHdpZsNprJzU4j2xjUe9Qp9vzJ
	cv5amjfH8xXa4iSYGycDPBVPKA9jsRRvB5edCCRnv3HDzzCXFiYQUVVOJGHocvLhkOV39NuaANexz
	aDVdtmMoF7+IwA4sqwcJtgvNhG5RFegNBYijziGAktntj1bGPrX18YzeBpd8PpNgg2SPeQMw+PVLV
	b4o+9B+jDcOKbpYjBeV9Y+XvTEEP1WubP4IwXMR2hMS2irf+8L5CQtzdqD1+lyMGd7W84cHCAl94I
	oZ+FDecA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGDYD-004BWk-MS; Wed, 18 Aug 2021 04:51:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGDY5-004BVd-LQ
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 04:51:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDY4-0004kw-2X; Wed, 18 Aug 2021 06:51:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mGDY3-0007gm-Pc; Wed, 18 Aug 2021 06:51:31 +0200
Date: Wed, 18 Aug 2021 06:51:31 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210818045131.GF24834@pengutronix.de>
References: <20210812083651.3576-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210812083651.3576-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 06:51:10 up 181 days,  8:15, 84 users,  load average: 0.18, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_215133_744869_B217EBC0 
X-CRM114-Status: GOOD (  23.77  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX6: boot: detect USB serial downloader more
 reliable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 12, 2021 at 10:36:51AM +0200, Marco Felsch wrote:
> The problem with the BootROM is that the SRC registers are not set
> accordingly in case of a failed primary boot. E.g. if the device is
> configured to boot from an eMMC and the eMMC is empty or image is
> corrupt, the BootROM goes into 'recovery boot mode' (reference manual
> Figure 8-1) and the last possible recovery option is the serial
> downloader. In such case the SRC registers still indicate that the
> device was booted from an eMMC instead of serial-download.
> 
> This commit ports the U-Boot commit [1] with slightly adaptions suggested
> by Ahmad to Barebox. Also we need to reorder the imx6_init() else we
> reset the otg-controller to early.
> 
> [1] https://source.denx.de/u-boot/u-boot/-/commit/e203dcf23e9eabc2e4f3d0b079457cd1516f2081
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/boot.c  | 27 +++++++++++++++++++++++++++
>  arch/arm/mach-imx/imx6.c  |  9 +++++++--
>  include/soc/fsl/fsl_udc.h | 11 +++++++++++
>  3 files changed, 45 insertions(+), 2 deletions(-)

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

