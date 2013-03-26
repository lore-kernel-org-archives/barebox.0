Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from maiev.ipv6.nerim.net ([2001:7a8:1:53::133] helo=maiev.nerim.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKWnp-0005xw-9l
 for barebox@lists.infradead.org; Tue, 26 Mar 2013 16:32:51 +0000
Received: from SERVEUR0.nvp.local (navocap.net2.nerim.net [213.41.131.28])
 by maiev.nerim.net (Postfix) with ESMTP id A64022E03E
 for <barebox@lists.infradead.org>; Tue, 26 Mar 2013 17:32:40 +0100 (CET)
MIME-Version: 1.0
Content-class: urn:content-classes:message
Date: Tue, 26 Mar 2013 17:29:22 +0100
Message-ID: <CA78C307B8F06747967D122FC656B1537743F9@SERVEUR0.nvp.local>
From: "Mylene Josserand" <Mylene.Josserand@navocap.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [help] Calculation of size for nor_parts
To: barebox mailist <barebox@lists.infradead.org>

Hi everyone,


I need some help about the calculation of some sizes. I did not know if =

I have to post my problem in the barebox list or in the kernelnewbies =

list. Sorry in advance if I would have to post it in kernelnewbie list !


In fact, I have a nor divided in two parts : nor0 and nor1 of 32 Mo each.

In my barebox config file, I have :
nor_parts=3D"256k(barebox)ro,128k(bareboxenv),2432k(kernel),-(rootfs)"


Now, my kernel has a size bigger than 2432 Ko.
To update it, I have calculated the size like this :

Kernel size : 2 788 152 bytes. Block size : 128 000 bytes.
2 788 152 / 128 000 =3D 21.78 so it must have 22 blocks of 128 Ko.
22 * 128 =3D 2816 Ko.

So I changed the bootargs line with :
nor_parts=3D"256k(barebox)ro,128k(bareboxenv),2816k(kernel),-(rootfs)"


---> Is it right ? Is it the good way to do it ?


With this modification, if I have understood, I have to split my rootfs =

in two part because it did not fit anymore in the nor0. So I will have =

one part of the rootfs in nor0.rootfs and another part in nor1.
I have some problems to understand how to split it in two parts. I have =

tried to split the rootfs.ubi with the size of nor0.rootfs :
nor0.rootfs =3D 256+128+2816 =3D 3200 Ko
And my nor0 partition size is 32 Mo so, for me, the nor0.rootfs size is =

28 800 Ko and the rest of the rootfs must be in the nor1.


---> Is it correct too ?


To do it, I have used the command "dd" like this :
sudo dd if=3Drootfs.ubi of=3Drootfs_1.ubi bs=3D1024 count=3D28125
sudo dd if=3Drootfs.ubi of=3Drootfs_2.ubi bs=3D1024 skip=3D28125

With that, my rootfs1.ubi has the size of 28 800 Ko and rootfs2.ubi the =

rest (so, in my case, 1739776 bytes).

When I reflash my board, I have these errors on boot :
- some PEBs corrupted
- a kernel panic about mounting rootfs

[...]
Creating 1 MTD partitions on "mxc_nand":
0x000000000000-0x000020000000 : "nand"
UBI: attaching mtd3 to ubi0
UBI: physical eraseblock size:   131072 bytes (128 KiB)
UBI: logical eraseblock size:    130944 bytes
UBI: smallest flash I/O unit:    1
UBI: VID header offset:          64 (aligned 64)
UBI: data offset:                128
UBI warning: ubi_scan: 13 PEBs are corrupted
corrupted PEBs are: 231 232 233 234 235 236 237 238 240 241 242 243 244
UBI: volume 0 ("nvp-rootfs") re-sized from 231 to 483 LEBs
UBI: attached mtd3 to ubi0
[...]
UBIFS: mounted UBI device 0, volume 0, name "nvp-rootfs"
UBIFS: mounted read-only
UBIFS: file system size:   61936512 bytes (60484 KiB, 59 MiB, 473 LEBs)
UBIFS: journal size:       8380416 bytes (8184 KiB, 7 MiB, 64 LEBs)
UBIFS: media format:       w4/r0 (latest is w4/r0)
UBIFS: default compressor: lzo
UBIFS: reserved for root:  0 bytes (0 KiB)
UBIFS error (pid 1): ubifs_read_node: bad node type (255 but expected 9)
UBIFS error (pid 1): ubifs_read_node: bad node at LEB 230:108664
UBIFS error (pid 1): ubifs_iget: failed to read inode 1, error -22
List of all partitions:
1f00             256 mtdblock0 (driver?)
1f01             128 mtdblock1 (driver?)
1f02            2816 mtdblock2 (driver?)
1f03           62336 mtdblock3 (driver?)
1f04          524288 mtdblock4 (driver?)
Kernel panic - not syncing: VFS: Unable to mount root fs on =

unknown-block(0,0)


I think that I made some mistakes in my calculation (or maybe it is not =

the good way to do it) but I can not find some examples in Internet so I =

hope that someone could help me to understand it ! :)


Thank you in advance !


Best regards,

-- =

Myl=E8ne JOSSERAND
Navocap

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
