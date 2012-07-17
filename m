Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sr5H7-0007WO-Le
 for barebox@lists.infradead.org; Tue, 17 Jul 2012 10:45:07 +0000
Received: by pbbrq13 with SMTP id rq13so657127pbb.36
 for <barebox@lists.infradead.org>; Tue, 17 Jul 2012 03:44:51 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <OFBC23BC86.8730299C-ONC1257A3D.002F1072-C1257A3D.002F655C@o0802.rafi.inhouse>
 <20120716103054.GJ30009@pengutronix.de>
 <OFEB4CC2A7.F85A0448-ONC1257A3D.0042AC6D-C1257A3D.00438D25@o0802.rafi.inhouse>
 <2711184.rUQpv2fWDx@dev1>
 <OFD0402E5D.322F9E54-ONC1257A3E.00363476-C1257A3E.0036BF7D@o0802.rafi.inhouse>
In-Reply-To: <OFD0402E5D.322F9E54-ONC1257A3E.00363476-C1257A3E.0036BF7D@o0802.rafi.inhouse>
Date: Tue, 17 Jul 2012 20:44:46 +1000
Message-ID: <019301cd6409$31d9c110$958d4330$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: Antwort: Re: Antwort: Re: Antwort: Re: Antwort: Re: barebox image
 size
To: christian.buettner@rafi.de
Cc: barebox@lists.infradead.org

Hi,

>ok i was able to preceed a little. The new error message after booting is: 
>
>Board: RAFI i.MX53 
>eth@eth0: got MAC address from EEPROM: ******** 
>NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB 3,3V
8-bit) 
>Bad block table found at page 65472, version 0x01 
>Bad block table found at page 65408, version 0x01 
>nand_read_bbt: Bad block at 0x060a0000 
>Malloc space: 0x7df00000 -> 0x7fefffff (size 32 MB) 
>Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) 
>envfs: wrong magic on /dev/env0 
>running /env/bin/init... 
>not found 
>barebox:/ 

What commands are you using to erase and program the flash area?

>Environment config 
>nand_parts="512k(barebox)ro,512k(bareboxenv),4M(kernel),120M(root)" 

>board_init.c 
>devfs_add_partition("nand0", 0x00000, 0x80000, PARTITION_FIXED, "self0"); 
>devfs_add_partition("nand0", 0x80000, 0x80000, PARTITION_FIXED, "env0"); 

These partitions aren't bad block aware, from memory, I think u want
something like:

devfs_add_partition("nand0", 0x80000, 0x80000, PARTITION_FIXED, "env0_raw");
dev_add_bb_dev("env0_raw", "env0");

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
