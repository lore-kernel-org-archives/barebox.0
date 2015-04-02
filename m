Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ydawy-00085l-NK
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 08:58:09 +0000
Message-ID: <1427965063.24886.16.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 02 Apr 2015 10:57:43 +0200
In-Reply-To: <20150402005457.b05ee70d5a92c4a403ea13a1@gmail.com>
References: <20150402005457.b05ee70d5a92c4a403ea13a1@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox qemu-malta pci problem
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Donnerstag, den 02.04.2015, 00:54 +0300 schrieb Antony Pavlov:
> Hi!
> 
> It looks like qemu-malta barebox pci support is broken since
> 
>   commit b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
>   Author: Lucas Stach <dev@lynxeye.de>
>   Date:   Sat Oct 4 19:40:12 2014 +0200
> 
>       pci: defer device registration until after bridge setup
>     
>       Otherwise the drivers for a device may probe before the
>       devices parent bridge is fully configured, which leads
>       to errors when accessing the BARs.
> 

Thanks for the report and the detailed reproducer. I'll have a look at
this.

Regards,
Lucas

> How to reproduce the problem:
> 
>  $ cd barebox.git
>  $ export ARCH=mips
>  $ export CROSS_COMPILE=<your favorite mips cross-compiler prefix>
> 
>  # first let's see working state
> 
>  $ git checkout b8a1bb1dd215770670108fe5b0de0e5e137bf8fd^
>  $ make qemu-malta_defconfig && make clean && make
>  $ qemu-system-mips -nodefaults -M malta -m 256       -nographic -serial stdio -monitor null       -bios barebox-flash-image -net nic,model=rtl8139
> 
>  ...
>  
>  barebox:/ devinfo
> 
>  ...
> 
>  `-- i2c
>  `-- pci
>    `-- pci0
>    `-- pci1
>    `-- pci2
>    `-- pci3
>    `-- pci4
>       `-- eth0
>          `-- miibus0
>  `-- fs
> 
>  <stop qemu emulation (ctrl-c)>
> 
>  # devinfo shows eth0 device on pci4. good.
>  # now let's see broken state
> 
>  $ git checkout b8a1bb1dd215770670108fe5b0de0e5e137bf8fd
>  $ make qemu-malta_defconfig && make clean && make
>  $ qemu-system-mips -nodefaults -M malta -m 256       -nographic -serial stdio -monitor null       -bios barebox-flash-image -net nic,model=rtl8139
> 
>  ...
>  
>  barebox:/ devinfo
> 
>  ...
> 
>  `-- i2c
>  `-- pci
>  `-- fs
> 
>  # As you can see there is no pci devices on pci bus.
> 
> -- 
> Best regards,
>   Antony Pavlov

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
