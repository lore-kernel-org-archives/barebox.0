Delivery-date: Thu, 25 Feb 2021 18:41:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFKdJ-0007YX-BX
	for lore@lore.pengutronix.de; Thu, 25 Feb 2021 18:41:01 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lFKdI-0005uS-Dp
	for lore@pengutronix.de; Thu, 25 Feb 2021 18:41:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mtjT0pXaVj6sHdcdcxIYDRsjFaFhpcfgOGBd5Vn9PgA=; b=wjquxCbtOpAP065d8JhDZgeTA
	6EaTR23hXc2WsD+4uz32qqCFTVio6OhLPAzQ+MmVpCmPvAefgiqYhmjsJzK+u6a8PbRHY1cF8vzfp
	6LL3NQY/AwqyJ0xv1o5DZuuYG4IPuLAREoPViF4O4JI3fgq+YHDeF8MVmQqkljTu8xQA4wxsHw0vD
	YUI/RjW8B2fKF/BOqqfj8WiO5KsRSi+Q7vVmG689KqVtHkJBk/xT22tGV7XgA8N+LLB+1CPsuuRVL
	Jzrkc1JyMhn9hUch2M3VVcw/l5FkdI20PaA6gM1XV82284B7rlkFSMoxTFuCEt+lFhi3m+rTFaqfA
	wpf6L6ICQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFKbo-0004J0-If; Thu, 25 Feb 2021 17:39:28 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFKbl-0004ID-O0
 for barebox@lists.infradead.org; Thu, 25 Feb 2021 17:39:26 +0000
Received: by mail-lf1-x12e.google.com with SMTP id j19so9735284lfr.12
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2021 09:39:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0YODI3NzOtcrYRfKY6/DBViJk5dtMp0eIikto7yuGrM=;
 b=nXCmBNav6s/ssM4VpnsRoJCL1cMuANS8qt5Q6cQrdkXjTrSRQDrqAigW/nsOfDDfVb
 I+36yMLHrxYVaFAw0XfNzfFLzRcG4jCk834zEvAbyKTrZ3D8XiiuFQt5qO8NM6SAqvUx
 QLozgTcdrTLzyWtiI8XO6otkRsmxlu9wqbOmkrI9ly6Oi7wnEEuhcXn/FKTuIUNfZQbT
 hTH3iucJnDEXGU69gj7ZYs7fjbvNIVoFE83bN6r9SSo0fgQgCk7fpbwq0vug/6cqg1BU
 DpfShvkm52TLzrfeEWKaZkDyajgM1HuxsAhk1Vx7o0quJQz4P6qNGSg2X0IpbcI9iCM1
 Drtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0YODI3NzOtcrYRfKY6/DBViJk5dtMp0eIikto7yuGrM=;
 b=tTueYwWG+my7A1hg0GHZYvvwRs5NlP+VLEbVmrtmKqDlX39CRcb9YEIpZEYGgW5o0i
 5+9NYdSOTJ4hMS/8QwqHQSOs/1v3cc1MB+YaMV97oak+QVUFJCGhuvPf9RVbCUxEbPS5
 FADME0o1fd9h5WDdcgRDgwlayaGdVWMR14qE+Wyhiyge/FsbW2s3Ew0U+7hsR81INpU2
 Yx3gLR/GdtYUwgs4T/SRgHd2V88eq2ALqX3G3Z+zNY8RBTla3OdV2H0IUfpW6sFLBYJ0
 jKXpXrqxrBmaEO/IAvsDa5IDoEKOD1gRRO1jQS9X/7t0hse8rqYoXMfWNtSGgrDeEPt+
 L+pQ==
X-Gm-Message-State: AOAM533Kd2Tx3xniSN9e0WZJEjdZOylLiKAnkqzm3ezFTsNBOj255hIT
 Jgn35oaf11bRqwt/pSMSrns=
X-Google-Smtp-Source: ABdhPJxQE70KBfLVW+wom/Ddu8zAJDgGIHjJff8vP38QTlPtGghSLV7Etl3xMOHiPJIacJrwp573jA==
X-Received: by 2002:a19:c501:: with SMTP id w1mr2396486lfe.322.1614274762514; 
 Thu, 25 Feb 2021 09:39:22 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id k5sm1153031ljb.79.2021.02.25.09.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Feb 2021 09:39:22 -0800 (PST)
Date: Thu, 25 Feb 2021 20:39:20 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
Message-Id: <20210225203920.0063e939118238d5089b2ef9@gmail.com>
In-Reply-To: <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
References: <20210223095902.GD5549@pengutronix.de>
 <7c538f1d-9cc4-c25c-0ccd-44831597c80e@kalray.eu>
 <20210225124500.GA365039@lianli.shorne-pla.net>
 <20210225130240.GA5081@tellis.lin.mbt.kalray.eu>
 <ba82e9ef-9d9a-179c-1688-a9aeb12413d3@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_123925_819389_6D9FD496 
X-CRM114-Status: GOOD (  24.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>,
 shorne@opencores.org, Sascha Hauer <sha@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 25 Feb 2021 16:33:06 +0100
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

> Hello,
> =

> On 25.02.21 14:02, Jules Maselbas wrote:
> > On Thu, Feb 25, 2021 at 09:45:00PM +0900, Stafford Horne wrote:
> >> Hello,
> >>
> >> I am the maintainer of most OpenRISC things right now.  I would be hap=
py to
> >> help, but I don't really use barebox right now.  Most of my deployment=
s I use
> >> with litex FPGA SoC's that has its own bootloader.
> >>

There is barebox for litex SoC with RISC-V CPU core, please see:

https://github.com/enjoy-digital/litex/issues/413#issuecomment-609047340

> >> That said, we have a setjmp/longjmp implementation in our glibc port w=
hich I
> >> have been testing for upstreaming lately.
> >>
> >>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1=
k/setjmp.S
> >>   https://github.com/stffrdhrn/or1k-glibc/blob/or1k-port-2/sysdeps/or1=
k/__longjmp.S
> >>
> >> I had a look at the barebox docs and openrisc port, it seems like ther=
e is
> >> support for our standard platform, or1ksim, which is the same as my de=
0-nano
> >> fpga board/soc and qemu.  I should be able to make use of this.
> >>
> >> Is there a branch where you are doing the green thread work?  I could =
add and
> >> test the OpenRISC implementation.
> > Hi,
> > =

> > I've done this yesterday, I've push a branch[1] that has the green
> > thread paches applied (except patches on usb mass storage gadget).
> > https://github.com/jmaselbas/barebox/tree/test_setjmp =

> =

> Great. Thanks. I'm preparing an updated version that will clean it up
> a bit, but the heart part of architectures providing setjmp/longjmp/initj=
mp
> will stay the same.
> =

> Small request:
>   If you implement initjmp, could you have it save into jmp_buf a frame
>   pointer value of NULL if applicable? That way, should backtrace be
>   implemented (or done via JTAG), they have a defined end.
> =

> Cheers,
> Ahmad
> =

> > To test greenthread your can run the `poller -c` command in barebox's
> > prompt. To do you you'll need to enable CONFIG_POLLER_YIELD and define
> > CONFIG_HAS_ARCH_SJLJ
> > =

> > Best,
> > Jules
> >  =

> > =

> > =

> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

