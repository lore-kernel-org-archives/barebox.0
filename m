Delivery-date: Tue, 13 Apr 2021 09:49:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDnh-000760-P1
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:49:33 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDnh-0003mR-0g
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:49:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QmdFwP7d6d2bN2yh1UGm8nnV65bi6uxCjQymiO8/uxY=; b=p9cJN7kkl72lX4pb8kvYI6ud4
	wY9djMcHpMdLEvaJBVY8RzHG2RvaM+QosYwkk6POtd1ACoATHnECap8dv+IMgLLvRy8HZO67frcpl
	XXHaSXOkhtm5/J0FOzeJtlvgyMqen2iBKAfKZeP1Sy4PG8ILNhg314lHJgLPLG5N66X8Prx+toWxH
	8tpnMmqI7V+ii5AbHZV0w0lyIGoqN+JQYrit47L+2TAfvdXXOhUPWjeLG6ek44HXNjNd60Pb90jYL
	s8eqxm4IWYWmRHd6+1aWY6gYi/4BVsKrAy3PU+Es1F6xWr5+gtsPvFSE0isLND0ZEdrwuDkyD+VbB
	j4A4zJIjA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDmO-008Xhv-H3; Tue, 13 Apr 2021 07:48:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDmK-008XhQ-QO
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:48:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1JodbM2UQkRyso1RYgyz98bVnwoX8lkbX3kcuA4CoYo=; b=ToOF6MK3VDe4PXUOsbBM/Ssa6X
 Z65gqNU1i9I8c24zksp0NScdbrpOlkfgRbsJrDQFaXVTiuWyYF32RR7VeOQ/O9BqawH6cKNY43HTJ
 N9dnuwS0yFHDZzLBKaKTdFzJtCpmghD7CEns6h1qpUAP1lEdrBAjl4bvvcoygnsck+sDt97HAX0oF
 gDQpOGruSfPFxG56PoItf3srHL+VocoJ5AGrnjvae273hNRtF3t7Msd4EYliJsljFasTrSUUEuxgT
 yNh1eW+wnlVJzgoTpdRXaHbVQcRj1Uz2KD8WJvn8ZXYrdhcjJ3nQOniFSri88e9mFnjwjKfGe8rGo
 JknlXabg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDmH-006oNi-A8
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:48:06 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDmF-0003gw-PZ; Tue, 13 Apr 2021 09:48:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDmF-0004fi-Bl; Tue, 13 Apr 2021 09:48:03 +0200
Date: Tue, 13 Apr 2021 09:48:03 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413074803.GK19819@pengutronix.de>
References: <20210403070346.3643335-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210403070346.3643335-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:47:51 up 54 days, 11:11, 88 users,  load average: 0.01, 0.06, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_004805_373348_77D2766F 
X-CRM114-Status: GOOD (  28.99  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: pbl: uncompress: add comment explaining order of
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 03, 2021 at 09:03:46AM +0200, Ahmad Fatoum wrote:
> When the PBL runs from flash, it relocates to RAM prior to extracting
> barebox proper. It does the sneaky thing of _not_ relocating the piggy
> data though, so read from flash and uncompression may latter happen
> at the same time.
> 
> For this to work, it's critical that the variables pointing at the piggy
> data are evaluated before relocation. ARM does so and carefully uses
> them to derive the address of the PBL size later on instead of
> evaluating image_data_end again.
> 
> When I ported the same code for RISC-V use, this got lost. Add a comment
> explaining the criticality of maintaining this order of operations.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/arm/cpu/uncompress.c | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index db0fe98e0d83..2250b8ccd375 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -52,6 +52,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	void *pg_start, *pg_end;
>  	unsigned long pc = get_pc();
>  
> +	/* piggy data is not relocated, so determine the bounds now */
>  	pg_start = input_data + global_variable_offset();
>  	pg_end = input_data_end + global_variable_offset();
>  
> -- 
> 2.30.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

