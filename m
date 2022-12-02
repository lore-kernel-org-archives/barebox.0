Delivery-date: Fri, 02 Dec 2022 08:48:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p10mf-008Hxq-5A
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 08:48:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p10me-0001hp-Pk
	for lore@pengutronix.de; Fri, 02 Dec 2022 08:48:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ecf7x77ZtmgE0M2tNP3ZbmT+9p0NWOWtJqbPKKYNUig=; b=lspjAZ1QEycchLjBavr3y+kfZv
	c2ztUxgPnHOWTDF7BPgH+X7sNLLhAUbcs9vY4BlFigDhhDAF8Ozo7CBo3Y0+jZXS+x7QSWjWWvNqb
	dYkpH5BQDhnAE6ugBSOJCmXjrklvxBeabM1MLp0Tiq/MnRqlQcFCAU7/oaE1Q3pE5vZFqX5onqHWz
	/vGhfH4LfI74+6SQkUjT4SpFhD1MAkOLjYr6aHQqea+QrNyt7cUBsQAAcOhY8B9nwvS3ZdJlbDXa/
	QmFOFFRkb4i+dYdBcNW1t+WJ9mP//fZWtlveHypWLrEz7lD6/dZzmEBKjkkX/hMjZIeK+cZ3NCur+
	dMcjHGDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p10kr-00EE3D-14; Fri, 02 Dec 2022 07:46:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p10kl-00EDyE-U3
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 07:46:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p10kh-0001RD-Gl; Fri, 02 Dec 2022 08:46:31 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p10kh-00034z-9J; Fri, 02 Dec 2022 08:46:31 +0100
Date: Fri, 2 Dec 2022 08:46:31 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202074631.GJ29728@pengutronix.de>
References: <20221125100959.3981619-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221125100959.3981619-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_234635_989970_87B02AA8 
X-CRM114-Status: GOOD (  22.00  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: asm: mark __barebox_arm64_head as function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 25, 2022 at 11:09:59AM +0100, Ahmad Fatoum wrote:
> Calling objdump -d on the PBL ELF file will not disassemble the
> instructions comprising __barebox_arm64_head and instead will just
> print a hexdump. This is because we use linker magic to get the section
> in front of the text segment and GAS fails to detect that
> __barebox_arm64_head too is of function type. This is no longer the case
> with ENDPROC as it uses the GAS .type directive to explicitly mark
> a symbol as being a function:
> 
>   #define ENDPROC(name) \
>     .type name, @function; \
>     END(name)
> 
> This only has effect on the ELF and introduces no functional change for
> the objcopied image.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/head_64.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/head_64.S b/arch/arm/cpu/head_64.S
> index f934e96c6eaf..398c4d3471e0 100644
> --- a/arch/arm/cpu/head_64.S
> +++ b/arch/arm/cpu/head_64.S
> @@ -30,4 +30,4 @@ ENTRY(__barebox_arm64_head)
>  	.rept 8
>  	.word 0x55555555
>  	.endr
> -END(__barebox_arm64_head)
> +ENDPROC(__barebox_arm64_head)
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


