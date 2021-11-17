Delivery-date: Wed, 17 Nov 2021 08:20:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFEl-0004cz-DR
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 08:20:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnFEj-0001Tn-Sa
	for lore@pengutronix.de; Wed, 17 Nov 2021 08:20:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UdOC4LEZAJigR657SjAFZihKKlHXuydDtM4jiJI8v2w=; b=j+pa3prJKYi5v/tR0ybAcMwc1i
	8WtBRy9c54jA7p05QtQk9u0xaPLPNjvJWqH7/GBF0klRgQbFZK66CAFS2Ru7r4U0uaVzn2j8c3vBu
	2wIF6jrLNH8bRfqM1EQ6fxdWBr1vSGYib+h0nNvqdP0q0pnfF3Uh6YqSSkqkLmL1LTV1nZOyPs0LT
	UNk8QBUCSVUwFM6SFAJaGJ9DkNCtVZv1TmCW1yMgxGR4j0cepTgv55NDz8JxSfOqIdkML3O+cCV86
	NISNa8whUr3G1iGcco0KmshWe/GN97GxPBGoAIjYJHq3ym27Gfn8TbZdObgkTEp2o69GCD5hHrG2w
	+TJUDEdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnFCk-003igL-Em; Wed, 17 Nov 2021 07:18:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnEyU-003dVf-EF
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 07:03:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnEyT-0007pV-4F; Wed, 17 Nov 2021 08:03:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnEyP-0004Lp-Er; Wed, 17 Nov 2021 08:03:13 +0100
Date: Wed, 17 Nov 2021 08:03:13 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org, Y.Bas@phytec.de, s.riedmueller@phytec.de
Message-ID: <20211117070313.GG6556@pengutronix.de>
References: <20211115130208.619443-1-andrej.picej@norik.com>
 <20211115130208.619443-3-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115130208.619443-3-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:01:04 up 272 days, 10:24, 117 users,  load average: 1.42, 0.55,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_230318_515521_13E7139A 
X-CRM114-Status: GOOD (  17.09  )
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
Subject: Re: [PATCH 2/5] ARM: configs: phytec-som-imx6.config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 15, 2021 at 02:02:05PM +0100, Andrej Picej wrote:
> Create PHYTEC specific i.MX6 SoM config fragment, which is intended to
> be merged with the default imx_v7_defconfig. This way, one can clearly
> outline the differences between standard defconfig and changes PHYTEC
> makes for i.MX6 SoMs in their BSP. Nonetheless, at the same time, this
> minimizes efforts required to port patches to defconfig with each new
> PHYTEC BSP release.
> 
> For now:
>      - disable BLSPEC,
>      - disable IPU driver,

Why are these disabled? These options shouldn't hurt anyone.

>      - enable of_fixup_status command,
>      - enable of_overlay command,
>      - enable of_display_timings command and
>      - enable OCOTP fuse writing ability.

We can enable these in imx_v7_defconfig, no need to overwrite them.

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

