Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1OEhuX-0007Im-8x
	for barebox@lists.infradead.org; Wed, 19 May 2010 11:58:06 +0000
Received: by wwb24 with SMTP id 24so804905wwb.36
	for <barebox@lists.infradead.org>; Wed, 19 May 2010 04:58:03 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20100519112750.GN31199@pengutronix.de>
References: <AANLkTikXvBdVzs2w51dzow9V7myhkvq0sSWUNMzPWn23@mail.gmail.com>
	<20100519112750.GN31199@pengutronix.de>
Date: Wed, 19 May 2010 13:58:02 +0200
Message-ID: <AANLkTikkA8YbPdjBN0mzrRkleZo3NEH6gziW2t-jgyXA@mail.gmail.com>
From: Ivo Clarysse <ivo.clarysse@gmail.com>
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
Subject: Re: board_init_lowlevel_return: Error: symbol ABS is in a different 
	section
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, May 19, 2010 at 1:27 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
[...]
>> Is this a problem with the toolchain I use, or should barebox be patched ?
>
> This works with our toolchain, but it may be that I used some 'feature'
> which is not supposed to work. Anyway, I like the way you did it above
> better as my approach, so how about the following patch which is a
> slight modification from yours:
>
>
> From 84aea4781ec1e99481530b4d5a122ce4e95d2266 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Wed, 19 May 2010 13:23:43 +0200
> Subject: [PATCH] arm start.c: Make runtime function address calculation tolerant for more compilers

This builds using the CodeSourcery G++ toolchain (compile-tested only,
with releases 2009q3 and 2010q1).

I couldn't find anything in the GAS manual that would explain the
presence of an automatic "0:" label.

http://sourceware.org/binutils/docs-2.20/as/ARM-Opcodes.html#ARM-Opcodes  :

ADR

                adr <register> <label>


    This instruction will load the address of label into the indicated
register. The instruction will evaluate to a PC relative ADD or SUB
instruction depending upon where the label is located. If the label is
out of range, or if it is not defined in the same file (and section)
as the ADR instruction, then an error will be generated. This
instruction will not make use of the literal pool.

http://sourceware.org/binutils/docs-2.20/as/Labels.html#Labels :

A label is written as a symbol immediately followed by a colon `:'.
The symbol then represents the current value of the active location
counter, and is, for example, a suitable instruction operand. You are
warned if you use the same symbol to represent two different
locations: the first definition overrides any other definitions.

http://sourceware.org/binutils/docs-2.20/as/Symbol-Names.html#Symbol-Names :

Local Labels

[...]
There is no restriction on how you can use these labels, and you can
reuse them too. So that it is possible to repeatedly define the same
local label (using the same number `N'), although you can only refer
to the most recently defined local label of that number (for a
backwards reference) or the next definition of a specific local label
for a forward reference. It is also worth noting that the first 10
local labels (`0:'...`9:') are implemented in a slightly more
efficient manner than the others.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
