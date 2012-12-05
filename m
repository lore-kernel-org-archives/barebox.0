Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgEzT-0006Vu-Cx
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 13:26:20 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205104627.GD10369@pengutronix.de>
 <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de>
 <20121205121513.GG10369@pengutronix.de>
Date: Wed, 05 Dec 2012 14:25:54 +0100
In-Reply-To: <20121205121513.GG10369@pengutronix.de> (Sascha Hauer's message
 of "Wed, 5 Dec 2012 13:15:13 +0100")
Message-ID: <lytxs08wbh.fsf@ensc-virt.intern.sigma-chemnitz.de>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> Coupling the -mno-unaligned-access to the TEXT_BASE and the used processor
>> might be a better solution.
>
> No, unaligned accesses are handled by the cache. They won't work when
> the MMU is disabled, but barebox has to work with MMU disabled.

ok; this stuff seems to be really processor dependent then.  E.g. unaligned
access works on Cortex-M3 which is ARMv7 but has neither an MMU nor an MPU.

Perhaps 'CONFIG_ARM_NOUNALIGNED' should default to yes when !MMU, and/or
it should be selected by other problematic configurations.  Of course,
there is still the problem that some C code is executed before MMU will
be enabled and unaligned access can happen there.


While thinking about it... cause of the core problem (unaligned access
exception when executed in SRAM) might be that SRAM memory mapped as
strongly ordered memory:

| :/ mmuinfo 0x40300000
|   ...
|   Inner mem. attr. [6:4]:   0x1 (0b001 Strongly-ordered)

Perhaps, this memory can be remapped as normal memory.



Enrico

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
