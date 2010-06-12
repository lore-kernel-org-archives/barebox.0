Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.191.76.200])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1ONR7U-00065G-5l
	for barebox@lists.infradead.org; Sat, 12 Jun 2010 13:51:32 +0000
Received: from surf (humanoidz.org [82.247.183.72])
	by mail.free-electrons.com (Postfix) with ESMTPA id B73AFE16E
	for <barebox@lists.infradead.org>;
	Sat, 12 Jun 2010 15:52:19 +0200 (CEST)
Date: Sat, 12 Jun 2010 15:51:21 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20100612155121.0909adf8@surf>
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
Subject: ARM/AT91 build failure: Error: symbol *ABS* is in a different section
To: barebox@lists.infradead.org

Hello,

In barebox 2010.05, the at91sam9263ek defconfig was building properly
with my 2009q1 CodeSourcery ARM toolchain. Barebox 2010.06 no longer
builds with the same defconfig/toolchain. The build failure is:

  CC      arch/arm/cpu/start.o
{standard input}: Assembler messages:
{standard input}:37: Error: symbol *ABS* is in a different section

The commit that introduced the regression is
78104ae181f78d83664fdc7522eb632d9c3b2ec9 (i.e "arm: reimplement startup
code in C").

The part causing the problem is in board_init_lowlevel_return(), more
precisely

    /* Get runtime address of this function */
    __asm__ __volatile__("adr %0, 0":"=r"(r));

I have investigated further for the moment.

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
