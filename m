Delivery-date: Tue, 06 Jun 2023 10:22:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rx6-00CoVt-8t
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:22:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rx3-0003M7-Lm
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:22:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kGi7Cy8R/7t6v3/JEdIIlddhhl/FtywWhjdjDrVy8Xw=; b=Bd+3jrHcMF9mECeyZ1LCMrdtjc
	8gsX1JaPx3ubcKZsPYgTg+qarhfRoleNIbMJtQWAftYowU1iNRuVQl8n83Chng6K8qC+v/yiNOkk2
	IZaIsO229+5WeSgegaFV2giplz1T+w5eVmAwPeiOWs5VNtROpywUoEHOOX8mdQB7e+u2trbzwyYEF
	c+P/9knitcxlGJAi1+Nz+NUcpUPkQIK+rNKR9limqiqF7XMse2DMxxqhCjkrwN7LTZSPRWU83dZC1
	dII3SS9QeKl7u2I3pE/X2mkMje652aeDcI2w+qVZVmUgLR82BBP/MLCKZlTsFrVff4Ql3NqGNBMqq
	5Zuo8kFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rw0-000lxb-03;
	Tue, 06 Jun 2023 08:20:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rvt-000lw6-35
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:20:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Rvs-0003AA-6a; Tue, 06 Jun 2023 10:20:48 +0200
Message-ID: <05693f5a-e5d5-fa97-1074-939e01170fa5@pengutronix.de>
Date: Tue, 6 Jun 2023 10:20:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-6-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-6-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_012053_092969_FE3405CD 
X-CRM114-Status: GOOD (  17.29  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 05/17] MIPS: pbl: use o32/n64 compatible register
 definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> This allows to compile PBL code with n64 ABI, which we use when
> CONFIG_64BIT is set.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/include/asm/pbl_macros.h | 28 ++++++++++++++--------------
>  arch/mips/include/asm/pbl_nmon.h   | 10 +++++-----
>  2 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
> index c62910ff60..e60af38442 100644
> --- a/arch/mips/include/asm/pbl_macros.h
> +++ b/arch/mips/include/asm/pbl_macros.h
> @@ -30,9 +30,9 @@
>  	.set noreorder
>  	li	t9, \addr
>  	li	t8, \val
> -	lw	t7, 0(t9)
> -	or	t7, t8
> -	sw	t7, 0(t9)
> +	lw	ta3, 0(t9)
> +	or	ta3, t8
> +	sw	ta3, 0(t9)
>  	.set	pop
>  	.endm
>  
> @@ -41,10 +41,10 @@
>  	.set noreorder
>  	li	t9, \addr
>  	li	t8, \clr
> -	lw	t7, 0(t9)
> +	lw	ta3, 0(t9)
>  	not	t8, t8
> -	and	t7, t8
> -	sw	t7, 0(t9)
> +	and	ta3, t8
> +	sw	ta3, 0(t9)
>  	.set	pop
>  	.endm
>  
> @@ -123,15 +123,15 @@
>  #define WSIZE	4
>  copy_loop:
>  	/* copy from source address [a0] */
> -	lw	t4, WSIZE * 0(a0)
> -	lw	t5, WSIZE * 1(a0)
> -	lw	t6, WSIZE * 2(a0)
> -	lw	t7, WSIZE * 3(a0)
> +	lw	ta0, WSIZE * 0(a0)
> +	lw	ta1, WSIZE * 1(a0)
> +	lw	ta2, WSIZE * 2(a0)
> +	lw	ta3, WSIZE * 3(a0)
>  	/* copy to target address [a1] */
> -	sw	t4, WSIZE * 0(a1)
> -	sw	t5, WSIZE * 1(a1)
> -	sw	t6, WSIZE * 2(a1)
> -	sw	t7, WSIZE * 3(a1)
> +	sw	ta0, WSIZE * 0(a1)
> +	sw	ta1, WSIZE * 1(a1)
> +	sw	ta2, WSIZE * 2(a1)
> +	sw	ta3, WSIZE * 3(a1)
>  	addi	a0, WSIZE * 4
>  	subu	t3, a0, a2
>  	blez	t3, copy_loop
> diff --git a/arch/mips/include/asm/pbl_nmon.h b/arch/mips/include/asm/pbl_nmon.h
> index 0e4ec39967..7c8ec9d204 100644
> --- a/arch/mips/include/asm/pbl_nmon.h
> +++ b/arch/mips/include/asm/pbl_nmon.h
> @@ -39,12 +39,12 @@
>  	.set	push
>  	.set	reorder
>  
> -	move	t6, a0
> -	li	t5, 32
> +	move	ta2, a0
> +	li	ta1, 32
>  
>  202:
> -	addi	t5, t5, -4
> -	srlv	a0, t6, t5
> +	addi	ta1, ta1, -4
> +	srlv	a0, ta2, ta1
>  
>  	/* output one hex digit */
>  	andi	a0, a0, 15
> @@ -57,7 +57,7 @@
>  
>  	debug_ll_outc_a0
>  
> -	bgtz	t5, 202b
> +	bgtz	ta1, 202b
>  
>  	.set	pop
>  #endif /* CONFIG_DEBUG_LL */

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



