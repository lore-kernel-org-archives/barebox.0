Delivery-date: Fri, 05 Nov 2021 10:40:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miviN-0003qr-RK
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 10:40:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miviN-0008L5-0X
	for lore@pengutronix.de; Fri, 05 Nov 2021 10:40:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KUO+/GnsN6YwAn86BiZRaMsrrT+Hna2vUlVjFCM24vc=; b=tP1B4OjERDuZa0kcQPrODSOo62
	xHq/2qZGbJiPOQYOJFGQNsBdHq4felmtIh26NdUX2T5AklXb/EuCa91LMQuSW/Vn75qp/5iYqzCzy
	y8DqzzJlQP3gotCr8nAu342nDkBzM8xwtXkPhbtTUkc27QsuMzyVCCItVYJEn7QqxQK1Znz+k/35n
	rmI4McQdogRBmHUt6uRPCiBwbLWyKu5lABmdy6viHOnBMaUjmS5Oc2RpvfxTKYDdAp++DaAqzXGsl
	+iEyzkGZDNuJBE92M63h8rTs9cBS9J0i/vpCc0mIof0lZ8AM4t1LqAFlcCe3UK3Fy0DtZGZEgjVZr
	V69M6F/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mivh9-00AzTG-4q; Fri, 05 Nov 2021 09:39:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mivh4-00AzSw-4A
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 09:39:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivh2-000892-Gq; Fri, 05 Nov 2021 10:39:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mivh1-00041X-I6; Fri, 05 Nov 2021 10:39:27 +0100
Date: Fri, 5 Nov 2021 10:39:27 +0100
To: Joacim Zetterling <joaze@westermo.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de
Message-ID: <20211105093927.GI25698@pengutronix.de>
References: <20211101121109.GA56533@wsevst-c0022>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211101121109.GA56533@wsevst-c0022>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:36:39 up 260 days, 13:00, 137 users,  load average: 0.14, 0.22,
 0.21
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_023930_206186_7B52AD46 
X-CRM114-Status: GOOD (  22.46  )
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
Subject: Re: [PATCH v3] Fix problem with imx_ddrc_sdram_size calc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Joacim,

On Mon, Nov 01, 2021 at 01:11:09PM +0100, Joacim Zetterling wrote:
> There was some issues with the imx_ddrc_sdram_size calculation.
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

Could you split this into four patches fixing one problem at a time?
I am not sure the problems can be separated from each other entirely,
but splitting this up would make it much easier to understand the
problems and also their fixes. We'll be glad having smaller patches
should we ever have to look at this again.

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

