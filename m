Delivery-date: Tue, 23 Mar 2021 13:34:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOgFO-000558-4E
	for lore@lore.pengutronix.de; Tue, 23 Mar 2021 13:34:58 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOgFN-0000FV-Bg
	for lore@pengutronix.de; Tue, 23 Mar 2021 13:34:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xEcYtf1djEl8j2OCjqAN0id5EU08Pp2Mc7n+PuUCdsg=; b=F2YFgS0MFRs8JD4SRlfSbDLAs
	hEA3L89GCl4437LLsuy8W9Xy7lR/rXEP7LeGUA5ATGtoALTzfIVlsM+301fbQO48E2mzvzouvfJkU
	akyBJ39FH1VZn21m/Ji7XNdCKIlZyc/YmNlwBwWdRLPZDKo2/TPEDh0GlktGECgAvoNDHYQWoNHrQ
	gGL68itz6LyWACro3ROxZGNmsYJpqsCkOcILJWJtqZClndcwvgiKCFnFN8WpQoe/OBst9343Ujakl
	gNVIynoBKZZdcKaMpK9Nt890/sbNmc4d0Imf+MHjCVx7CeXgmy7TX77qW7Hy/asIJqAugXsH4g6mR
	UdMxJuuMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOgEF-00Ey7r-6T; Tue, 23 Mar 2021 12:33:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOgE8-00Ey7I-4D
 for barebox@lists.infradead.org; Tue, 23 Mar 2021 12:33:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lOgE7-0000Af-Ht; Tue, 23 Mar 2021 13:33:39 +0100
To: "Barbier, Renaud" <renaud.barbier@abaco.com>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Roland Hieber <rhi@pengutronix.de>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <70a0b276-296e-f8b9-dcf5-22293209d55d@pengutronix.de>
Date: Tue, 23 Mar 2021 13:33:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210323_123340_240153_DCBF4EFD 
X-CRM114-Status: GOOD (  19.34  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: bareboxenv-target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Renaud,

On 28.10.20 12:09, Barbier, Renaud wrote:
> I am building bareboxenv-target for a  cortex-A9 board (not present upstream) with gcc 9.3.0 and got this error:
> 
> arm-oe-linux-gnueabi-gcc -Wp,-MMD,scripts/.bareboxenv-target.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -I /mnt/projects/all/openware-core/home/renaud/sandbox/bootloader/barebox-rebase/scripts/include      -o scripts/bareboxenv-target scripts/bareboxenv-target.c
> In file included from scripts/bareboxenv-target.c:1:
> scripts/bareboxenv.c:17:10: fatal error: stdio.h: No such file or directory
>    17 | #include <stdio.h>
>       |          ^~~~~~~~~
> 
> 
> It looks like sysroot is missing as when I add to scripts/Makefile:
> ifdef SDKTARGETSYSROOT
>     userccflags += --sysroot=$(SDKTARGETSYSROOT)
> endif
> 
> It builds.
> 
> Not much came out from search on google but one thread that refers to this problem when building with Yocto.
> 
> Could it it be related to  how our toolchain got build?

Just ran into the same issue. Cause is as Roland describes the lack of --sysroot
as default and that it comes in via $CC, which Kbuild doesn't expect.

I guess this would break building kernel host tools too or how do they solve it?

Cheers,
Ahmad

> 
> Cheers,
> Renaud
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

