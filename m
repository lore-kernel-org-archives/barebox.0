Delivery-date: Wed, 05 May 2021 12:29:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEmh-0007fP-CT
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:29:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEmg-0000ez-BD
	for lore@pengutronix.de; Wed, 05 May 2021 12:29:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e3tN/3kfHDcdI9Q9wLRqZWu5s0p5hJKaRwR7CBkoYjQ=; b=UNTcnxWrv2F4cylhBhz3nW+CZ
	dYkcINStp+IgKMVRz793VYt15I8hqC/5hsDch06bMivTxhN72t3nIivdH+edf6ozl9hYKhF3bhVSi
	fvUDvvOBMCB327UOAHYktdvgVCUAzp3JeilYtcl/LJ9XZHb1ZucyBpDcPeqy2ifN3OxyQlQPCRpbA
	92Hqu754NbEmMH9JbfbTwwgsWb3C9xWnSJMALie5pKnJmjJqcyayO4TCwMeMd+d9nRxMJ5S2o4L0J
	reUH7foduxt9KAyWvSQ7n4J+2eZJo1DESQlpfSz6BozY9iIteJ0G4X+g3WmQBkYBKCbrDPgPs99Q3
	8OeJNN8QA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leElh-000x9X-7y; Wed, 05 May 2021 10:28:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEkR-000weX-82
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=5dauHBvHw1bFM+mriMzZjxGhfLvYQTr2EH+IVneF2hc=; b=cXOsku1iiTukt/FioYTPsUJijI
 aTDqA6H3bHV/sX5jz5cyUlDSsd3djcLks6Nkg0DqVF6httrkdclC5SV84fC9Kht/gbybQK2h04sxB
 axabBgqlnvPjqaJCD8tkaOyFK9Lxb5X0qIZOhpPj8uyki+PmmwXrUDT7jNRNQviz8Bwy9rboUHFMp
 Rj9tWW6YNgjuuALDAh1j4N2MX2OQ+r0iufYQD1PKaJDzmC/kMdWs2anyXs6fRspSzb6VTyHfiYjZE
 HcviyBU2eqAtQAw/0sfH4AAcmFfmSMjN2Y+zOVlOTMPuGET3jSwrcAo/qa1T5elbK8tuTbMJ47X8U
 KpHhfV9A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEkO-004ffO-3B
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:27:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1leEkM-0000Ji-Hs; Wed, 05 May 2021 12:27:14 +0200
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-2-antonynpavlov@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <8f9f9b43-7506-0eca-b337-7d4f8aef4020@pengutronix.de>
Date: Wed, 5 May 2021 12:27:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210505100900.88141-2-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_032716_167426_4F8DD086 
X-CRM114-Status: GOOD (  23.76  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/9] RISC-V: make it possible to run nmon from PBL C code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

On 05.05.21 12:08, Antony Pavlov wrote:
> After migrating to PBL we can't use nmon assembler macro
> in C code anymore. Some changes are introduced to invoke
> nmon from PBL C code:
> 
>   * use 'lla' macro instruction instead of 'la';
>   * don't touch the 'ra' register, use 'a2' instead;
>   * add wrapper C function for nmon.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/riscv/boot/Makefile            |  1 +
>  arch/riscv/boot/nmon_entry.S        | 13 ++++++++++++
>  arch/riscv/include/asm/riscv_nmon.h | 33 ++++++++++++++---------------
>  3 files changed, 30 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/riscv/boot/Makefile b/arch/riscv/boot/Makefile
> index 968a826d16..80f63a4a0a 100644
> --- a/arch/riscv/boot/Makefile
> +++ b/arch/riscv/boot/Makefile
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-y += start.o
>  pbl-y += entry.o uncompress.o
> +pbl-y += nmon_entry.o
>  pbl-$(CONFIG_BOARD_GENERIC_DT) += board-dt-2nd.o
> diff --git a/arch/riscv/boot/nmon_entry.S b/arch/riscv/boot/nmon_entry.S
> new file mode 100644
> index 0000000000..9b30b50627
> --- /dev/null
> +++ b/arch/riscv/boot/nmon_entry.S
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#include <linux/linkage.h>
> +#include <asm/sections.h>
> +
> +#include "mach/debug_ll.h"
> +#include "asm/riscv_nmon.h"
> +
> +.section .text_bare_init
> +
> +ENTRY(__barebox_nmon_entry)

Perhaps drop the __? __ makes me think I should
not call this or that there is a non __-prefixed
versions, but both don't seem to be true as boards
do directly call this.

> +	riscv_nmon
> +	ret
> +ENDPROC(__barebox_nmon_entry)
> diff --git a/arch/riscv/include/asm/riscv_nmon.h b/arch/riscv/include/asm/riscv_nmon.h
> index caf213cdd8..11b19ab35b 100644
> --- a/arch/riscv/include/asm/riscv_nmon.h
> +++ b/arch/riscv/include/asm/riscv_nmon.h
> @@ -20,9 +20,8 @@


Please add
#ifndef __ASSEMBLY__
void __barebox_nmon_entry(void);
#endif

here.

With that addressed:
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

>  
>  .macro nmon_outs msg
>  
> -	la	a1, \msg
> -
> -	jal	_nmon_outs
> +	lla	a1, \msg
> +	jal	a2, _nmon_outs
>  
>  .endm
>  
> @@ -73,7 +72,7 @@ nmon_main:
>  	li	a0, 'q'
>  	bne	s0, a0, 3f
>  
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
>  	j	nmon_exit
>  
> @@ -90,12 +89,12 @@ nmon_main:
>  	j	nmon_main_help
>  
>  nmon_cmd_d:
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
>  	li	a0, ' '
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
> -	jal	_nmon_gethexw
> +	jal	a2, _nmon_gethexw
>  
>  	nmon_outs	msg_nl
>  
> @@ -105,28 +104,28 @@ nmon_cmd_d:
>  	j	nmon_main
>  
>  nmon_cmd_w:
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
>  	li	a0, ' '
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
> -	jal	_nmon_gethexw
> +	jal	a2, _nmon_gethexw
>  	move	s2, s0
>  
>  	li	a0, ' '
> -	jal	_nmon_outc_a0
> -	jal	_nmon_gethexw
> +	jal	a2, _nmon_outc_a0
> +	jal	a2, _nmon_gethexw
>  
>  	sw	s0, 0(s2)
>  	j	nmon_main
>  
>  nmon_cmd_g:
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
>  	li	a0, ' '
> -	jal	_nmon_outc_a0
> +	jal	a2, _nmon_outc_a0
>  
> -	jal	_nmon_gethexw
> +	jal	a2, _nmon_gethexw
>  	move	s2, s0
>  
>  	nmon_outs	msg_nl
> @@ -136,7 +135,7 @@ nmon_cmd_g:
>  
>  _nmon_outc_a0:
>  	debug_ll_outc_a0
> -	jr	ra
> +	jr	a2
>  
>  _nmon_outs:
>  
> @@ -202,7 +201,7 @@ _get_hex_digit:
>  	move	s0, t2
>  
>  _nmon_jr_ra_exit:
> -	jr	ra
> +	jr	a2
>  
>  msg_prompt:
>  	.asciz "\r\nnmon> "
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

