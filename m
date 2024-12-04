Delivery-date: Wed, 04 Dec 2024 17:30:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIsGf-003ysv-1p
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 17:30:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIsGf-00013P-Bq
	for lore@pengutronix.de; Wed, 04 Dec 2024 17:30:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y6cTBYzdKro29O9HRU/frGjeacQXJDr9dBfjtK4LrVw=; b=IqYqXkf5d2Vj43cD4lG3NOspQs
	EFd60cFrrhmNStczvcA3uEHRqNiyqDh5+tgJqlKaIGXEowMPmTz23u6GoJGHo/Dk+8Vd8GW9zhNRx
	mhYlYz/Tuawu2qNTSOLZfJnvKNG7yZrMV5PQocnx/I+4jzz5bfQt8/7HHeM1g3T9zueuZYiKLuQu2
	1oC6Dw+wBzrCSMU6d6Zuma7IokRkM+iiV0rVGuCaetiCmA3bYwrZiwOfd1RwCpwkV+qbNMo1GH+0E
	yvZCNC4Kj2kcFyIElJXEFHNOLM/+3ZjUW+fOtZ1Fauts5/LgJRAa2DLbVqnQq2kpgJusIYOQtmpIt
	oidqdH2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIsG2-0000000DC3e-3vzR;
	Wed, 04 Dec 2024 16:29:46 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIsFz-0000000DC1Y-33PA
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 16:29:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733329777;
	bh=Mdk8mV1dhjBnSRoyayJjyT6/SHBJNebp26X7tutJMi0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mivOJeYrIuuAcsd4naillDvM9LWzEN6oNUCpGv6JFdGQ/MQRyw130HYzP7Y7qYSm1
	 rxYYT7B/9kwJWIop3Q15+voRbdGdAQLP1sz+jmZt2xBMR1HsXy0Y33f104lBBl1vOK
	 uIrEAqb3sx1qLZG44nZFQoh22aaViKr7iyP8qM8Fo6E6xovjF1JrbIz3vr8aqLtz7x
	 dap5c89ze6hUNNk1yIlumnYB6IljNlDRYww6fpIL3KkRrXXmVfwiCEZ9/mLIsKn0nc
	 O32TyfI8C6yhCIDV7ssqyAc/tvIdkgQc8MJxG/tZx87RkWOhVEf8+42MLcYgyKU9f8
	 i+7qEnrrlh9ZA==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id A88264015E;
	Wed,  4 Dec 2024 17:29:37 +0100 (CET)
Date: Wed, 4 Dec 2024 17:29:36 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1CDcFAPdlDBkGJ5@hephaistos>
References: <Z0g74s98_Pz98tC5@hephaistos>
 <83e0f4b3-c558-48dc-b867-f88376d73bc2@pengutronix.de>
 <Z0hbuZBvK2aLd5s1@hephaistos>
 <b91eaf6c-9559-466a-bd20-297647401c63@pengutronix.de>
 <Z03A9rr21q320J0t@hephaistos>
 <19923329-f254-435d-9557-5e1b6835b8ec@pengutronix.de>
 <Z09TKeFZaT6InuPX@hephaistos>
 <49df1ec9-aca8-49b0-95fe-d577c5b615db@pengutronix.de>
 <Z098Eor4bedpsol9@hephaistos>
 <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f7b92750-f3ec-42d1-aacb-deaa6fb408d9@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_082943_913840_D6693184 
X-CRM114-Status: GOOD (  16.88  )
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
X-Spam-Status: No, score=-7.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Reset on Beaglebone Black has become unreliable/broken
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 04, 2024 at 07:14:17AM +0100, Ahmad Fatoum wrote:

> Very interesting. You can now try to move the 4 putc_ll`s to a later point in the
> startup code and then see which line of barebox code needed the delay in front of
> it.

Dear Ahmad, I will try my best to put across what I did to the code and
where I get exactly stuck.

There is lowlevel.c with beaglebone_sram_init():

	am33xx_uart_soft_reset((void *)AM33XX_UART0_BASE);
	am33xx_enable_uart0_pin_mux();
	omap_debug_ll_init();
	putc_ll('>');
	putc_ll('6');
//	putc_ll('6');

	barebox_arm_entry(0x80000000, sdram_size, fdt);


Then I went to uncompress.c where there is barebox_pbl_start():

	void *handoff_data;

	putc_ll('A');
	/* piggy data is not relocated, so determine the bounds now */
	pg_start = runtime_address(input_data);
	pg_end = runtime_address(input_data_end);

	/*
	 * If we run from inside the memory just relocate the binary
	 * to the current address. Otherwise it may be a readonly location.
	 * Copy and relocate to the start of the memory in this case.
	 */
	if (pc > membase && pc - membase < memsize)
		relocate_to_current_adr();
	else
		relocate_to_adr(membase);

	pg_len = pg_end - pg_start;
	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));

	putc_ll('B');
	setup_c();

	putc_ll('C');
	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);

	putc_ll('D');
	if (IS_ENABLED(CONFIG_MMU))
		mmu_early_enable(membase, memsize);

In mmu_32.c there is mmu_early_enable():

	set_ttbr(ttb);

	putc_ll('E');
	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
	if (cpu_architecture() >= CPU_ARCH_ARMv7)
		set_domain(DOMAIN_CLIENT);
	else
		set_domain(DOMAIN_MANAGER);

	putc_ll('F');
	/*
	 * This marks the whole address space as uncachable as well as
	 * unexecutable if possible
	 */
	create_flat_mapping();

	putc_ll('G');
	/* maps main memory as cachable */
	early_remap_range(membase, memsize - OPTEE_SIZE, MAP_CACHED);
	putc_ll('H');
	early_remap_range(membase + memsize - OPTEE_SIZE, OPTEE_SIZE, MAP_UNCACHED);
	putc_ll('I');
	early_remap_range(PAGE_ALIGN_DOWN((uintptr_t)_stext), PAGE_ALIGN(_etext - _stext), MAP_CACHED);
	putc_ll('J');

	__mmu_cache_on();
	putc_ll('K');

For early_remap_range() I end up in __arch_remap_range() there is:

	u32 pte_flags, pmd_flags;
	putc_ll('-');
	uint32_t *ttb = get_ttb();

	putc_ll('|');
	BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));
	putc_ll('!');
	BUG_ON(!IS_ALIGNED(phys_addr, PAGE_SIZE));

	putc_ll('_');
	pte_flags = get_pte_flags(map_type);

Well, lets mark get_ttb():

static inline uint32_t *get_ttb(void)
{
	putc_ll('%');
	/* Clear unpredictable bits [13:0] */
	return (uint32_t *)(get_ttbr() & ~0x3fff);
}

I _think_ this is the critical path, I have more putc_ll() inserted, but
they are not important.
If by any chance it is better readable for anyone I could provide a
complete diff, of course.

So, when I power up, I get:

2>6ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]

before the banner.

When I reset, S1, blabla, I get:

>6ABCDEF%G-%|

So I assume it dies at 

BUG_ON(!IS_ALIGNED(virt_addr, PAGE_SIZE));

at _arch_remap_range() in mmu_32.c.

Which yields to get_ttbr(void) in mmu_32.h which contains something like 
asm volatile ("mrc p15, 0, %0, c2, c0, 0" : "=r"(ttb));

*EEEK*

Now I triple check with the second 6 enabled in lowlevel.c, no I change
it to 5, so:

	omap_debug_ll_init();
	putc_ll('>');
	putc_ll('6');
	putc_ll('5 ');

	barebox_arm_entry(0x80000000, sdram_size, fdt);

Powerup:
2>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
reset:
>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
S1:
>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
mw 0x44e00f00 0x1:
�>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
wd 1:
>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]
Booting linux, entering reboot there:
reboot: Restarting system
>65ABCDEF%G-%|!_H-%|!_I-%|!_%%%%JKLMNOPQZSwitch to console [cs0]

So each warm restart method gives me a proper reboot. 
With an additional putc_ll() in lowlevel.c in beaglebone_sram_init().
The later debug putc_ll() have no influence on starting not starting.

Kind regards
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



