Delivery-date: Thu, 11 Jan 2024 15:46:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNwJq-00D55r-22
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 15:46:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNwJq-0005xN-1A
	for lore@pengutronix.de; Thu, 11 Jan 2024 15:46:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nxwoP358/TT/Z7nMRK4LNcyiPsy1MufhAZf71tU6mc=; b=Vscv/LzkIuTb3gy8GA4PsXms+E
	GZ4jNWYFdxpwlM696RXoJzZkW0uv3o1k4D1LG/1oJp+WpU1xv0VSTr+j+ONZQD9CXYyWm3gIFf81T
	5lgEan8b+qXY81ASy6vElQa37SjIcTykKJXBYu627tceOEj8zn6sRYTUWiIOBA/SwJTKwdusq5+Y3
	shVmyV6MBWwWUd+cA7KJG+zDGNxN9bu55qdEyrIcCFme2oaUvkaPfsI3LV8xLiqmsGxGSyZA6GIa9
	zRq97RlBng0bw+ilcJ5q29o192hL/S11/dfWfnH6GgxqHLEKJEj573s6i1m78TsgoBHF/9lqImwKk
	ffnaKuyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNwIj-000Jbg-2Z;
	Thu, 11 Jan 2024 14:44:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNwIg-000JbH-2A
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 14:44:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNwId-0005iL-Qw; Thu, 11 Jan 2024 15:44:51 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNwId-001wuq-EH; Thu, 11 Jan 2024 15:44:51 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNwId-00BNmJ-Bt; Thu, 11 Jan 2024 15:44:51 +0100
Date: Thu, 11 Jan 2024 15:44:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240111144451.GA2711697@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
 <170498227339.3258338.12191952900235410621.b4-ty@pengutronix.de>
 <c09e8b3d-539e-4890-878d-ec699df00fb4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c09e8b3d-539e-4890-878d-ec699df00fb4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_064454_714993_43E7B499 
X-CRM114-Status: GOOD (  18.90  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 00/11] ARM64: layerscape: make LS1046 DMA coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Jan 11, 2024 at 03:15:35PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 11.01.24 15:11, Sascha Hauer wrote:
> > 
> > On Wed, 10 Jan 2024 17:01:02 +0100, Ahmad Fatoum wrote:
> >> Upstream DT changed /soc of NXP Layerscape LS1046A to be dma-coherent.
> >> This means that:
> >>
> >>  1) Linux v6.1 expects bootloader to configure DMA masters to snoop
> >>     caches
> >>  2) bootloader needs to skip cache maintenance when talking to DMA
> >>     master when it has set snoop bits
> >>
> >> [...]
> > 
> > Applied, thanks!
> > 
> > [01/11] dma: rename OF_DMA_DEFAULT_COHERENT to ARCH_DMA_DEFAULT_COHERENT
> >         commit: 6012c3867777e9e6d6b14d0117f8b37e2b860642
> 
> Does the commit hash mean it was applied to master? If it's also for next,
> it may be confusing, because these commit hashes aren't stable.

No, it doesn't mean it is applied to master. I just means I am
experimenting with "b4 ty" and that b4 generates this information
automatically.

I could replace the commitish with something like:

https://git.pengutronix.de/cgit/barebox/commit/?id=6012c3867777 (commitish may not be stable)

or just a:

(no commit info)

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


