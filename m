Delivery-date: Wed, 01 Jun 2022 12:14:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwLMe-00H3LX-Cp
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 12:14:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwLMc-0000gp-Nl
	for lore@pengutronix.de; Wed, 01 Jun 2022 12:14:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACymDZ/Pg6+s1BP8JdGvT5xaHAWBPMKL8psBY86dWDA=; b=cbJtjjiFrRAoWF
	Li6NhEVxdl6QgUxYZ1t/ITT0aFGs2FBqlo+FOAk3i33Asot34bRawRbshVaH85AmsPeeBlm125ulP
	Cmpw+g8YS2Fgg4Q9w43IBiHCV0npo8fPD9K/M0VUUCICSRNC5wNT8pDW07z9PAYJh9gK4sdmKqT7F
	aznI2258iYdh6xM4JpTb2u+cIN1Z/lD3VEMcCS5He+owgjY/4jNuy+1gzZEgmN7NwVNyAvesPP2kI
	BMT5f3fSqPRfG8I0il3bR6SQtevxf8oM1xUqrbPpV91+G5dj8+mbw3HusHvVGxmn3D79G/5X25JSS
	ev8cMOTh0rBL5jt5nMSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwLKb-00FBOL-OB; Wed, 01 Jun 2022 10:12:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwL12-00F3Ce-2A
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 09:51:50 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwL0w-000422-1m; Wed, 01 Jun 2022 11:51:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nwL0v-0006QE-PP; Wed, 01 Jun 2022 11:51:41 +0200
Date: Wed, 1 Jun 2022 11:51:41 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de
Message-ID: <20220601095141.GZ1615@pengutronix.de>
References: <20220531082914.1654316-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220531082914.1654316-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_025148_157253_41F78A72 
X-CRM114-Status: GOOD (  30.24  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2] ARM: cpu: don't clobber sp when booted in HYP
 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, May 31, 2022 at 10:29:14AM +0200, Ahmad Fatoum wrote:
> arm_cpu_lowlevel_init() is usually called first thing and will ensure
> barebox runs in SVC mode. If barebox is started in HYP mode instead,
> like is the case on Raspberry Pi 2-3, it will do an exception return
> into SVC mode, which will bank the previously used SP_Hyp and
> restore SP_Svc that may not have been properly initialized by barebox.
> 
> This wasn't too bad so far, because arm_setup_stack was usually called
> after arm_cpu_lowlevel_init, but with ENTRY_FUNCTION_WITHSTACK, SP is
> initialized early on in the naked entry point with
> arm_cpu_lowlevel_init() being called after that.
> 
> This can lead to spurious boot hangs in the Raspberry Pi 2 and 3 entry
> points. Fix this by always saving sp to r3 and restoring it, like we do
> with lr. This is safe to do, because r3 isn't clobbered by any
> instruction in arm_cpu_lowlevel_init() and because it's an argument
> register, callers have to expect it being overwritten by the callee.
> 
> Fixes: b267578d0567 ("ARM: rpi: use ENTRY_FUNCTION_WITHSTACK to prepare for ARM64 support")
> Fixes: 41292192c01b ("ARM: safely switch from HYP to SVC mode if required")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - add source code comment on why sp is saved (Sascha)
> ---
>  arch/arm/cpu/lowlevel.S | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> index 5a7dd3c2093f..960a92b78c0a 100644
> --- a/arch/arm/cpu/lowlevel.S
> +++ b/arch/arm/cpu/lowlevel.S
> @@ -9,6 +9,8 @@
>  ENTRY(arm_cpu_lowlevel_init)
>  	/* save lr, since it may be banked away with a processor mode change */
>  	mov	r2, lr
> +	/* save sp, because possible HYP -> SVC transition below clobbers it */
> +	mov	r3, sp
>  
>  #ifdef CONFIG_CPU_32v7
>  	/* careful: the hyp install corrupts r0 and r1 */
> @@ -77,6 +79,7 @@ THUMB(	orr	r12, r12, #PSR_T_BIT	)
>  
>  	mcr	p15, 0, r12, c1, c0, 0		/* SCTLR */
>  
> +	mov	sp, r3
>  	mov	pc, r2
>  ENDPROC(arm_cpu_lowlevel_init)
>  
> -- 
> 2.30.2
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

