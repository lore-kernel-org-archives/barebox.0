Delivery-date: Tue, 06 Jun 2023 11:08:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SgN-00CqoA-UZ
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 11:08:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6SgL-0002Ro-7X
	for lore@pengutronix.de; Tue, 06 Jun 2023 11:08:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8vfvv0w8vwnnwdy/ZE8yk9fC7PUf072GTzhbfE7Nmfc=; b=N4x0MLmd8KlE6zPn2Nb5/qgbZe
	Ddle22Zg1ncJPWr2T8XjAFAD0wj6PlZMaHW6epx4i2FZbUS0uiP5le4EQ4+JSPVr5afTZJZj0esgF
	Ig8+uCRDIc74kqErI12/ogCubFNyuWtH2u5jxXtnrfjXAcBS7mhXeJpQ695xvI3SmshuRESj1HG+a
	O8N7w+gLj8IK8jHe2LINMYvSxX9HueZBG8Pa2CDAe0eRrCxAvt6kP9GNd/Brfk14gmifjfRZFVU0D
	o103eSU+HgrX6uEroolcrxr0Rq/wUkGRUsQxBUpjLTmmFlPHgZKZexu9D93ilCPgwnp/ZbbJ0Fvdn
	8ePIqyxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6SfA-000wYT-34;
	Tue, 06 Jun 2023 09:07:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Sf7-000wXG-1x
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 09:07:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Sf6-0002Ex-BP; Tue, 06 Jun 2023 11:07:32 +0200
Message-ID: <760edbf3-5767-55ba-3e34-13899be5e693@pengutronix.de>
Date: Tue, 6 Jun 2023 11:07:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-15-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-15-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_020733_644156_D5A95C27 
X-CRM114-Status: GOOD (  17.66  )
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
Subject: Re: [PATCH 14/17] MIPS: pbl_macros: use generic load/store macros in
 copy_to_link_location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> This may speed up this code a little on MIPS64, however this also allows
> us to get rid of unnecessary macro definition there, simplifying the
> code a tiny bit.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/mips/include/asm/pbl_macros.h | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
> index ce169a1554..f8629d3f2c 100644
> --- a/arch/mips/include/asm/pbl_macros.h
> +++ b/arch/mips/include/asm/pbl_macros.h
> @@ -120,22 +120,21 @@
>  	PTR_SUBU	t2, t1, t0	/* t2 <- size of pbl */
>  	PTR_ADDU	a2, a0, t2	/* a2 <- source end address */
>  
> -#define WSIZE	4
>  copy_loop:
>  	/* copy from source address [a0] */
> -	lw	ta0, WSIZE * 0(a0)
> -	lw	ta1, WSIZE * 1(a0)
> -	lw	ta2, WSIZE * 2(a0)
> -	lw	ta3, WSIZE * 3(a0)
> +	LONG_L	ta0, LONGSIZE * 0(a0)
> +	LONG_L	ta1, LONGSIZE * 1(a0)
> +	LONG_L	ta2, LONGSIZE * 2(a0)
> +	LONG_L	ta3, LONGSIZE * 3(a0)
>  	/* copy to target address [a1] */
> -	sw	ta0, WSIZE * 0(a1)
> -	sw	ta1, WSIZE * 1(a1)
> -	sw	ta2, WSIZE * 2(a1)
> -	sw	ta3, WSIZE * 3(a1)
> -	PTR_ADDI	a0, WSIZE * 4
> +	LONG_S	ta0, LONGSIZE * 0(a1)
> +	LONG_S	ta1, LONGSIZE * 1(a1)
> +	LONG_S	ta2, LONGSIZE * 2(a1)
> +	LONG_S	ta3, LONGSIZE * 3(a1)
> +	PTR_ADDI	a0, LONGSIZE * 4
>  	PTR_SUBU	t3, a0, a2
>  	blez	t3, copy_loop
> -	 PTR_ADDI	a1, WSIZE * 4
> +	 PTR_ADDI	a1, LONGSIZE * 4
>  
>  copy_loop_exit:
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



