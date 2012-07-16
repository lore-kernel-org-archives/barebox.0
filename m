Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqleP-0007cO-Kc
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 13:47:52 +0000
Message-ID: <50041B84.9080707@cmotion.eu>
Date: Mon, 16 Jul 2012 15:47:48 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
MIME-Version: 1.0
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716085418.GG30009@pengutronix.de>
 <OFCC857403.C150E96B-ONC1257A3D.003283FD-C1257A3D.0032D943@o0802.rafi.inhouse>
 <20120716092101.GI30009@pengutronix.de>
 <OF1A7E21F3.CEBD2AB0-ONC1257A3D.0034CA43-C1257A3D.0034EAA0@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
In-Reply-To: <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
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
Subject: Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image size
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

> I flashed from 0x0 to 0x7FFFF (image size: 479K).
> I flashed the environment image (image size: 3K) from 0x80000 to 0xFFFFF
> and changed the config code from barebox/environs/common/config to:
> 
> ...
> nand_parts="512k(barebox)ro,768k(bareboxenv),4M(kernel),120M(root)"
> ...
> 
> Barebox can boot now but the startup log says:
> barebox 2012.03.0-dirty (Jul 16 2012 - 09:01:01)
> 
> Board: i.MX53
> eth@eth0: got MAC address from EEPROM: *********************
> nand_get_flash_type: second ID read did not match ef,ef against c0,c0
> No NAND device found (-19)!
> Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB)
> Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB)
> Open /dev/env0 No such file or directory
> running /env/bin/init...
> not found
> barebox:/
> 
> How can i get the environment loaded?

Normally you would issue 'saveenv' which writes the environment to the
environment partition. On subsequent boots the environment will be loaded.

But the flash device on your board isn't detected by barebox, so you
will have to fix the detection first.

> nand_get_flash_type: second ID read did not match ef,ef against c0,c0

This line suggests, that the nand flash isn't working property. The line
is generated in drivers/mtd/nand/nand_base.c, after reading manufacturer
id and chip id two times, and checking them for equality.

Not only does your board different values for manufacturer and flash id
on first and second read, but they are also the same. manuf id=ef and
chip id=ef isn't plausible. Maybe you should check your hardware.

Regards
Christian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
