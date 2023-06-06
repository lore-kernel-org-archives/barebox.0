Delivery-date: Tue, 06 Jun 2023 10:14:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rq9-00CoDe-3W
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:14:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Rq6-0001yR-Er
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:14:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LqYdBDOGEcUNjhmVF4G5bJ+lQR7tG3a6XMN/ytHgyMQ=; b=anrv+karwg7EXzTw2JzrXsRhX7
	Zd1tn4VJGfd9tEkJm+8zFcR10rGR1N52F1tZXEs9BKnKd7UZ57rME+9GpGSx1fKb2sM33aBlCdMaP
	33XtmwVVm5YNox4urT5ueS1wgtmM7zcfLN/JbO9tjYEDo/WIH8Sph6cvbswlDlUp+sy4c8PaLCz0T
	S6N//v6kC7aIDsR8+/IaiJrDqzAlLlaP/DcugUchDCeGAgUOOMXOqCYJynM6luH/9ebELvcKQr8g4
	6FVhN0A6JSwBnJOF33rwmF5XX7cxgkzGu4uSXtJBJLk9CmvfjhUVTEJ6GjfEYOb637AV7b0HpvO1x
	XPJmvb2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Roz-000kTK-1u;
	Tue, 06 Jun 2023 08:13:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Row-000kSX-1X
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:13:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q6Rou-0001r1-Jc; Tue, 06 Jun 2023 10:13:36 +0200
Message-ID: <2b45c583-276c-b4f1-ac11-07062033c7ce@pengutronix.de>
Date: Tue, 6 Jun 2023 10:13:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230605202634.42175-1-denorl2009@gmail.com>
 <20230605202634.42175-5-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230605202634.42175-5-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_011338_538397_414DA782 
X-CRM114-Status: GOOD (  19.27  )
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
Subject: Re: [PATCH 04/17] MIPS: o32: provide ta0..ta3 register definitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 05.06.23 22:10, Denis Orlov wrote:
> This allows to write generic assembly code that will compile under both
> o32 and n64 ABIs, as otherwise the register definitions would conflict.
> 
> Taken from Linux kernel sources, commit 'MIPS: O32: Provide definition
> of registers ta0 .. ta3.' (3ba1e543ab4b02640d396098f2f6a199560d5f2d).
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

I must say, this file looks odd though. _MIPS_SIM is apparently
defined by the compiler and it's compared against _MIPS_SIM_ABI32,
which barebox defines...

> ---
>  arch/mips/include/asm/regdef.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/mips/include/asm/regdef.h b/arch/mips/include/asm/regdef.h
> index 1300251661..df87582e8e 100644
> --- a/arch/mips/include/asm/regdef.h
> +++ b/arch/mips/include/asm/regdef.h
> @@ -3,6 +3,8 @@
>   * Copyright (C) 1985 MIPS Computer Systems, Inc.
>   * Copyright (C) 1994, 95, 99, 2003 by Ralf Baechle
>   * Copyright (C) 1990 - 1992, 1999 Silicon Graphics, Inc.
> + * Copyright (C) 2011 Wind River Systems,
> + *   written by Ralf Baechle <ralf@linux-mips.org>
>   */
>  #ifndef _ASM_REGDEF_H
>  #define _ASM_REGDEF_H
> @@ -27,9 +29,13 @@
>  #define t2      $10
>  #define t3      $11
>  #define t4      $12
> +#define ta0     $12
>  #define t5      $13
> +#define ta1     $13
>  #define t6      $14
> +#define ta2     $14
>  #define t7      $15
> +#define ta3     $15
>  #define s0      $16     /* callee saved */
>  #define s1      $17
>  #define s2      $18

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



