Delivery-date: Wed, 11 Dec 2024 15:53:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLO5t-006oiC-39
	for lore@lore.pengutronix.de;
	Wed, 11 Dec 2024 15:53:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLO5t-0003oO-QX
	for lore@pengutronix.de; Wed, 11 Dec 2024 15:53:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=u4MMojShK4DhI4YpGLeyWLnuuGI+aQN3XsTuS2fZ9v8=; b=zaADvvNy0a+dUA4PUpZ+cN2W7w
	w0UBqmd5QEutKHvpMf+UkaXE++UkXZjIiPe+IrH8qRFz9h4MEvtUqMzDZIGylz4Gmvj08PcTpk0Uy
	1ZASEEfEnhxMZ7Dkqmhou2UeuAZHDhCzaZ491YxJaGHHCydSme6hpfHqU5dlM5unHG1C0KT7mXaoZ
	kDUSIDqeDbLLYcoyEWuxieKwQbV77O/Cxj0uftKX+O2FUIjG7Zzu5Dix7Uc3y+Db5Xs/IiegKlQ2P
	RtUs6Dgo7QM4ielTD8OI4Vc8QnCXQbqIJXsg0IHkrPa0j2NwNnEaBJ7Lq90xnMvuhA51vYq+viCwA
	Hm+X/HQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLO5I-0000000FCQb-2ZHl;
	Wed, 11 Dec 2024 14:53:04 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLO5E-0000000FCOY-0RC0
	for barebox@lists.infradead.org;
	Wed, 11 Dec 2024 14:53:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733928742;
	bh=qV99gCee0RnnYB2HyeUUgbYDlrrG32LCC31NlPcKbek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WYHpKr8XpYS1xzCjgfVG3wZoSBAXCYj2Eqc196LzUOYWqcDxU/90atr1rgEBN/kG0
	 isF3KmAHpJcrdKT6pKL9qUUJYBHoem3I+QNrP39i2gdNNflewGtM9tzYLiOZO5pYl4
	 OjmDEhshN1TZNcXQlUa9nwq9yuk1UbYTdLOvU8nYxEEfszWG+24abAYZXQljjhXBSc
	 taFG1Z/a2G3wR+xuAmdeJ45ADJRFUcH5k5mpuGiDy8tU7w3PIvOrmNezXhuWzMgauE
	 qehwKGOnCiO6dvhL50wHc1l/zC3hyfxKNWZiD6Y4z56RuB4Ddz9WXXKVOghsJUNUMG
	 mGMt+8pPD6V2w==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 03D0F40153;
	Wed, 11 Dec 2024 15:52:21 +0100 (CET)
Date: Wed, 11 Dec 2024 15:52:20 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1mnJB8Suz3SNWbI@hephaistos>
References: <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
 <Z1CDcFAPdlDBkGJ5@hephaistos>
 <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0125561a-a868-43da-a7d3-4b85540cc78d@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_065300_582137_5A8F9C7B 
X-CRM114-Status: GOOD (  13.94  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi ;)

On Tue, Dec 10, 2024 at 10:52:04PM +0100, Ahmad Fatoum wrote:

> You can print hex numbers with puthex_ll(), although by now you are
> already relocated, so you can add
> 
>   pbl_set_putc((void (*)(void *, int))debug_ll_ns16550_putc, uart0);
> 
> after omap_debug_ll_init(), enable CONFIG_DEBUG_PBL and then you can
> use normal printf and also see the panic message if the BUG() indeed
> triggers.

I did enable CONFIG_PBL_CONSOLE and CONFIG_DEBUG_PBL in both barebox.bin
and MLO.

I get this:

2>6ABCuncompress.c: memory at 0x80000000, size 0x20000000
Dmmu: enabling MMU, ttb @ 0x9ffe0000
EF%G-%|!_H-%|!_I-%|!_%%%%JKLMendmem                = 0xa0000000
arm_mem_scratch       = 0x9fff8000+0x00008000
arm_mem_stack         = 0x9fff0000+0x00008000
arm_mem_ttb           = 0x9ffe0000+0x00010000
arm_mem_barebox_image = 0x9fe00000+0x00200000
arm_mem_early_malloc  = 0x9fde0000+0x00020000
membase               = 0x80000000+0x20000000
uncompress.c: uncompressing barebox binary at 0x402f65a0 (size 0x0000e3c8) to 0x9fe00000 (uncompressed size: 0x00018310)
NOPuncompress.c: jumping to uncompressed image at 0x9fe00001
QZSwitch to console [cs0]
[...] normal startup with more debug output continuiung.


I left the single char debug sequence char output stuff I inserted as it
was last time.

Warm restart gives me this:

barebox@TI AM335x BeagleBone black:/ reset
>6ABCuncompress.c: memory at 0x8f001b00, size 0x9f00b500
Dmmu: enabling MMU, ttb @ 0x2dfe0000
EF%
[DEAD]

This looks like a tiny bit different than last time without the new PBL
CONFIG options enabled. It reaches 

static inline uint32_t *get_ttb(void)
{
        putc_ll('%');
        /* Clear unpredictable bits [13:0] */
        return (uint32_t *)(get_ttbr() & ~0x3fff);
}

but not 

        uint32_t *ttb = get_ttb();

        putc_ll('|');

the line after this.
Last time looked like it hit the BUG_ON which I thout stopped the
execution because of messed up addresses.

Here one sees addresses are totallfy messed up in uncompress.c already.

Still it is possible to make soft start working by adding an additional
char in lowlevel.c:

        putc_ll('>');
        putc_ll('6');
        putc_ll('5');

makes it work,

        putc_ll('>');
        putc_ll('6');

or less gives the error.

I replaced all three chars with a hand crafted __udelay in lowlevel.c
(but left debugging enabled), makes everything working fine, too.



I was not able to add the line 
pbl_set_putc((void (*)(void *, int))debug_ll_ns16550_putc, uart0);
to lowlevel.c. I admit I asked chatgpt to explain to me, if this
still is valid C, wow! :-) 
Adding it gives an error:

arch/arm/boards/beaglebone/lowlevel.c:161:2: error: implicit declaration of function `pbl_set_putc´; did you mean `__set_bit´? [-Werror=implicit-function-declaration]
  pbl_set_putc((void (*)(void *, int))debug_ll_ns16550_putc, uart0);
  ^~~~~~~~~~~~
  __set_bit
arch/arm/boards/beaglebone/lowlevel.c:161:61: error: `uart0´ undeclared (first use in this function)
  pbl_set_putc((void (*)(void *, int))debug_ll_ns16550_putc, uart0);


> I suspect the RAM controller itself may be acting funky after a warm reboot
> and letting some time go by fixes that :/


Yes. But the PLL lock bits are properly set I checked already and the
barebox code does that to...

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



