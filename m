Delivery-date: Tue, 07 Jun 2022 09:40:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTpW-0068pO-2q
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 09:40:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyTpU-0006er-0K
	for lore@pengutronix.de; Tue, 07 Jun 2022 09:40:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FCQnLnvMMXVU4Dz5tpx52T9W394nWsjK/KAelARrFm0=; b=tWRhl9w3TPO/5oNdFSahkGwVhk
	k6d7HQ12RCIxeoBT5vfSFjMTt9onROXEA7QsJdrLCEO2oFBFVVzmJlEqDE78rWFW2XLspgOpBTUB+
	eSnu8CtptvZOA/3ynP/99W6wA18Hq+5MVZSpYOG+ldwYyLTssSyBbejoN0iEzv+yCJWCkbiEnhhci
	WMQpWZ1eYc3YYb9xo/TJkl1bSXhPwxkuBkWnjZRXDWiqWj52Vw94WSswRyEsEGE7bfoKFA+jBM5b+
	bnSUb8B3LrOE8jv0+wTiQsDaVjZ7IyJs/p8pXEnumAGgVeXR82Ag6FPS/HMR2XYLfaVaCVtfkR+5s
	cKhqR2sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTo2-005Vfr-8k; Tue, 07 Jun 2022 07:39:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyTnY-005VVP-NH
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 07:38:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTnW-0006Rn-5p; Tue, 07 Jun 2022 09:38:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nyTnV-0002xO-Sv; Tue, 07 Jun 2022 09:38:41 +0200
Date: Tue, 7 Jun 2022 09:38:41 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220607073841.GO1615@pengutronix.de>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_003844_788218_963463D5 
X-CRM114-Status: GOOD (  20.49  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC 1/8] ARM: OMAP: Rearranging EMIF4 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 03, 2022 at 02:25:33PM +0300, Alexander Shiyan wrote:
> Currently we have three different definitions for EMIF management:
> - Offsets
> - Offsets relative to the base address
> - Offsets in the structure
> 
> The patch represents the first attempt to unify this.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/afi-gf/lowlevel.c             | 39 +++++++++---------
>  arch/arm/mach-omap/am33xx_generic.c           | 41 +++++++++----------
>  .../mach-omap/include/mach/am33xx-silicon.h   | 10 +----
>  3 files changed, 42 insertions(+), 48 deletions(-)

Looks all good and is a nice cleanup, so applied despite its RFC status.

One thing I found in the context of this patch:

>  static void board_config_emif_ddr(void)
>  {
> +	const void __iomem *emif4 = IOMEM(AM33XX_EMIF4_BASE);
>  	u32 i;

[...]

>  
>  	for (i = 0; i < 5000; i++) {
>  
>  	}

I wonder if this works. I made the experience that the compiler
optimizes such loops away when the counter isn't declared as volatile.

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

