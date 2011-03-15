Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from susu.bendor.com.au ([203.16.199.2])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PzSir-0000Bx-RE
	for barebox@lists.infradead.org; Tue, 15 Mar 2011 11:47:35 +0000
Received: from manocska.bendor.com.au (manocska.bendor.com.au [203.16.199.6])
	by susu.bendor.com.au (Postfix) with ESMTP id E3C3030D
	for <barebox@lists.infradead.org>; Tue, 15 Mar 2011 22:47:28 +1100 (EST)
Date: Tue, 15 Mar 2011 22:47:28 +1100
From: =?UTF-8?B?Wm9sdMOhbiBLw7Njc2k=?= <zoltan@bendor.com.au>
Message-ID: <20110315224728.0d958936@manocska.bendor.com.au>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF4F05@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01165@SRV-VS06.TELEVIC.COM>
	<20110308054006.GA22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B011E5@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B0120B@SRV-VS06.TELEVIC.COM>
	<20110308112217.GD22012@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01280@SRV-VS06.TELEVIC.COM>
	<20110308180836.GA2677@tarshish>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B012BB@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B01573@SRV-VS06.TELEVIC.COM>
	<20110314180338.GA1950@nataf.siach.name>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3BF4F05@SRV-VS06.TELEVIC.COM>
Mime-Version: 1.0
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
Subject: Re: test app
To: barebox@lists.infradead.org

> If I use a division operator or a modulo division operator in a
> static function, all compiles well. If I change the static function
> into a global function, I get following errors : Undefined reference
> to '__aeabi_idiv' Undefined reference to '__aeabi_idivmod'

Those are the division routines in gcc's libgcc.a library. Your problem
is this:

> CFLAGS		= -Wall -Os -nostdlib -Wl,-Ttext=0xA0000000

-nostdlib tells the compiler not to link against the standard
libraries, which include libgcc.a.

> %.elf : $(SRCS)
> 	$(CC) $(CFLAGS) $^ -o $@

If you add a -lgcc to the line above, it should compile.

> I never encountered this problem before in other projects and I don't
> see why this is working in static functions and not in global
> functions.... 

Possibly because if you have static functions, then the compiler can
inline them. If after the inlining it can work out that you are
dividing with a constant, then it won't pull in the division routines,
but substitute division with a multiplication, two shifts and an
addition (the cost of calculating the constant to multiply with and
the shift amounts involves, among other things, a 64-bit division, but
that all happens in compile time - at runtime it's just the mul, shift,
add, which is orders of magnitue faster as well as smaller than a real
division). If you have a global function, gcc must assume that it can
be called with arbitrary arguments from other C files, therefore it must
do real (i.e. runtime) division.
 
Regards,

Zoltan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
