Delivery-date: Mon, 25 Apr 2022 10:18:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nitv6-00EX8V-9F
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 10:18:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nitv3-0004ZW-0t
	for lore@pengutronix.de; Mon, 25 Apr 2022 10:18:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVx9t5VSUfcD7MLtTsLPlCNUUGNKnj7xmruj0fkzCYI=; b=IG0UszGigOZuiP
	FShUx18GjYswEA++EOE6fhtLK63Tx1eevosLRfks8mZ3ljBeTFjMgyMeZi6uHxe3xZE0lm+vw50vw
	IYS63nW+GHElBKyQ4VeoFjNweo1yYKdphc/VCEEr09079wyBbtCNOGYzpAYOJl+mDrudXHKWTJRue
	fzU438mCikcl4lybog6A8RK4Ub5oVexzFxVTv+4ZQ0RLaNz26C6g/LvmWtGrA8J2qykfsKb3945/Q
	h9Bze6vKxL2xCQ2SRhkwffi7xxizNrKpVu5lOlfinxa5T3UenCoYPayagaJ8fubLzb3ASJdj2WFn0
	44kJWiTU/lxZvpbaODwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nitta-008j8l-2J; Mon, 25 Apr 2022 08:16:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nittV-008j8Q-Cb
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 08:16:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nittQ-0004Mo-2T; Mon, 25 Apr 2022 10:16:24 +0200
Message-ID: <695bcc60-9083-02a2-515d-b7ee8f46e916@pengutronix.de>
Date: Mon, 25 Apr 2022 10:16:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: barebox@lists.infradead.org
Cc: ore@pengutronix.de
References: <20220425062523.17478-1-a.fatoum@pengutronix.de>
 <20220425062523.17478-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220425062523.17478-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_011629_727504_11FD1E03 
X-CRM114-Status: GOOD (  20.55  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2 1/3] ARM: asm: fix miscompilation of 32-bit
 ENTRY_FUNCTION_WITHSTACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 25.04.22 08:25, Ahmad Fatoum wrote:
> gcc-11.1.1 shipped with OSELAS.Toolchain-2021.07.0 hoists a single
> instruction from __ARM_SETUP_STACK in front of __barebox_arm_head
> breaking the barebox header format for the Raspberry Pi 3. This can't
> happen with ARM64 and the Raspberry Pi entry points are currently the
> only 32-bit users.
> 
> While the resulting barebox image was still bootable, header detection
> would fail. Add an intermediate naked function to work around this.
> 
> This is not required for plain ENTRY_FUNCTION, because the
> board-supplied entry point is already NAKED. For
> ENTRY_FUNCTION_WITH_FUNCTION, that same entry point is intentionally
> non-naked to reduce pitfalls for board code authors..
> 
> Fixes: 880c9803b95a ("ARM: implement ENTRY_FUNCTION_WITHSTACK")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/include/asm/barebox-arm.h | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
> index d915cde294a4..8b0c00633277 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -194,15 +194,21 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
>  	void name(ulong r0, ulong r1, ulong r2);			\
>  									\
>  	static void __##name(ulong, ulong, ulong);			\
> +	static void ____##name(ulong, ulong, ulong);			\
>  									\
>  	void NAKED __section(.text_head_entry_##name)	name		\
>  				(ulong r0, ulong r1, ulong r2)		\
>  		{							\
>  			__barebox_arm_head();				\
> -			__ARM_SETUP_STACK(stack_top);			\
>  			__##name(r0, r1, r2);				\
>  		}							\
> -		static void noinline __##name				\
> +		static void NAKED noinline __##name			\
> +			(ulong r0, ulong r1, ulong r2)			\
> +		{							\
> +			__ARM_SETUP_STACK(stack_top);			\
> +			____##name(r0, r1, r2);				\
> +		}							\
> +		static void noinline ____##name				\

I see now I could just make it call ENTRY_FUNCTION on arm32 with stack setup
and leave it unchanged for ARM64. Will do so for v3.

>  			(ulong arg0, ulong arg1, ulong arg2)
>  
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

