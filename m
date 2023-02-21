Delivery-date: Tue, 21 Feb 2023 08:45:39 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNLH-00Dd8D-Ep
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 08:45:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNLF-0003lH-T5
	for lore@pengutronix.de; Tue, 21 Feb 2023 08:45:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OqUbnoD+bKh30Sc5NB8BZCxfIRReVphrYihMf6oQrCY=; b=nZ9dfw6qkZ7vOecolWHadVGq9E
	wose7YL0KPz+kZjA9/mnlKB6uqDH1CUVz+vZX8sC+e3Wt9FkO4vA6o6g8Ru8Iip0f9V5sVwZofwbi
	T3BN+jH3hpbapQJLs6/Q7iIg/r828ctGzoSIhPKiCgWgiNxh2DPCXwOGlfUHrv7RTlStVaQiYSv0J
	59R0l7BDU+Joyz0xGWioCDZfuNuOeZWJwPBAfKHXbhWF2xWVNKfokqGICnaXduMbhcHRf8l5H91cD
	S7r3Gdj9tH3Wp06a1Zof0y1rK1utbB3FO/WxmN4bHLDqrjw/B6FUgVqajXYIher8y4jdwQx5MXafX
	aQUDzuiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNK7-006voC-Gf; Tue, 21 Feb 2023 07:44:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNK2-006vnV-Pc
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 07:44:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNK1-0003RD-JO; Tue, 21 Feb 2023 08:44:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUNK1-00089f-BN; Tue, 21 Feb 2023 08:44:21 +0100
Date: Tue, 21 Feb 2023 08:44:21 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230221074421.GW10447@pengutronix.de>
References: <20230221065047.1114231-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230221065047.1114231-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_234422_852006_51850DEF 
X-CRM114-Status: GOOD (  20.90  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] sandbox: fix linker warnings with newer ld
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Feb 21, 2023 at 07:50:47AM +0100, Ahmad Fatoum wrote:
> Building with a newer ld results in two warnings:
> 
>     binutils-2.39/bin/ld: warning: defaultenv/defaultenv-2-reboot-mode.bbenv.gz.o:
>     missing .note.GNU-stack section implies executable stack
>     binutils-2.39/bin/ld: NOTE: This behaviour is deprecated and will be removed
>     in a future version of the linker
>     binutils-2.39/bin/ld: warning: barebox has a LOAD segment with RWX permissions
> 
> This is already fixed for the non-sandbox platform with a4b49c69c3ad
> ("Kbuild: link with -z noexecstack and --no-warn-rwx-segments"), but
> sandbox has its own cmd_barebox__, so add the equivalent to the sandbox
> Makefile as well.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/sandbox/Makefile | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index d5ba05ba866f..0f59e79e13e0 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -69,6 +69,7 @@ BAREBOX_LDFLAGS += \
>  	-Wl,-T,$(BAREBOX_LDS) \
>  	-Wl,--whole-archive $(BAREBOX_OBJS) -Wl,--no-whole-archive \
>  	-lrt -pthread $(SDL_LIBS) $(FTDI1_LIBS) \
> +	-Wl,-z noexecstack $(call cc-option,-Wl$(comma)--no-warn-rwx-segments) \
>  	$(SANITIZER_LIBS)
>  
>  cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
> -- 
> 2.38.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


