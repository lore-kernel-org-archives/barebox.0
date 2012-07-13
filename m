Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.22])
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SpcGb-0005cl-Mo
 for barebox@lists.infradead.org; Fri, 13 Jul 2012 09:34:38 +0000
Message-ID: <4FFFEB85.3060003@gmx.de>
Date: Fri, 13 Jul 2012 11:33:57 +0200
From: Stutz Sven <stutzsven@gmx.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------000909070305040300030507"
Reply-To: stutzsven@gmx.de
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: AT91SAM9263-EK
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------000909070305040300030507
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hello everybody,

I am trying to learn and to play with the at91sam9263-ek (Rev. B) evalboard.

I was really successful building all parts (at91Bootstrap, Barebox, 
Linuximage) and when I upload all files via SAM-BA and I restart the 
device I get the prompt of barebox.

But nothing more
Everything is fine I can also switch on and off the on board leds but I 
cannot load/ start the kernel.

The addresses I use are:
         0x     0000 - 0x1 FFFF at91Bootstrap
         0x  2 0000 -  0x5 FFFF Barebox
         0x  6 0000 -  0x7 FFFF Bareboxenv
         0x  8 0000 -  47 FFFF kernel
         0x48 0000 -7c7 FFFF rootfs
     and rest is data ...

I have change the specific init.c file and boot file in the specific 
environment folder.
First I though the missing *.bb partitions can fix this problem. Then I 
modified the env/init file for that.  Apparently this placeholder "*" in 
this boot script (nand -a dev/nand0.* ) is not working correctly.
     addpart /dev/nand0 $nand_parts
     nand -a /dev/nand0.*

     nand -a dev/nand0.at91bootstrap
     nand -a dev/nand0.barebox
     nand -a dev/nand0.bareboxenv
     nand -a dev/nand0.kernel
     nand -a dev/nand0.rootfs

The second try was to change also this partition table in the specific 
init.c so that both match.
         devfs_add_partition("nand0", 0x00000, SZ_128K, 
DEVFS_PARTITION_FIXED, "at91bootstrap_raw");
         dev_add_bb_dev("at91bootstrap_raw", "at91bootstrap");
         devfs_add_partition("nand0", SZ_128K, SZ_256K, 
DEVFS_PARTITION_FIXED, "self_raw");
         dev_add_bb_dev("self_raw", "self0");
         devfs_add_partition("nand0", SZ_256K + SZ_128K, SZ_128K, 
DEVFS_PARTITION_FIXED, "env_raw");
         dev_add_bb_dev("env_raw", "env0");

But everything without success. It's a little bit strange because when I 
execute the command
     bootm -v /dev/nand0.kernel.bb
First I get the following output
         Barebox:/ bootm -v /dev/nand0.kernel.bb
             Image Name:     Linux-3.4.0
             OS:                      Linux
             Architecture:     ARM
             Type:                   Kernel Image
             Compression:    uncompressed
             Data Size:           2034784 Bytes = 1.9 MB
             Load Address:    20008000
             Entry Point:        20008000
         err -74
         loading os image failed with Out of memory

and if I try again the same command
         Barebox:/ bootm -v /dev/nand0.kernel.bb
         err -74
         Unknown OS filetype (try -f)

also if I try to memcpy or uimage I always get this err 74.

What is this Error 74 (-- Reset level 3)?
Why Out of memory?


Kind regards

Sven


--------------000909070305040300030507
Content-Type: text/x-vcard; charset=utf-8;
 name="stutzsven.vcf"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="stutzsven.vcf"

begin:vcard
fn:Stutz Sven
n:Sven;Stutz
email;internet:stutzsven@gmx.de
tel;cell:0160771169
x-mozilla-html:FALSE
version:2.1
end:vcard


--------------000909070305040300030507
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------000909070305040300030507--
