Delivery-date: Mon, 13 Dec 2021 23:39:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtye-005ivU-NH
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:39:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwtyd-0003w4-38
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:39:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oEGAPnLMYQYwCMXW6Z7a7dX7ZgAsCwHWRIrj4sljWmk=; b=KgWsIDagHJJDJEcWKmIbhlhpIN
	y+HfPNAKzLtoetJwQLGbzzQhnCdPhrBrzqcM+o16//Lv7Re1KvvYbZyayRCg3xVN6Eq6wmjuL8Pig
	LZwxh8y0gCX77dFZKvQAgt3PiNyMn6+lMWwH52oAy6pVO2T8YYVXEywD3x0h9tHvYUAtY+z0jR4t2
	7H6bVOSk/ob9/hm0CfsFLgLV6grpV6uIy01wULRrQFo+F4XgSjD37I2hcoBpQscgD3iCd6Mks5wkE
	DYO2sTlZQ9uuHDaqOhn32JG6OM8xduhb1o4gjrtvvjXttPDL69GWincOjHIYTRuDxDuYVqUdDW83B
	dtCnQ5mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwtwn-00Bn4o-7w; Mon, 13 Dec 2021 22:37:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtZW-00Be55-VD
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:13:28 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtZU-00018w-V1; Mon, 13 Dec 2021 23:13:24 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtZT-0003z1-Vg; Mon, 13 Dec 2021 23:13:23 +0100
Date: Mon, 13 Dec 2021 23:13:23 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211213221323.GC6003@pengutronix.de>
References: <20211203063340.1026512-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211203063340.1026512-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:13:15 up 3 days, 6:58, 33 users, load average: 0.01, 0.08, 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_141327_052071_4A7A8993 
X-CRM114-Status: GOOD (  25.33  )
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
Subject: Re: [PATCH master] RISC-V: interrupts: fix Zifencei emulation on rv64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Dec 03, 2021 at 07:33:40AM +0100, Ahmad Fatoum wrote:
> Zifencei emulaton was added for bare bones 32-bit targets, but the code
> is there on 64-bit too. The instruction skip at the end of the function
> skips 4 bytes, the size of an instruction on both rv32 and rv64. The
> instruction decoder however assumes instructions are size(long) bytes,
> which is 8 > 4 on rv64. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/riscv/cpu/interrupts.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/riscv/cpu/interrupts.c b/arch/riscv/cpu/interrupts.c
> index 0e8951b61968..1f2d7b885737 100644
> --- a/arch/riscv/cpu/interrupts.c
> +++ b/arch/riscv/cpu/interrupts.c
> @@ -122,7 +122,7 @@ unsigned long handle_trap(struct pt_regs *regs)
>  		goto skip;
>  
>  	if (regs->cause == 2) { /* illegal instruction */
> -		switch(*(unsigned long *)regs->epc) {
> +		switch(*(u32 *)regs->epc) {
>  		case 0x0000100f: /* fence.i */
>  			goto skip;
>  		default:
> -- 
> 2.33.0
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

