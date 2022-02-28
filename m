Delivery-date: Mon, 28 Feb 2022 10:47:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcdJ-00D6AE-00
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 10:47:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOcdH-0006qz-Ik
	for lore@pengutronix.de; Mon, 28 Feb 2022 10:47:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EAKE4AG2ZdL09/TMMgjTHYjsFIZnHVyG5qFsXRP0OIU=; b=meko/qlBsiWvjAhLU79o5tgA6I
	qW7EidouisJm7zh3pLk6o5/gmT+X68Sqc4qXW+eVQRfIZZD2i36pcWt3PZe1hDl6cm2YFq2EJAXCb
	sFmHhnBDnghOlJByqkcEZVG8zp6WfCPCBLUOIbz9QDuQfEG8aiowMds1tYmoa2YpGqVdQfrpXqnV3
	Sr1qjfcRymYJZ8oQR76t3jscxOrJ1tN6ImNW3ng5godw6CAXsbM7QLsJweXAnfCXFHPsDpZlJtu0c
	J2OxjI/5/6ypgjmUU+0Jl8hOaxG1PUs86AFeh23noZPnWA9rcfIxICsxTnqoqPfw3LRuAiIUjLvK0
	nV/jfP5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOcc0-00BJv8-0w; Mon, 28 Feb 2022 09:46:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcbt-00BJtk-IG
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 09:46:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcbs-0006ZQ-9R; Mon, 28 Feb 2022 10:46:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nOcbo-0003bj-JK; Mon, 28 Feb 2022 10:46:24 +0100
Date: Mon, 28 Feb 2022 10:46:24 +0100
To: Joacim Zetterling <joacim.zetterling@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20220228094624.GH19585@pengutronix.de>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:37:20 up 79 days, 18:22, 90 users,  load average: 0.32, 0.20, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_014629_633214_187EED9B 
X-CRM114-Status: GOOD (  24.23  )
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

So this means this series causes a regression in between which is fixed
at the end of the series, right?

I think this is ok in this case and is better than putting everything in
a single patch. I just want to make sure everyone who bisects barebox
and ends up in one of these patches and likely reads this thread knows
that this is expected.

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

