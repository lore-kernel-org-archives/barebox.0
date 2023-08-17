Delivery-date: Thu, 17 Aug 2023 09:19:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXHd-007eip-Ho
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 09:19:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXHb-0003Ih-T3
	for lore@pengutronix.de; Thu, 17 Aug 2023 09:19:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KZL1vWyczLIzoqPKpAJnArozZsyPaYRn87OH/KlHuJI=; b=hAUmH0BupArfio5d0Zo/Wm7dCA
	xBVYYHm2hLe64oW3Qh0BtYIhx8ZV21jogvsFRB5cd5qKHyi+4VsL6qV1M5sDJn1ho5JFVEsKa+A0Z
	zdwTe2bDXTidS/OYyYJGKHeUPXgGrw0dpKIs9LYHrk1GogSu7KJh11biLQbR0gYfty8ScZQaApGQ/
	Q6JOHJJs6H1L+eLmtjGxgtKrJ+utF0F23i/iLTtw8AW8wr21qPYyOSBw3hIwR1d3GLBUzsDGmNArR
	BMONPlr/7xdlH/lrGWBLuNXQ5p8O5svfK1tOpE2plubk5Pmh9QbY9C/JyTusXmexBljokwPLrwwDC
	tKFXbs3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXGP-005hrV-1X;
	Thu, 17 Aug 2023 07:17:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXGL-005hqn-2N
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 07:17:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWXGC-0003C6-TK; Thu, 17 Aug 2023 09:17:36 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWXGC-0002Ru-BN; Thu, 17 Aug 2023 09:17:36 +0200
Date: Thu, 17 Aug 2023 09:17:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20230817071736.GJ5650@pengutronix.de>
References: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB0555EE60DE17128F9831C028C31AA@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_001745_775948_1C5617C5 
X-CRM114-Status: GOOD (  18.68  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: ARM: mmu_early_enable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Aug 17, 2023 at 06:22:50AM +0000, Lior Weintraub wrote:
> Hi Sascha,
> 
> I think I found an issue with the CONFIG_MMU feature.
> When the code under barebox_pbl_start calls mmu_early_enable, the MMU
> is set such that only the given SRAM is defined (membase, memsize).
> But then, if DEBUG_LL is in use and the function pr_debug is called we
> get an exception because the UART address is not included in the MMU.

That shouldn't happen. See the code in mmu_early_enable():

        early_remap_range(0, 1UL << (BITS_PER_VA - 1), MAP_UNCACHED);
	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_FAULT);

The first line maps the whole address space uncached in a flat 1:1
mapping. The second and third lines map the SDRAM (SRAM in your case)
cached.

Your availabe memory is quite small (3MiB) and by skipping the
relocation your SRAM layout is not standard. Could it be that something
overwrites your page tables?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


