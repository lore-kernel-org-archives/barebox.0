Delivery-date: Mon, 28 Feb 2022 11:07:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcwS-00D7f8-9w
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 11:07:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcwQ-0001Ty-JW
	for lore@pengutronix.de; Mon, 28 Feb 2022 11:07:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6L0U6O90WFsfSjG1l+haQbiXMAzx2F3wp1/y9HfXS2I=; b=WVAbL3d0RMt1UeV0Yuvo0Vxec8
	/VD1S38kyXh54cVJxS7lF2/WmRk3E9AgrKm6WKhvZYQ78F7lE+pH/VvfzAS5kbaKjAhF+febTmm03
	LkUbfRHwFrQIKmz1sucH7pwq4I1RazvTmC9F++YQk8TX5XmIHsdBA3qS6gz1ywgltsbAVTzkheFSK
	6Y2oPDOWk/thuoFC9/73c1sr2VIC3nbA3Ha9oZT+g5S9D+9NT/+ELkEClYT9oVUHROz1MZyPID1pi
	2XEOY1FUdeR+QIBWVyd0n8I6kZg5hHnftXDXX9Blad6OfCv7j/au+tioMxbRAXCwFf5cAHEmXEK9B
	WSkZXvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcv3-00BQXV-86; Mon, 28 Feb 2022 10:06:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcuy-00BQWk-BG
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 10:06:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcux-000174-2x; Mon, 28 Feb 2022 11:06:11 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcuu-0006Fa-E0; Mon, 28 Feb 2022 11:06:08 +0100
Date: Mon, 28 Feb 2022 11:06:08 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220228100608.GI19585@pengutronix.de>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:05:50 up 79 days, 18:51, 93 users,  load average: 0.45, 0.48, 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_020612_415259_7B4B5C88 
X-CRM114-Status: GOOD (  25.86  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/4] ARM: imx: Fix problem with imx8 SDRAM size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Feb 25, 2022 at 03:47:47PM +0100, Joacim Zetterling wrote:
> There is some issues with the imx8 ddrc sdram size calculation.
> 
> If we compare the imx8mn DDR4 evk against the LPDDR4 variant in
> code and in the datasheets, we see the following:
> 
>              DDR4   LPDDR4
>   ========================
>   Bus width   16      16
>   Rank        1       1
>   Ranks       1       1
>   Banks       4       8
>   Banks grps  2       1
>   Rows        17      15
>   Col         10      10
> 
> This gives us the following problems:
> 
> 1. Bus width problem.
>    Does not support 16 bit SDRAM bus mode, only 32 bit supported
> 
> 2. Row size problem.
>    Only up to 16 bit row size support.
> 
> 3. Bank groups support.
>    Only support of 1 bank group.
> 
> 4. Bit count problem.
>    The imx_ddrc_count_bits function does not do a correct count.
>    Found out during test of the 1-3 part fixes.
> 
> The fact that the code only handled a 32 bit bus width, compensated
> the problems with rows, banks and rank.
> 
> This have been tested on the NXP IMX8MN-EVK with 2GB DDR4 SDRAM as
> well as on a custom board with 512MB LPDDR4 SDRAM.
> 
> 
> Joacim Zetterling (4):
>   ARM: imx: Add imx8 support for 18 bit SDRAM row size handle
>   ARM: imx: Add imx8 support for SDRAM with two or more bank groups
>   ARM: imx: Correct mem size calculation for 4/8/16/32 bit bus width
>   ARM: imx: Correct bit count function
> 
>  arch/arm/mach-imx/esdctl.c | 61 +++++++++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 20 deletions(-)

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

