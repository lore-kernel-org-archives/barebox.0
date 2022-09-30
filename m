Delivery-date: Fri, 30 Sep 2022 15:24:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeFzm-001Rui-Fx
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 15:24:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeFzl-0003Fo-BK
	for lore@pengutronix.de; Fri, 30 Sep 2022 15:24:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aJzCDJWcJ+tc9vrCflU3eh5cbqMZ9d5mq/aoJhBp6Yo=; b=bHwltYpZA6CxTF58tMdTzP0Xmy
	G5KEeEa+TczgUdnPmIIUZ4lIWSVE7II4HT4g/UQn8zgUJZoY0l/cLfqT2kB2JO7yZcBXiaQiIvfCG
	qVOMa2nhiHWwAtgKEKhWYIAr8Ie2Glt3OyasXlh4g/2tulN127jOU+s1b0njOb0dbbWxgEHEUm02u
	8XxWYlWQFW2G4RDUalqkZ6FNBrojCQsWXjtOT9uQy4s5UC0KqvfLWBNFhWoenh9vVSCiJ/d0n7T0S
	v2lzXiKRSxDArmMJGX5XahURWvIZ6iEEWoi6IX3xRSrUY95uP9bsveT/gFalfab7iWQfrpmPjN2s8
	yMCyIB3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFxT-009MGa-SN; Fri, 30 Sep 2022 13:21:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeFxH-009M8A-8L
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 13:21:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=irc.pengutronix.de)
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <j.zink@pengutronix.de>)
	id 1oeFxB-000314-2F; Fri, 30 Sep 2022 15:21:21 +0200
Message-ID: <a660829b86bf2edd88515e205845a0da0085cfa7.camel@pengutronix.de>
From: Johannes Zink <j.zink@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
	 <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 15:21:20 +0200
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_062127_326630_401CD098 
X-CRM114-Status: GOOD (  14.25  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] Add i.MX7 NAND boot support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 2022-09-30 at 14:15 +0200, Sascha Hauer wrote:
> NAND boot on i.MX7 is the same as on i.MX6, just a little different.
> This series adds a barebox update handler to allow writing barebox
> to NAND flash.
> 
> Sascha
> 
> Johannes Zink (4):
>   mtd: nand-mxs: refactor flash layout configuration
>   mtd: nand-mxs: add i.MX7 FCB write support
>   imx-bbu-nand-fcb: isolate i.MX28 specific parts
>   imx-bbu-nand-fcb: extend for i.MX7 support
> 
> Sascha Hauer (3):
>   mtd: nand-mxs: Factor out a bch read function
>   imx-bbu-nand-fcb: pass imx_handler further down
>   imx-bbu-nand-fcb: add fcb_read/fcb_write function hooks
> 
>  arch/arm/mach-imx/include/mach/imx7-regs.h |   3 +
>  common/Kconfig                             |   2 +-
>  common/imx-bbu-nand-fcb.c                  | 267 ++++++++++++++----
>  drivers/mtd/nand/nand_mxs.c                | 297 ++++++++++++++++++-
> --
>  include/bbu.h                              |   5 +
>  include/linux/mtd/nand_mxs.h               |   4 +
>  include/soc/imx/imx-nand-bcb.h             |  11 +
>  7 files changed, 492 insertions(+), 97 deletions(-)
> 

Tested-by: Johannes Zink <j.zink@pengutronix.de> # innocomm S810
(i.MX7D)

-- 
Pengutronix e.K.                | Johannes Zink                  |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |



