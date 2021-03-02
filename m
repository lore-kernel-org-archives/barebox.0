Delivery-date: Wed, 03 Mar 2021 18:22:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVCb-0008Qp-0y
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 18:22:25 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHVCa-0008UM-2D
	for lore@pengutronix.de; Wed, 03 Mar 2021 18:22:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kCVjIrsBibyfcBjJYW9C8Kay+gp9eisARR1ovf54Zdw=; b=bqJ6tndsFqyX7Ehihs4RPC5Xk
	2vdJnOtjMcBfN3/7LTuMJMhCaklpMV9PxEbD9d1koUslbWPXlnbH5g6mG5ZeP3KN1ld0j+8oPw4SO
	SNXW5rLORdqwO2WNFMa36GC91zQg9ZFBOLHXH0iKXMQM/qxrIIMJwM272gNcujoLGXIoSbpZC/gjV
	gZd8o98kzb+Y4M6oJofwOKoRngDGthWOVUVvlBvbuAlh+LndkXuGxgr0v8fT7w+acaeFYTYtaBU8r
	7ubyiEIMnCFAJEj5yzgXuh5UYnmPbFU4b1olqZ6hAophuV8fMm9fS2MJnxNYgTlvcL26grIi71+O6
	ENb4wKCtQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHVB1-005mBV-D7; Wed, 03 Mar 2021 17:20:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSuU-005FHk-HD
 for barebox@desiato.infradead.org; Wed, 03 Mar 2021 14:55:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=KhZzWoUg9IdCGzFrK3DyMAmfsmaHIAJnRNHC0+CCIcA=; b=QimFjoZegRRsFREcjrB1VmLWJk
 d0brYWuu/VwzygyQsV0QQc/zcNcWxCPqj9VxTLZYPjiNINZ9US/MMlkb9/lKATin+PaSaGzj3QCg3
 RJp5ztX8GESYw1zDB52Cxw3+hH0wzc5IvEJgYskXq3XDMIP0Z1Yf0ilp8c/ewuJlh2I+AeMNGu8lT
 Lz0gmsg7HbcNmQZY83EQziYJ+S6mkuZ2Q9HAN1AKEFWOEiN9JNBlv8dYTbt/DU3WJ4/eu1WHvX1ej
 0MYqi9L8t5CorMiP3FxOf6myMLUBo9PFTkRjPaklEvBQdRADk363zewi1tLG6MK3QVEuXwYqUktmR
 w9uTZDBA==;
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHDNa-000UQF-O3
 for barebox@lists.infradead.org; Tue, 02 Mar 2021 22:20:35 +0000
Received: by mail-lf1-x130.google.com with SMTP id b1so23051777lfb.7
 for <barebox@lists.infradead.org>; Tue, 02 Mar 2021 14:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=KhZzWoUg9IdCGzFrK3DyMAmfsmaHIAJnRNHC0+CCIcA=;
 b=ECba4XlPjE36O6BFp/geBHf/LEl8D6x52qqVkOxS9go8Wopal4UPgnjJ9QqjAgygnk
 Kh/KAbWn7ZowerGeXZJJA6gTpTNyZi1Os6klWKlvnP5DMzjgQfI3sUflWrdoY3dwjDQJ
 UhZzefBaUaJ754m0fTizfSUujnQ8ZuqX2uxJqBB9LXUJocekwr+nMVPwGiswyyPZXH0F
 CP5QgOJ1lR0PayJnQapKlU93GmyO25aI0r9QPepJwtTb/pmYogCnd3OTKQpALW3JY7hu
 oMSihAp5aycEXOKYn6Dw7YKXV4HsTWrqCXdTyrYT534gILC3pvKTW2nXHHFhswkul+Pw
 rt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KhZzWoUg9IdCGzFrK3DyMAmfsmaHIAJnRNHC0+CCIcA=;
 b=iN+ZR0J4KodAZAGj8W7fx5LkWtzD4eb6WJOQQfFo3WfVNxzGSFkyFr5RwM/XzEPXbL
 x0PhaoBm8p7ekCGtKmWw4JNwZFN2JBU2/+Y7qyh64WRAdU8vxoBDKzX86ptOlyp57Urs
 FL9LTI6C4GRfS12XonpZRZdNmdtXF7L0iWtH7EcZubt21gwQQSePQlD4vTYrsg4X+o/I
 qmEMlag6bl/g+x4iuQsNQQDn3podC5mOGi5WFZhjjUtc49/aDiyHLB1traD2nsp9aRjX
 p+3P5NFBBUB8dmKi4riiloAaxGzMvwdGMqSMbHZ3NGfbLodBaDycnGWYoHHQaTCLuDrN
 lr9g==
X-Gm-Message-State: AOAM533ywBTDWgycq1oER/AuyhjHNcJNVzi5CJ4MxUMSIEp2vKZeoUSw
 cq32yN1CaNy8zQDBMzBPcz4=
X-Google-Smtp-Source: ABdhPJy5ohH7weUEP/f7xF9s0RU3s0zUyqy0tbIHJ6rbMBau98GoaejZpeKckKRQmMQfvxFXiwiBSg==
X-Received: by 2002:a05:6512:3693:: with SMTP id
 d19mr13014035lfs.118.1614723569041; 
 Tue, 02 Mar 2021 14:19:29 -0800 (PST)
Received: from chr (109-252-61-199.nat.spd-mgts.ru. [109.252.61.199])
 by smtp.gmail.com with ESMTPSA id 1sm2884968ljo.61.2021.03.02.14.19.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Mar 2021 14:19:28 -0800 (PST)
Date: Wed, 3 Mar 2021 01:19:26 +0300
From: Peter Mamonov <pmamonov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Jules Maselbas <jmaselbas@kalray.eu>,
 Stafford Horne <shorne@gmail.com>, sha@pengutronix.de
Message-ID: <20210302221920.GC1407@chr>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-11-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301110106.3764-11-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210302_222035_147705_4D761C0F 
X-CRM114-Status: GOOD (  17.02  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 10/11] mips: Implement setjmp/longjmp/initjmp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi, Sascha and Ahmad,

On Mon, Mar 01, 2021 at 12:01:05PM +0100, Ahmad Fatoum wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> The header has been taken from glibc, the implementation itself is based
> on the newlib implementation.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/mips/Kconfig              |  1 +
>  arch/mips/include/asm/setjmp.h | 32 ++++++++++++++++++++++
>  arch/mips/lib/Makefile         |  1 +
>  arch/mips/lib/setjmp.S         | 50 ++++++++++++++++++++++++++++++++++
>  4 files changed, 84 insertions(+)
>  create mode 100644 arch/mips/include/asm/setjmp.h
>  create mode 100644 arch/mips/lib/setjmp.S
> 
> ...
>
> diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
> new file mode 100644
> index 000000000000..b09a7c55293c
> --- /dev/null
> +++ b/arch/mips/lib/setjmp.S
> @@ -0,0 +1,50 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +
> +#include <asm/regdef.h>
> +#include <asm/asm.h>
> +#include <linux/linkage.h>
> +
> +/* int setjmp (jmp_buf);  */
> +LEAF(setjmp)
> +	sw	ra, (0 * 4)(a0)
> +	sw	sp, (1 * 4)(a0)
> +	sw	s0, (2 * 4)(a0)
> +	sw	s1, (3 * 4)(a0)
> +	sw	s2, (4 * 4)(a0)
> +	sw	s3, (5 * 4)(a0)
> +	sw	s4, (6 * 4)(a0)
> +	sw	s5, (7 * 4)(a0)
> +	sw	s6, (8 * 4)(a0)
> +	sw	s7, (9 * 4)(a0)
> +	sw	fp, (10 * 4)(a0)
> +	move	v0, zero
> +	j	ra
> +END(setjmp)
> +
> +/* volatile void longjmp (jmp_buf, int);  */
> +LEAF(longjmp)
> +	lw	ra, (0 * 4)(a0)
> +	lw	sp, (1 * 4)(a0)
> +	lw	s0, (2 * 4)(a0)
> +	lw	s1, (3 * 4)(a0)
> +	lw	s2, (4 * 4)(a0)
> +	lw	s3, (5 * 4)(a0)
> +	lw	s4, (6 * 4)(a0)
> +	lw	s5, (7 * 4)(a0)
> +	lw	s6, (8 * 4)(a0)
> +	lw	s7, (9 * 4)(a0)
> +	lw	fp, (10 * 4)(a0)
> +	bne	a1, zero, 1f
> +	li	a1, 1
> +1:
> +	move	v0, a1
> +	j	ra
> +END(longjmp)
> +
> +/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
> +LEAF(initjmp)
> +	sw	a1, (0 * 4)(a0)
> +	sw	a2, (1 * 4)(a0)
> +	move	v0, zero
> +	j	ra
> +END(initjmp)

I would suggest using `REG_S/REG_L r, (n * SZREG)(a0)` here for the sake of 
MIPS64 targets. See arch/mips/include/asm/asm.h:272.

Regards,
Peter

> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

