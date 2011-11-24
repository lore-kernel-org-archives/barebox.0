Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTgkJ-00042z-Rh
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 21:22:16 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
 <1322103764-6265-10-git-send-email-robert.jarzmik@free.fr>
 <20111124094525.GB27267@pengutronix.de>
Date: Thu, 24 Nov 2011 22:22:08 +0100
In-Reply-To: <20111124094525.GB27267@pengutronix.de> (Sascha Hauer's message
 of "Thu, 24 Nov 2011 10:45:25 +0100")
Message-ID: <87zkflw70f.fsf@free.fr>
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
Subject: Re: [PATCH 9/9] arm/mach-pxa: add mioa701 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha Hauer <s.hauer@pengutronix.de> writes:
> Are the defines in this file used by generic code? If not, please put
> them into a board specific include file (or remove them if they are
> unused)
I intended to use these values in lowlevel_init.S. Isn't that the right place ?

>> diff --git a/arch/arm/boards/mioa701/lowlevel_init.S b/arch/arm/boards/mioa701/lowlevel_init.S
>> +	.section ".text_bare_init","ax"
>> +.global board_init_lowlevel
>> +board_init_lowlevel:
>> +	mov	r10, lr
>> +	/*
>> +	 * This piece of code should ensure at least:
>> +	 *  - getting SDRAM out of self-refresh, and/or setup SDRAM timings
>> +	 *  - putting the GPIO logic into a usable state
>> +	bl	stabilize_reset
>> +	bl	setup_sdram
>> +	bl	setup_gpios
>
> I can't find these functions in the patch. Is this used?
It's ... within a comment because these functions are not written yet. This is
where the config.h values will be used, and the 3 functions should be coded in a
next step.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
