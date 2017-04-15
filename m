Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1czVb3-00069b-3S
 for barebox@lists.infradead.org; Sat, 15 Apr 2017 21:51:11 +0000
Date: Sat, 15 Apr 2017 23:50:42 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170415215042.GA3267@ravnborg.org>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 00/11] AT91, at91sam9x5ek updates (part II/III)
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey.

While trying to port my proprietary at91sam9263 based board
I have stumbled over how the early init works.
And so far I have used at91sam9x5ek as reference.

If I follow the code paths for sam9x5 it looks like this:

	barebox_arm_head  (arch/arm/include/asm/barebox-arm-head.h)
	    _barebox_arm_head
	    b barebox_arm_reset_vector -->

	barebox_arm_reset_vector (arch/arm/mach-at91/at91sam9x5_lowlevel_init.c)
	    arm_cpu_lowlevel_init
	    arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
	    barebox_arm_entry -->

	barebox_arm_entry (arch/arm/cpu/entry.c)
	    arm_setup_stack(arm_mem_stack_top(membase, membase + memsize) - 16);
	    arm_early_mmu_cache_invalidate
	    barebox_{multi,single,non}_pbl_start

	And then we have:
	ENTRY_FUNCTION(start_at91sam9x5ek, r0, r1, r2)  (arch/arm/boards/at91sam9x5ek/lowlevel.c)
	    arm_cpu_lowlevel_init
	    arm_setup_stack(AT91SAM9X5_SRAM_BASE + AT91SAM9X5_SRAM_SIZE - 16);
	    barebox_arm_entry


And something in this confuses me...
I know at91sam9x5 is built for multi image support.
Which is why start_at91sam9x5ek() is referenced in images/Makefile.at91

But why do we need to call arm_setup_stack() in three different places.
And with different parameters.
And arm_cpu_lowlevel_init is called from two places.

Can someone shed some light on this.

Thanks in advance,

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
