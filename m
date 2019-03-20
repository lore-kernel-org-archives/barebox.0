Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6W1L-0004u2-V7
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 07:52:21 +0000
Date: Wed, 20 Mar 2019 08:52:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Lewis Zhou <lewisou@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 20, 2019 at 12:57:07PM +0800, Lewis Zhou wrote:
> Hi
> 
> I got a compiling error, please see the log below:
> 
> lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
> CROSS_COMPILE=arm-cortex_a8-linux-gnueabihf- am335x_mlo_defconfig
> #
> # configuration written to .config
> #
> 
> lewis@lewis-ubuntu:~/OpenProj/barebox$ make ARCH=arm
> CROSS_COMPILE=arm-corte-linux-gnueabihf-

> {standard input}: Assembler messages:
> {standard input}:123: Error: selected processor does not support `rev
> r7,r7' in Thumb mode
> {standard input}:135: Error: selected processor does not support `rev
> r7,r7' in Thumb mode
> scripts/Makefile.build:249: recipe for target 'common/memory.o' failed
> make[1]: *** [common/memory.o] Error 1

This works here, so this is probably toolchain related. Which toolchain
with which versions do you use? Since you are on an Ubuntu system, have
you tried the one from the gcc-arm-linux-gnueabihf package?

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
