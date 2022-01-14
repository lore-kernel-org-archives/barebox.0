Delivery-date: Fri, 14 Jan 2022 10:30:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iul-001um1-HU
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 10:30:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Iuk-00089t-7n
	for lore@pengutronix.de; Fri, 14 Jan 2022 10:30:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fdnf4GPJHEnuKvQKoMPlQuUG5xVtbj1Or07CVNBqd6Q=; b=okogV5L4tD1K2Kq61a+5Gl3R7T
	sJI2ulpKQFP3/2TEQMsD9H8KeMVyp2ShSWm5SW8Cw5FTkvmiKIhoKP994Vr7EkhOsMMR1EU/GpVnb
	7Yc9+ku4h/nZG7f3npSE/K0yD+3/KZT3AwVLOUne8ioAtFIHmGkhjARB5RoNWXG5EgHHYRWh5ZAuy
	QZQRGO5L1GcM9+om/P3Lkd/aCJeMYjkrgl7Hj4AfeWadsjW9TnKifFIl/K/kqYtCVnBKqYUnjIux/
	xrha1Mo+rOwwlAG8KuQqzEUVgg98PmaX6MkPkKxFhCoAMYCAvbKM9wvOVLxmMAKbplaJ1mhNDEgwA
	Zazu9ttQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8ItR-008VXS-I9; Fri, 14 Jan 2022 09:29:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8ItM-008VWR-2I
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 09:29:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8ItK-0007ww-SJ; Fri, 14 Jan 2022 10:29:02 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1n8ItK-0001h9-Jo; Fri, 14 Jan 2022 10:29:02 +0100
Date: Fri, 14 Jan 2022 10:29:02 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220114092902.GU26619@pengutronix.de>
References: <20220114084227.308804-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220114084227.308804-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:28:36 up 34 days, 18:14, 79 users,  load average: 0.01, 0.06, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_012904_134368_04ABD2E7 
X-CRM114-Status: GOOD (  30.18  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] ARM: implement ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 14, 2022 at 09:42:25AM +0100, Ahmad Fatoum wrote:
> The point of ENTRY_FUNCTION is to write the entry point in C. Due to
> lack of __naked on ARM64, the start of the entry point will have prologue
> using stack and it's not possible to set up the stack safely without
> branching into non-inline assembly[0]. On ARM32, where we got __naked, we
> have the potential for a different problem: If BootROM sets up stack for
> us and we branch to a naked function, which doesn't set up its own
> stack, compiler may decide to spill local variables overwriting
> instructions it had already run[1].
> 
> For code reuse between ARM and ARM64, it would be nice to use the same
> entry point structure for both. Currently, the only way is to write it
> in non-inline assembly using the ENTRY_PROC macro.
> 
> This introduces another way: the ARM64 barebox header has enough space
> for 8 instructions of which 5 are unused (2 instructions compiler prologue
> + 1 instruction to jump after the header), we could place a stack setup
> routine there to avoid having to write a separate assembly file.
> For ARM32, we just call arm_setup_stack and branch out directly after,
> freeing board porters of the burden of getting it right.
> 
> Add a new ENTRY_FUNCTION_WITHSTACK to realize this.
> 
> [0]: 76bced6fe146 ("ARM: document arm_setup_stack() pitfalls"),
> [1]: b51b15ba1738 ("RISC-V: board-dt-2nd: move low level init into nonnaked function")
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>  - add __ARM_SETUP_STACK(0) to normal ENTRY_FUNCTION. On ARM32, it's a
>    no-op, but on ARM64, it ensures the header isn't shifted
> ---
>  arch/arm/include/asm/barebox-arm-head.h |  6 +---
>  arch/arm/include/asm/barebox-arm.h      | 46 +++++++++++++++++++++++++
>  arch/arm/lib/pbl.lds.S                  |  1 +
>  3 files changed, 48 insertions(+), 5 deletions(-)

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

