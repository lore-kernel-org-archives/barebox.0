Delivery-date: Thu, 28 Nov 2024 13:02:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGdEL-001RXz-1E
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 13:02:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGdEL-00060z-9L
	for lore@pengutronix.de; Thu, 28 Nov 2024 13:02:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7RivRdxELm/shgUEUZxP5EkHhCPfGYMAOtjckIqa81A=; b=wS384vT/qemtNZVI3TCLKaIbv/
	zpW9eFkfZRQCO9DUeKmq+OpJHtEdMNzh+LLa35FWW10PbE5+j+jzwa3hPmsnxEfYjUsEfLW8rF3l6
	izwC37uDNDwSDS/1ZSSNSA0YYpULhOaaTsO1RSLAH+rc9kD+Pkfk0cymw+5YZ3TC28/1XURwqa/uI
	uXFfdmZmQ47yN+37tASQ7lSxb7YIkSJlWqf/xhvpawV3kK9Rp/DYTbweJRKn7YbTWI2OsEAUAUg5p
	8kG/LJIdKCwAWhQYIFN5Gl9G1c38bKz2OgV2oAkUWgrSJLSUbq2Dsab1dQX7unpGc9USLf4Ue6CPI
	e7hJjdew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdDn-0000000FQbF-2huJ;
	Thu, 28 Nov 2024 12:02:11 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGdDk-0000000FQaZ-0eZs
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 12:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1732795323;
	bh=PkPHn+BkwxQ2m6Odojrh2xJJ6lFqha/IAYTcQz3LYlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VIdpxhUG3EzBuedkfP6AumCeGMkomSt30BqJ2vTmzGXv75YWk+e6USICF6RMrBH/Y
	 7Tsf1Wd8ZwWij1TUp3KH4oU0TNJZbH8yab6RSzRSs0uzpfFnpXIXXApM16vI243LQa
	 AolWA6bP/4s3/tB79SBbiSr0EhV0F5cuIDXtQC/hvGfrZ0yUOWWt2hsrjj9zftzWIZ
	 Iyjj2DmCw5BR+5OOHIELBXnCZxoWwbF0TZ55x1lGd418zGPq83zYtFsxTJ2bij38Ep
	 4rPcn4sOG9Hyhe3UoTZIXpOzVlviTsU/R+UFc0QpYHqzNe0uVqwR8RBK3j3CaAiZc4
	 hKd0hPBrkz5hQ==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id F05C2401E3;
	Thu, 28 Nov 2024 13:02:02 +0100 (CET)
Date: Thu, 28 Nov 2024 13:02:01 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0hbuZBvK2aLd5s1@hephaistos>
References: <Z0gywL2hLcIDoLQ8@hephaistos>
 <fc008e94-9a80-4c01-8c4c-3c926721c2b1@pengutronix.de>
 <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_040208_333447_64082CD9 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 28, 2024 at 12:18:45PM +0100, Ahmad Fatoum wrote:
> 
> Are you still building with the same toolchain?

Yes, I am always using a yocto kirkstone with its toolchain:
    - git clone -b kirkstone git://git.yoctoproject.org/poky.git
    - git -C poky checkout tags/yocto-4.0.13

    and

    - git clone -b kirkstone https://github.com/menschel-d/meta-barebox.git
    - mv meta-barebox poky/meta-barebox

> So repeating these steps on some boards never shows any issues and on
> some others it always shows issues?

Yes

> So this happens even after a completely cold reset?

Yes: Power on, hit S1 or type reset in stopped barebox -> freeze

> I'd suggest you enable CONFIG_DEBUG_LL and look if you see at least a >
> character on the serial console output by the MLO.
> 
> If you don't see it, try moving these lines:
> 
>   am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
>   am33xx_enable_uart0_pin_mux();
>   omap_debug_ll_init();
>   putc_ll('>');
> 
> to the start of beaglebone_sram_init() and see if you get the > printed.
> 
> The point is making sure that barebox itself starts up before seeing where
> it's getting stuck.

I will try that immediately.

I reproduced the same behaviour with a non resetting BBB device with
different software setup:

Checked out current barebox git: barebox 2024.10.0-00150-g7a3cb7e6fd63 #2 Thu Nov 28 12:37:15 CET 2024
Changed CONFIG_BAREBOX_MAX_IMAGE_SIZE from 0x1b400 to 0x2b400
Did am335x_mlo_defconfig and omap_defconfig and copied those images.
I used another crosscompiler toolchain for this: gcc-linaro-7.5.0-2019.12-x86_64_arm-linux-gnueabihf

Same error behaviour: Power up -> S1 or "reset" produce freeze.

Will test CONFIG_DEBUG_LL and/or move those lines around.

Regards
Konsti


-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



