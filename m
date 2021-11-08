Delivery-date: Mon, 08 Nov 2021 09:12:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzlt-0006Zv-Tl
	for lore@lore.pengutronix.de; Mon, 08 Nov 2021 09:12:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mjzlt-0006vC-2N
	for lore@pengutronix.de; Mon, 08 Nov 2021 09:12:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DAW4uDEYVZkgdbHqdbpDnVi3vQGLtzgW+VLaKKMidC8=; b=uqOjInmjjcx6GoXhqdJGCPiGfN
	7BW6PIDMv/XJgtsqNhhLLyGUCPlXNXRu3SaNUk3Okcj/qMEYxQgrizWBQG7XcY++ozsG25Z08ahcj
	Aj6/55xCyIs3Y/uHkgVce7Y+qhyQupcY3rXl5tpf2Ir8i89bY6sskSnWQj+99YdQPcYOjC1wjQOpU
	gTdyCAip/V4ExZkb440yubS14Sn1qGc4XomFqaYv1KuX5aCV12e5eJW1LGfZazAWtbkSp+RyZQ/Nq
	yCvwZnVFaOhq140buUpByHzUtfBTmxLdTCqJU1LlKRXkw8ptcRo0g1oBUOtJTQy6s8pg95qXy1okQ
	tjTTl3Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjzkZ-00FhDM-73; Mon, 08 Nov 2021 08:11:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjzkU-00FhBv-Ak
 for barebox@lists.infradead.org; Mon, 08 Nov 2021 08:11:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mjzkR-0006bj-An; Mon, 08 Nov 2021 09:11:23 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mjzkQ-0005k2-LS; Mon, 08 Nov 2021 09:11:22 +0100
Date: Mon, 8 Nov 2021 09:11:22 +0100
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20211108081122.GJ25698@pengutronix.de>
References: <20211105122146.29370-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211105122146.29370-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:11:09 up 263 days, 11:35, 128 users,  load average: 0.23, 0.24,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_001126_390417_24C73558 
X-CRM114-Status: GOOD (  17.36  )
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
Subject: Re: [PATCH 0/2] ARM: socfpga: Use upstream compatible strings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 05, 2021 at 12:21:44PM +0000, Ian Abbott wrote:
> Fix up the 'compatible' strings for a couple of SoCFPGA development
> boards to match those provided upstream (by Linux).
> 
> 1) ARM: Terasic DE0-Nano-SoC/Atlas-SoC: Use upstream compatible string
> 2) ARM: Terasic SoCkit: Use upstream compatible string
> 
>  arch/arm/boards/terasic-de0-nano-soc/board.c   | 2 +-
>  arch/arm/boards/terasic-sockit/board.c         | 2 +-
>  arch/arm/dts/socfpga_cyclone5_de0_nano_soc.dts | 3 ---
>  arch/arm/dts/socfpga_cyclone5_sockit.dts       | 3 ---
>  4 files changed, 2 insertions(+), 8 deletions(-)

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

