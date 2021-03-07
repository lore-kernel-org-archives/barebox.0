Delivery-date: Sun, 07 Mar 2021 13:02:59 +0100
Received: from [2001:67c:670:201:290:27ff:fe1d:cc33] (helo=metis.ext.pengutronix.de)
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIs7f-0005Y1-HY
	for lore@lore.pengutronix.de; Sun, 07 Mar 2021 13:02:59 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lIs7U-0002Ip-65
	for lore@pengutronix.de; Sun, 07 Mar 2021 13:02:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BFWJCHOV+fPtaeA+JTY2YcsRFHWy9BWoJe+zkhLcTqg=; b=f1l+JivxZFj+8aDN/iz8Pb+/m
	SdBJkcsKREAFkSzL/PsbT1JxgS+lrP96yGI2LSpwqm2zvHmA5I6RB/8sGUPj4sRw22to5gEyOGwGv
	AzlfjZ8A2AStV7yX0znXcOWfGSapxuSClFsiSePqtPRcWRd+Pql+fe56mQk+YQ49O43osRSDmXHTN
	75pUgoC9yNF5lCciuVRbBGAe+SvScGFnRNe1Kb5Cn2FjSEk0KKTpfpaYPGUXh9MAwTyxwNzZtuEtc
	1qzeUITa2wnRT19bm86O76NtCxEs9AcUQNDIs4hSc7L0DZIkR9Y7/9dHI6HL0HdfTCx+JpJYT3kxP
	0ApX28skQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIs5u-009vev-SC; Sun, 07 Mar 2021 12:01:11 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIs5l-009vd2-CD
 for barebox@lists.infradead.org; Sun, 07 Mar 2021 12:01:03 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k12so11267733ljg.9
 for <barebox@lists.infradead.org>; Sun, 07 Mar 2021 04:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WqEA7CyXHezNeeH0Tzx77XgWz6bEJaTJuEfsH25DIxc=;
 b=umJYRFG6/69mzVTfsns6vKqy0mwGrLIDSigLszMe56E4Ebo//ikgX/rqXkI2NQ3F50
 AvrUtL9S393rISoaks1YORgt4Z567UHCxSoPOdMxKSLoccmvIKk2/G3Nzwd6bbq+VCxU
 5O6Pba0Q39tI8ronhVkJoptCFEuTXihN0vwsXDFjpZhhQi1TM8h/erkaHfjw87Mv6jxt
 CTUYyFUKsfpRStDvwlJh+YMVap9UnQwDspYxM5WNVwWs+Q3goDXhaWnNPghcM4e+47rA
 fj3fPRNnFCa2CwsmAuJu0FNzHasEHPA6p/QRlnWufn6cIVMB3TdMm91FQLluJDD2Q0Aj
 FTLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WqEA7CyXHezNeeH0Tzx77XgWz6bEJaTJuEfsH25DIxc=;
 b=BtrcQ2Ii7D9vK56DCfHKUiGA8hd7jPAdWTIorVwb8ulpHPoikqICGEjhaog4VPNx7X
 nKPT3XweQeOBiiBq4uwk7+W+ZNASs8CO0RMZhF100GY3o62tRgRr2E67YNDGfrnHLQad
 Fvrf9kTLE9UmNCbCnNuR0lMC4LcYmtbpJiH/c+M1RO+iopsIIY81demXhnybVNtoy2oz
 PwMFDk0ZQW7zXGVMhMVIvZRzRj/LH5TCkby2jxPNgJCfJN7/u1Pt9biGq7Y/DjrN0CTb
 CwmjK23Q9EMPiP03MmW/M3Q+U0KEGgBAN3pbb2Jjk1cupuBtzhEMnkb3QeLvNO3qfLrb
 nO0Q==
X-Gm-Message-State: AOAM5324mBJXcNkwL8B+RukBUw8qu38AzEVnHlB74jFyX1eNl0m4dwUu
 VJ3H5VFXcKNklcai8YGmaJU=
X-Google-Smtp-Source: ABdhPJy+C+PxKHUze6ipdtk58tK1PLyLnbP57jZYecBiSRjvt7WrFGPRog9Kirx2kF/yM76zcGaRBA==
X-Received: by 2002:a2e:85d5:: with SMTP id h21mr10923398ljj.20.1615118459608; 
 Sun, 07 Mar 2021 04:00:59 -0800 (PST)
Received: from chr (109-252-61-237.nat.spd-mgts.ru. [109.252.61.237])
 by smtp.gmail.com with ESMTPSA id b3sm980143lfb.191.2021.03.07.04.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Mar 2021 04:00:59 -0800 (PST)
Date: Sun, 7 Mar 2021 15:00:57 +0300
From: Peter Mamonov <pmamonov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
 Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>
Message-ID: <20210307120056.GD1407@chr>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
 <20210301110106.3764-11-a.fatoum@pengutronix.de>
 <20210302221920.GC1407@chr> <20210304083811.GO5549@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210304083811.GO5549@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210307_120101_688916_F4C9B458 
X-CRM114-Status: GOOD (  27.67  )
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

On Thu, Mar 04, 2021 at 09:38:11AM +0100, Sascha Hauer wrote:
> Hi Peter,
> 
> On Wed, Mar 03, 2021 at 01:19:26AM +0300, Peter Mamonov wrote:
> > Hi, Sascha and Ahmad,
> > 
> > On Mon, Mar 01, 2021 at 12:01:05PM +0100, Ahmad Fatoum wrote:
> > > From: Sascha Hauer <s.hauer@pengutronix.de>
> > > 
> > > The header has been taken from glibc, the implementation itself is based
> > > on the newlib implementation.
> > > 
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > ---
> > >  arch/mips/Kconfig              |  1 +
> > >  arch/mips/include/asm/setjmp.h | 32 ++++++++++++++++++++++
> > >  arch/mips/lib/Makefile         |  1 +
> > >  arch/mips/lib/setjmp.S         | 50 ++++++++++++++++++++++++++++++++++
> > >  4 files changed, 84 insertions(+)
> > >  create mode 100644 arch/mips/include/asm/setjmp.h
> > >  create mode 100644 arch/mips/lib/setjmp.S
> > > 
> > > ...
> > >
> > > diff --git a/arch/mips/lib/setjmp.S b/arch/mips/lib/setjmp.S
> > > new file mode 100644
> > > index 000000000000..b09a7c55293c
> > > --- /dev/null
> > > +++ b/arch/mips/lib/setjmp.S
> > > @@ -0,0 +1,50 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-only */
> > > +
> > > +#include <asm/regdef.h>
> > > +#include <asm/asm.h>
> > > +#include <linux/linkage.h>
> > > +
> > > +/* int setjmp (jmp_buf);  */
> > > +LEAF(setjmp)
> > > +	sw	ra, (0 * 4)(a0)
> > > +	sw	sp, (1 * 4)(a0)
> > > +	sw	s0, (2 * 4)(a0)
> > > +	sw	s1, (3 * 4)(a0)
> > > +	sw	s2, (4 * 4)(a0)
> > > +	sw	s3, (5 * 4)(a0)
> > > +	sw	s4, (6 * 4)(a0)
> > > +	sw	s5, (7 * 4)(a0)
> > > +	sw	s6, (8 * 4)(a0)
> > > +	sw	s7, (9 * 4)(a0)
> > > +	sw	fp, (10 * 4)(a0)
> > > +	move	v0, zero
> > > +	j	ra
> > > +END(setjmp)
> > > +
> > > +/* volatile void longjmp (jmp_buf, int);  */
> > > +LEAF(longjmp)
> > > +	lw	ra, (0 * 4)(a0)
> > > +	lw	sp, (1 * 4)(a0)
> > > +	lw	s0, (2 * 4)(a0)
> > > +	lw	s1, (3 * 4)(a0)
> > > +	lw	s2, (4 * 4)(a0)
> > > +	lw	s3, (5 * 4)(a0)
> > > +	lw	s4, (6 * 4)(a0)
> > > +	lw	s5, (7 * 4)(a0)
> > > +	lw	s6, (8 * 4)(a0)
> > > +	lw	s7, (9 * 4)(a0)
> > > +	lw	fp, (10 * 4)(a0)
> > > +	bne	a1, zero, 1f
> > > +	li	a1, 1
> > > +1:
> > > +	move	v0, a1
> > > +	j	ra
> > > +END(longjmp)
> > > +
> > > +/* int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top); */
> > > +LEAF(initjmp)
> > > +	sw	a1, (0 * 4)(a0)
> > > +	sw	a2, (1 * 4)(a0)
> > > +	move	v0, zero
> > > +	j	ra
> > > +END(initjmp)
> > 
> > I would suggest using `REG_S/REG_L r, (n * SZREG)(a0)` here for the sake of 
> > MIPS64 targets. See arch/mips/include/asm/asm.h:272.
> 
> I agree with you, but barebox doesn't support MIPS64 currently and I
> wasn't confident enough to add such things when I can't test them.

Well, what can possibly go wrong? =) Actually you've used this approach for RV: 
http://lists.infradead.org/pipermail/barebox/2021-March/035173.html.

> Maybe we can add a
> 
> #if SZREG != 4
> #error setjmp/longjmp currently only supports 32bit targets
> #endif

Definitely it's better than random fails after context switch in runtime.

Regards,
Peter

> Sascha
> > -- > Pengutronix e.K.                           |                             
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

