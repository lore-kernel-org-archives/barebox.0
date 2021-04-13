Delivery-date: Tue, 13 Apr 2021 09:50:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDop-00076O-IO
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 09:50:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWDoo-0004Bv-0U
	for lore@pengutronix.de; Tue, 13 Apr 2021 09:50:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BDCSNIhb8VSN2zBz2/NQIMc/HcjNswJKr/OaYDma6pE=; b=BWqYmttriJ0Z7j43klaR8k4lj
	6YUPSFAGO6bs2Y5P+uN9iuMnU2G1rPzdYsDIXWw1/97fg7oP6+b3NoROLkCS2V85j0fcHv0h6PV2p
	puSTgb6FdbQveIeSHltElTDqzcWK0T5JTMlXpGnrm4WNNqOig1GdDs6zq0C/K+5oD8Ku1fI/sxq8y
	F6GmHzOgvYmM/gI6e2bdnG0yVCP3sVYk0+/T5m7z+Pu/AJk1aBalhUFpPbd9XFuPt1izrJmhG4fxq
	1FNi4o8mp+hrGhbJlni21E0UMPJmQckfwHRsRm4hEdCPAVgIg63TN3Qk5vlnIAqowI9Shwp81glND
	11yaZKD0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWDnZ-008Xou-2S; Tue, 13 Apr 2021 07:49:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDnF-008Xlx-TB
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 07:49:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tOBj/VrBUFH8/gj5f1SXBWMYBJlXljD5l24kafR3M/E=; b=02oKz/82KrCgF0B10gSb2NjOWM
 dCKij3OuPdKke3yuyQvp047u26Z/sKt/bPpGbdEHM1toCAV0qoDT+IBXReCOWBm7xXP2t14GZdqPL
 5ZpnUrstPv83C08x6iJV1mj2SwUsjZsyoeDPY0mxtk7tXfK1fCy1VUr4v/HIbIXenGmzJIQeJRDWH
 gYD63ZwfgihIHMToyMFXQhisDXJQNw8TYkx94WRXWyWLhmpVRfjJ85PQkEG4jPTpf4A8uxNKAwZwX
 BNSYLGX7d/pLjhbEUWtOZt7nbrruzzEXpG2xKl7akYuvJcQEqKkES6VqVGgeLpCvZv9mex1iUXc9x
 8axK8u7Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWDnD-006oQ7-7b
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 07:49:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDnC-0003je-1n; Tue, 13 Apr 2021 09:49:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWDnB-0004gA-OE; Tue, 13 Apr 2021 09:49:01 +0200
Date: Tue, 13 Apr 2021 09:49:01 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20210413074901.GL19819@pengutronix.de>
References: <20210403070332.3642879-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210403070332.3642879-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:48:51 up 54 days, 11:12, 88 users,  load average: 0.00, 0.05, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_004903_294435_A16B92CC 
X-CRM114-Status: GOOD (  36.79  )
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
Subject: Re: [PATCH master] RISC-V: boot: uncompress: determine piggy data
 bounds before relocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Apr 03, 2021 at 09:03:32AM +0200, Ahmad Fatoum wrote:
> Like on ARM, the PBL common code does not relocate the piggy data and
> instead keeps pointers into the old image's location.
> 
> For relocate_to_current_adr, this doesn't matter, because both
> destination and source address are the same, but when running from ROM
> or flash relocate_to_adr will only copy up to __bss_start, so
> determining the piggy data bounds _must_ happen before relocation.
> 
> We did so, but input_data_len, which references the image end was
> executed after relocation unearthing two bugs at once:
> 
>   - The compiler cached input_data_end from before relocation, so
>     the runtime offset wasn't being added
> 
>   - Even with runtime offset added, we were pointing at the new
>     address, but the old piggy data wasn't copied there (On erizo,
>     it's still in ROM)
> 
> Fix these by evaluating the bounds before relocation and add a comment,
> why it needs to be there. The same comment will also be added at the
> code's origin in the ARM architecture support.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> Please apply to master.

Did that, thanks

Sascha

> ---
>  arch/riscv/boot/uncompress.c      | 6 +++---
>  arch/riscv/include/asm/sections.h | 4 +++-
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> index 411cefb0e31b..b4e010998a4a 100644
> --- a/arch/riscv/boot/uncompress.c
> +++ b/arch/riscv/boot/uncompress.c
> @@ -32,8 +32,11 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	void *pg_start, *pg_end;
>  	unsigned long pc = get_pc();
>  
> +	/* piggy data is not relocated, so determine the bounds now */
>  	pg_start = input_data + get_runtime_offset();
>  	pg_end = input_data_end + get_runtime_offset();
> +	pg_len = pg_end - pg_start;
> +	uncompressed_len = input_data_len();
>  
>  	/*
>  	 * If we run from inside the memory just relocate the binary
> @@ -45,9 +48,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
>  	else
>  		relocate_to_adr(membase);
>  
> -	pg_len = pg_end - pg_start;
> -	uncompressed_len = input_data_len();
> -
>  	barebox_base = riscv_mem_barebox_image(membase, endmem,
>  					       uncompressed_len + MAX_BSS_SIZE);
>  
> diff --git a/arch/riscv/include/asm/sections.h b/arch/riscv/include/asm/sections.h
> index 725fd8db474e..6673648bcd58 100644
> --- a/arch/riscv/include/asm/sections.h
> +++ b/arch/riscv/include/asm/sections.h
> @@ -15,9 +15,11 @@ extern char __dynsym_end[];
>  extern char input_data[];
>  extern char input_data_end[];
>  
> +unsigned long get_runtime_offset(void);
> +
>  static inline unsigned int input_data_len(void)
>  {
> -	return get_unaligned((const u32 *)(input_data_end - 4));
> +	return get_unaligned((const u32 *)(input_data_end + get_runtime_offset() - 4));
>  }
>  
>  #endif
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

