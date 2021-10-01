Delivery-date: Fri, 01 Oct 2021 15:37:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWIjG-0001rh-1T
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 15:37:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWIjF-0005kx-2k
	for lore@pengutronix.de; Fri, 01 Oct 2021 15:37:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ieNS8QDXvm8o687vX75kTN4FyB5wHMLI2AFn6wOYEdg=; b=tizQSA4Zxd6iq4nLs1z+ZnTQj/
	vlc27vqKwD+5vg6E/2AjVws6+PxFXaN4IcRuGgIDcZynFOxj8OVcOYfXRL3n1s0k64NWPc6TU7emm
	4ih79u9PkYRvsNy1Ytz6JjdsVsotmOX3S1n97XhFGgw2bdln86X3F4wwjTXZUcFHVipp3VPkXSTsP
	pHrQ0fcWoYBi8R2x+En9+q4p+iJkDdHMnfmTYRwzHYtvdBw+nK6KBczvw7c1cqY6QqFJ8QN3W9ub1
	yKZHnLMW4bVK283ZZy2+tBNaICrJwwGvMu7CCVdSXtrDYtqPn4qJ9C4AT/ExB0bW9p2MZ9nNBPx9Y
	+j50vCFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWIhw-000RPv-Ro; Fri, 01 Oct 2021 13:36:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWIhs-000RPZ-9W
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 13:36:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWIhq-0005bm-Mg; Fri, 01 Oct 2021 15:36:06 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mWIhp-0006rX-R9; Fri, 01 Oct 2021 15:36:05 +0200
Date: Fri, 1 Oct 2021 15:36:05 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Rosin <peda@axentia.se>
Message-ID: <20211001133605.GX24834@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:35:52 up 225 days, 16:59, 136 users,  load average: 0.43, 0.29,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_063608_354028_74F4EAF5 
X-CRM114-Status: GOOD (  18.74  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] ARM: at91: sama5d3_xplained: migrate to DT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Sep 22, 2021 at 08:49:56AM +0200, Ahmad Fatoum wrote:
> We have one other DT-enabled SAMA5D3 board already:
> microchip-ksz8477-evb, which is basically a sama5d3 xplained in
> different form factor and with a switch. Mimic what we do there to get
> rid of the sama5d3 board code.
> 
> Tested booting first/second stage on SD and second stage after
> at91bootstrap on NAND. The first two patches could be cherry-picked
> to master.
> 
> Ahmad Fatoum (5):
>   fs: fat: pbl: support >32M alignment for first partition
>   ARM: at91: at91sam9263ek: add device tree check for board code
>   Documentation: boards: at91: remove done TODOs
>   ARM: at91: sam9_smc: register driver earlier
>   ARM: AT91: migrate sama5d3-xplained to DT

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

