Delivery-date: Tue, 06 Jan 2026 15:01:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7cX-001ujN-2i
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 15:01:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd7cX-0003EF-9N
	for lore@pengutronix.de; Tue, 06 Jan 2026 15:01:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ojgs5Tuq0V+mvylEvHOPfPxSm0FdKPSjS1WT2/s8Jig=; b=nWBFTDegTwSdqoegi5tZwCloGk
	a/Bk42cPxTTFZoTJ05qtad1JeulmTX3bpqvvMU6engTEUqTaYrxiaxQJUaNrjFKzdECQrdbIGOQqV
	wDlCUvZ/FSSUd1R66HQ4ZHJ2Q12xNJNHyLk+9Jw7IOS0lAsBJDm9YKeUTXWt6rLtm1WL/JWTOEcvC
	tP2aJVQA5mdVe5bKSDBVIPkXPYsaOjZGoBlbYmi8RogDblHVgCmPpuI3PnW+1/kQvVYVsLNSULvY0
	xMLQydDVZdb4QHLom9E8NAjzGx9kU5FShjsVOWrGmQoXHeneHXx+xy5Bv4ytKzDXQaA7p1MZeRvvK
	wB8ejeXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7c4-0000000DEzJ-1gya;
	Tue, 06 Jan 2026 14:00:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7c3-0000000DEzD-0y6b
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 14:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=ojgs5Tuq0V+mvylEvHOPfPxSm0FdKPSjS1WT2/s8Jig=; b=S11x+jrMjlxRBb6J7ENa5WdxBM
	zLIqn9Z8hGhMUNvA9lmU/aHT5aKC88pLNWEL+TVlIFbVYR7BfLtg+bBiRbUwtg5LJUNX16O3kEukB
	l/dBoV47/yr9zSxgiRld/b57H8Dz2RMGALUby+WhxGzIRZAu9nBabERi84CwksSpjsERROOfETSxK
	YcVnv9HfvyDSjVW7YuUrHyIAEmk2IW21Xg8t6D9MzhQNbV8Aw5LUIWysl/IkQkM+EDqniDyBV8XEO
	oi0NG+0FY7NfAOFPp9iTQtXecGHHhhQoniW/aB9bQsm7g5vU4A4LbVlS9RN+bPsSpzy2HtmitZYE0
	024TSMQg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd7bz-0000000BsT7-44ZJ
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 14:00:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd7bz-00036L-Gb; Tue, 06 Jan 2026 15:00:39 +0100
Message-ID: <8962f135-6720-48ec-a549-b28f84280f15@pengutronix.de>
Date: Tue, 6 Jan 2026 15:00:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-14-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-14-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_140040_155479_91CEDCEE 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 14/21] ARM: exceptions: make in-binary exception table
 const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 1/6/26 1:53 PM, Sascha Hauer wrote:
> When making the .text section const we can no longer modify the code.
> On ARMv5/v6 we finally use a copy of the exception table anyway, so
> instead of modifying it in-place and copy afterwards, copy it first and
> then modify it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +/* This struct must match the assembly exception table in exceptions_32.S */

One could add offset definitions to arch/arm/lib/asm-offsets.c and reuse
it this way, but I am fine duplicating it.

>  #ifdef CONFIG_ARM_EXCEPTIONS
> -void arm_fixup_vectors(void);
> +void arm_fixup_vectors(void *table);
>  ulong arm_get_vector_table(void);
>  #else
> -static inline void arm_fixup_vectors(void)
> +static inline void arm_fixup_vectors(void *table)
>  {
>  }

I am still wondering why the assemble code couldn't emit relocations,
but let's get this over with for now.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



