Delivery-date: Tue, 12 Apr 2022 10:00:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBSD-00Gxr3-80
	for lore@lore.pengutronix.de; Tue, 12 Apr 2022 10:00:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1neBS9-0003aU-HD
	for lore@pengutronix.de; Tue, 12 Apr 2022 10:00:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IK1PH4ikBf8WHuNTfsa/X4DJj++os1Jz/K7DWXlKA1A=; b=1UaDN7D5uCKtGf8q3QR0waRlAg
	PmgooX9hQKcqC3KfBQQCc94ipmKER3Ix017k4TAURycQTB0ymqwPr/beGxe+7qmRd5q8HOLN6EHJA
	RYLl8zOLdYmTalltfcVvKwd/VsPCJj0Lqj/e8CPOT4TppsRRVIZ2mJ4z4omJTw+xpOjvrAZRV2Fca
	Dta2vPiAT/MUqUV1ARGFdjCfORrvtZ3IRXwIiPj1SfcpfoF7h67MnlXa/1J8JAsjm4mnH/TsjvPEG
	wE2rQ/8iVtV+gIUdNU9y8zhq8Q2A1WC3ks3WI3olUDNfI5p95jnwyk9AehCF4o+CiZkZovn+ozw9y
	JcanfH+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neBQV-00COXd-3H; Tue, 12 Apr 2022 07:59:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBL5-00CLg1-Cl
 for barebox@bombadil.infradead.org; Tue, 12 Apr 2022 07:53:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=cBwn3MMHGqW1dAdIlne354Yox+3WMUV2EjFhr+N9DMM=; b=M8lnwqZZJe/iQIUDTkjFs7B6oF
 vq9XNtpulwJB7XgfQYzrZ0Xjk+aXK9IlUqqt1XBi689uAmVhBfFuocLeCWTLcFCIHntIYN2UIZKxY
 +7u1R9y7m/vglprsjD+Y0deEwMXHtAedabUibdr/ttk/92iwCb6YM96A4/e5ldyMYFzcPkTWvtoNu
 00CcCt5qnOhIf0qoDmfvR6B34ZwA6NFya1y7Ll3gSxOKqVmlPOlgUBRgYyJRPIeJ7kvFyEZc/nNcQ
 7bUFWGzRbcHuKCqHG8AtWGYSPS+E4JnTNdJR9qbeDglk2QTZrvCGw4bwe+8iXzVBOGX16JUv3kCf5
 6HThtXOA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neBKz-004FiD-AI
 for barebox@lists.infradead.org; Tue, 12 Apr 2022 07:53:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBKy-0002RU-QQ; Tue, 12 Apr 2022 09:53:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1neBKy-0007Qw-78; Tue, 12 Apr 2022 09:53:20 +0200
Date: Tue, 12 Apr 2022 09:53:20 +0200
To: Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
Message-ID: <20220412075320.GU4012@pengutronix.de>
References: <20220408170154.114526-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408170154.114526-1-abbotti@mev.co.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:05 up 12 days, 20:22, 65 users,  load average: 0.04, 0.14, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_085322_661451_C2534C2E 
X-CRM114-Status: GOOD (  25.73  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: fix GCC 11.x build failures for ARMv7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 08, 2022 at 06:01:54PM +0100, Ian Abbott wrote:
> Building barebox for ARMv7 with GCC 11.x results in errors similar to
> the following:
> 
>   CC      common/state/state_variables.o
> {standard input}: Assembler messages:
> {standard input}:1535: Error: selected processor does not support `rev r3,r3' in Thumb mode
> {standard input}:1576: Error: selected processor does not support `rev r3,r3' in Thumb mode
> 
> Or:
> 
>   CC      common/state/state_variables.o
> {standard input}: Assembler messages:
> {standard input}:1405: Error: selected processor does not support `rev r3,r3' in ARM mode
> {standard input}:1453: Error: selected processor does not support `rev r3,r3' in ARM mode
> 
> The problem is that the compiler option `-march=armv7-a` is not being
> chosen by "arch/arm/Makefile", but rather the fallback options
> `-march=armv5t -Wa,-march=armv7-a` are being chosen.
> 
> Appending `-msoft-float` to `KBUILD_CPPFLAGS` earlier in
> "arch/arm/Makefile" before the tests for supported `-march` options
> seems to fix the problem.
> 
> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
> ---
>  arch/arm/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index 610ded8a12..124a3fc40c 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -8,6 +8,7 @@ ifeq ($(CONFIG_CPU_V8),y)
>  KBUILD_CPPFLAGS	+=$(call cc-option,-maarch64,)
>  else
>  KBUILD_CPPFLAGS	+=$(call cc-option,-marm,)
> +KBUILD_CPPFLAGS	+= -msoft-float
>  endif
>  
>  ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
> @@ -78,7 +79,7 @@ KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y)
>  KBUILD_AFLAGS   += -include asm/unified.h
>  export S64 = _64
>  else
> -KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) -msoft-float $(CFLAGS_THUMB2)
> +KBUILD_CPPFLAGS += $(CFLAGS_ABI) $(arch-y) $(tune-y) $(CFLAGS_THUMB2)
>  KBUILD_AFLAGS   += -include asm/unified.h -msoft-float $(AFLAGS_THUMB2)
>  endif
>  
> -- 
> 2.35.1
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

