Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZttYZ-0001hN-HS
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 08:36:37 +0000
Date: Wed, 4 Nov 2015 09:36:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151104083609.GJ25416@pengutronix.de>
References: <20151104110433.696aef0a00e53bb950e97674@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151104110433.696aef0a00e53bb950e97674@gmail.com>
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
Subject: Re: memcpy strange behaviour
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Peter Mamonov <piton@cs.niisi.ras.ru>, barebox@lists.infradead.org

On Wed, Nov 04, 2015 at 11:04:33AM +0300, Antony Pavlov wrote:
> Hi!
> 
> Peter has reported on strange barebox memcpy command behaviour on his MIPS board:
> 
>   he copies a file to memory using memcpy and then copyies appropriate memory contents
>   back to another file. Next he checks files md5sum and the sums are differ.
> 
> I have reproduced the problem on Qemu VersatilePB ARM board.
> 
> Here is an instruction.
> 
> Configure barebox:
> 
> $ cd barebox.git
> $ export ARCH=arm
> $ export CROSS_COMPILE=<your cross compiler prefix>
> $ make versatilepb_defconfig
> $ sed -i "s/^# CONFIG_CMD_MD5SUM.*$/CONFIG_CMD_MD5SUM=y/" .config
> 
> Prepare testfile on host and compile:
> 
> $ dd if=/dev/zero bs=1 count=4414 | tr "\000" "\377" > defaultenv/defaultenv-2-base/testfile
> $ make
> ...
> 
> Run barebox under qemu:
> 
> $ qemu-system-arm -M versatilepb -nographic -monitor null -kernel arch/arm/pbl/zbarebox -serial stdio
> ...
> barebox# memcpy -s /env/testfile 0 0x01000000
> 
> barebox# memcpy -d _testfile 0x01000000 0 4414
> 
> barebox# md5sum /env/testfile _testfile
> bf8278051ba8de868def083bcc209002  /env/testfile 0x00000000 ... 0xffffffffffffffff
> e295c2bfe32498e03531017443120e89  _testfile     0x00000000 ... 0xffffffffffffffff
> 
> barebox# memcmp -s /env/testfile -d _testfile 0 0
> files differ at offset 4408
> 
> barebox# md -s /env/testfile 4400
> 00001130: ffffffff ffffffff ffffffff ffffffff                ..............
> 
> barebox# md -s _testfile 4400
> 00001130: ffffffff ffffffff 00000000 ffff0000                ..............
> 
> barebox# md -b 0x01001130+0xe
> 01001130: ff ff ff ff ff ff ff ff 00 00 00 00 00 00          ..............
> 
> barebox# md -b -s /env/testfile 0x1130+0xe
> 00001130: ff ff ff ff ff ff ff ff ff ff ff ff ff ff          ..............
> 
> So you see that last 6 bytes have not been copied.
> 
> Please comment this report!

This is fixed by:

http://www.spinics.net/lists/u-boot-v2/msg24850.html

Which I forgot to apply, but did now. The problem is that the newly
introduced O_RWSIZE_8 flag clashed with the O_CREAT flag. This means
that when a file is created (it's always set in memcpy) then we also do
8byte reads/writes which of course leads to the last bytes missing when
the length is not 8byte aligned. Fixed in current master.

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
