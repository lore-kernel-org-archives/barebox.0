Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZIY0O-0007i5-RL
 for barebox@lists.infradead.org; Fri, 24 Jul 2015 08:06:57 +0000
Date: Fri, 24 Jul 2015 10:06:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150724080634.GQ18700@pengutronix.de>
References: <1437666788-26574-1-git-send-email-alllecs@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437666788-26574-1-git-send-email-alllecs@yandex.ru>
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
Subject: Re: [RFC] Introduce MIPS disassembler library for barebox
To: Alexander Smirnov <alllecs@yandex.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Thu, Jul 23, 2015 at 06:53:08PM +0300, Alexander Smirnov wrote:
> This commit imports disassembler for mips from qemu/binutils.
> 
> Here is a sample disassembler output:
> 
> barebox:/ disasm 0xbfc00018+0x20
> bfc00018:       401a6000        mfc0    k0,$12
> bfc0001c:       241bfffe        li      k1,-2
> bfc00020:       035bd024        and     k0,k0,k1
> bfc00024:       409a6000        mtc0    k0,$12
> bfc00028:       3c09b400        lui     t1,0xb400
> bfc0002c:       3c08df00        lui     t0,0xdf00
> bfc00030:       ad280068        sw      t0,104(t1)
> bfc00034:       3c09bbe0        lui     t1,0xbbe0
> 
> TODOs:
> 
>   * -a option (select cpu architecture) does not work properly;
>   * -s option (select binary file for disassembly) does not work properly .
> 
> This commit demonstrate simple way for importing disassembler from qemu/binutils:
> disassemblers for other architectures (e.g. ARM) can be easely imported.

This is nice and somehow cool to be able to just disassemble some code
under barebox. However, it's quite a bunch of code imported from another
project and we'll need even more code for other architectures. This code
needs maintenance to stay useful, so I am not very fond of merging it.
What is your usecase for this? Normally I would transfer the area I'd
like to disassemble via tftp or whatever to a host and disassemble it
there, but that it something that I need very seldomly.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
