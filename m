Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.itk-engineering.de ([212.121.145.30])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK32v-0000NY-C4
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 12:32:18 +0000
Received: from vwexchange001.itk.local (vwexchange001.itk.local [10.61.0.114])
 by mx0.itk-engineering.de (8.14.7/8.14.7) with ESMTP id
 u64CY0aL014760
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
 for <barebox@lists.infradead.org>; Mon, 4 Jul 2016 14:34:00 +0200
From: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Date: Mon, 4 Jul 2016 12:32:04 +0000
Message-ID: <521b64bd91194e5e8e5bdb2bb2f2376f@itk-engineering.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: How to overwrite an ext partition on eMMC
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello folks,
I'm a little lost when trying to overwrite an ext partition on an eMMC memo=
ry inside of barebox. Your help finding the mistake is appreciated.

My Setup:
- Custom board with iMX6, 4GB eMMC and SD card reader (similar to Freescale=
 SabreSD board)
- Using PTXdist to build barebox 2016.05.0 and linux
- The eMMC chip offers wear levelling, so I write a filesystem directly to =
it (using ptxdist created hd.img file flashed directly)
- The eMMC is partitioned as follows:
0x0, Size 1k --> partition table
0x400, Size 8M --> barebox and barebox_env (offset 0x400 forced by iMX6)
0x800400, Size 1G --> ext filesystem with rootfs and kernel

With this layout so far everything works fine. Now I would like to implemen=
t an update mechanism, where barebox erases the complete ext partition and =
replaces it. Under linux I would use something like dd and let it start at =
0x800400. On barebox I have to use memcpy (thanks to Sascha for the hint ht=
tp://lists.infradead.org/pipermail/barebox/2011-April/003308.html ) and thi=
s is where I get stuck.

So I first add partitions so that the memory area is listed under /dev:
devfs_add_partition("mmc3", 0x0, SZ_1K, DEVFS_PARTITION_FIXED, "mmc3.partab=
le"); =

devfs_add_partition("mmc3", SZ_1K, SZ_8M, DEVFS_PARTITION_FIXED, "mmc3.bare=
box");
devfs_add_partition("mmc3", ( SZ_1K + SZ_8M ), SZ_1G, DEVFS_PARTITION_FIXED=
, "mmc3.rootfs");

This works for clearing the partitions data using memset:
memset -d /dev/mmc3.rootfs 0x0 0x0 1073741824 =


However when I try to copy the root.ext2 filesystem onto this memory area, =
I can't mount the partition afterwards:
memcpy -s /mnt/sd/root.ext2 -d /dev/mmc3.rootfs 0 536870912
mount /dev/mmc3.rootfs /mnt/mmc/
mount: No such file or directory

I am questioning my approach, as I am not sure if it is correct to write an=
 ext2 file directly to memory. Or am I making some other basic mistake here?

Thanks for your help and cheers,
Martin

--
M.Eng. Martin Hollingsworth
Medical Systems Engineering
 =

ITK Engineering AG
Im Speyerer Tal 6
D-76761 R=FClzheim
Tel.: +49 7272 7703-510
Fax: +49 7272 7703-100
 =

mailto:martin.hollingsworth@itk-engineering.de

_____________________________________________________________
ITK Engineering AG  Im Speyerer Tal 6  76761 R=FClzheim
Tel.: +49 7272 7703-0 Fax: +49 7272 7703-100 mailto:info@itk-engineering.de=
 http://www.itk-engineering.de

Vorsitzender des Aufsichtsrats/Chairman of the Supervisory Board: Josef W=
=FCrth Vorstand/Executive Board: Michael Englert (Vorsitzender), Dr. Helmut=
h Stahl Sitz der Gesellschaft/Registered Office: 76773 Kuhardt/Pfalz Regist=
ergericht/Registered Court: Amtsgericht Landau, HRB 30139 USt.-ID-Nr./VAT-I=
D-No. DE813165046
 _____________________________________________________________



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
