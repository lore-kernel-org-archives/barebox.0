Delivery-date: Mon, 20 Jun 2022 16:53:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Imn-008AT3-1n
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 16:53:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Imm-0004k6-Qh
	for lore@pengutronix.de; Mon, 20 Jun 2022 16:53:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zEVWaAQy6cu9wU6LrIbAInpiBPRfZfj+tlX9KAIoZrM=; b=pbQuobxyh0OWr3SRYCBgRSz0rB
	LQNVxrFdJUuvs+b5De+3Z3uyDmgIWfCoJAVLi6BMMyk/Kx4glMtPJ91PItK0mD6CTwUrC5xHTZvvF
	i1nvDmDjalPfKM52dykUtCpPGhtPdUivCgvYKKqrjaw9IuM5TIjVVE30VvqjKdsD1xoxm9Uqak6Ci
	UudycPOJwTnP1FQjplaI/1nO2LpdRldvZu5x9MBYarZVMeDGCjXPN62BxXkr+9JNdrZsGGELqCQl9
	p0YDC2/4/79J4gr7IL0lJyNuM/FSQkhgOfEcJW9U058jKuIXPueNi+1/C4DAIkl1dtDxL/BU2O/+g
	FIvwwnfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3IlP-0018bD-Qh; Mon, 20 Jun 2022 14:52:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3IlL-0018Yk-8M
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 14:52:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o3IlH-0004dB-5A; Mon, 20 Jun 2022 16:52:19 +0200
Message-ID: <64676fdd-167f-b440-2642-f171c150b630@pengutronix.de>
Date: Mon, 20 Jun 2022 16:52:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>, Sascha Hauer <sha@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>
References: <CAA4bVAE09vnuWLv3TvKDn3t7kAPdk1Tgto-TWzyo1-qoYpfO9A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAA4bVAE09vnuWLv3TvKDn3t7kAPdk1Tgto-TWzyo1-qoYpfO9A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_075223_348984_463D70B4 
X-CRM114-Status: GOOD (  15.28  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: move dma_ops to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 16.06.22 09:53, Antony Pavlov wrote:
> Hi!
> 
> In 0e885ce81d0e ('RISC-V: dma: support multiple dma_alloc_coherent backends') ,
> (see https://lore.barebox.org/barebox/20210619045055.779-10-a.fatoum@pengutronix.de/)
> multiple dma_alloc_coherent backends was introduced for RISC-V.
> 
> At the moment MIPS dma_alloc_coherent stuff is messy and I want to rework it.
> I can reuse some parts of 0e885ce81d0e by moving it to the common code.
> Any comments or suggestions?
I have been meaning to clean this dma API stuff up, so I find it very nice
that you are going to do it :)

Currently, we have two ways to influence this:

  - dma_set_ops
  - define static inline helpers in <asm/dma.h> and #define macros, so the generic
    implementation isn't used
    (see https://lore.barebox.org/barebox/20220614091556.1018102-1-a.fatoum@pengutronix.de/T/#t)

As first step, one could clean up the repetition in the <asm/dma.h> files, e.g.
dma_alloc_coherent is nearly identical in a couple of places. Then as next step
we could have (just example names)

  CONFIG_DMA_UNCACHED

     The current !PBL and/or !MMU case

  CONFIG_DMA_PER_ARCH

     For those not using dma_set_ops

  CONFIG_DMA_DYNAMIC_OPS

     For those using dma_set_ops

This should allows us to get rid of the macros and then each arch could just
select the appropriate symbol.

What do you think?

Cheers,
Ahmad

> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


