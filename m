Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvk8H-0002Au-2S
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 06:06:41 +0000
Received: by vws8 with SMTP id 8so5543470vws.36
	for <barebox@lists.infradead.org>; Mon, 22 Aug 2011 23:06:37 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 23 Aug 2011 06:06:37 +0000
Message-ID: <CAK8HZO+gSazgxyNQ1eDCWXEg820mXTZwdAZ7CricBN4SjDkj_A@mail.gmail.com>
From: Nataraj S Narayan <natarajsn@gmail.com>
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
Subject: ubifs: u-boot vs barebox
To: barebox@lists.infradead.org

Hi Sascha

I am able to boot a ubifs filesystem in barebox, after writing the
file system in u-boot. But the reverse doesn't work.

After a

ubiattach /dev/nand0.data;
ubimkvol /dev/ubi0 data 0
tftp rootfs.ubifs.nat /dev/ubi0.data

in barebox,  I replaced barebox with u-boot, keeping the same kernel
and FS, which of course didn't  boot giving me:-

 corrupted PEBs are: 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 43
UBIFS error (pid 1): ubifs_get_sb: cannot open "ubi0:data", error -19



U-Boot> ubi part data

BI: fixable bit-flip detected at PEB 1514
UBI: fixable bit-flip detected at PEB 1515
UBI: fixable bit-flip detected at PEB 1516
UBI: fixable bit-flip detected at PEB 1517
UBI: fixable bit-flip detected at PEB 1518
UBI: fixable bit-flip detected at PEB 1519
UBI: fixable bit-flip detected at PEB 1520
UBI: fixable bit-flip detected at PEB 1521
UBI: fixable bit-flip detected at PEB 1522
UBI: fixable bit-flip detected at PEB 1523
UBI: fixable bit-flip detected at PEB 1524
UBI: fixable bit-flip detected at PEB 1525
UBI: fixable bit-flip detected at PEB 1526
UBI: fixable bit-flip detected at PEB 1527
UBI: fixable bit-flip detected at PEB 1528
UBI: fixable bit-flip detected at PEB 1529
UBI: fixable bit-flip detected at PEB 1530
UBI: fixable bit-flip detected at PEB 1531
UBI: fixable bit-flip detected at PEB 1532
UBI: fixable bit-flip detected at PEB 1533
UBI: fixable bit-flip detected at PEB 1534
UBI: fixable bit-flip detected at PEB 1535
UBI: fixable bit-flip detected at PEB 1536
UBI: fixable bit-flip detected at PEB 1537
UBI: fixable bit-flip detected at PEB 1538
UBI: fixable bit-flip detected at PEB 1539
UBI: fixable bit-flip detected at PEB 1540
UBI: fixable bit-flip detected at PEB 1541
UBI: fixable bit-flip detected at PEB 1542
UBI: fixable bit-flip detected at PEB 1543
UBI error: ubi_read_volume_table: the layout volume was not found
UBI error: ubi_init: cannot attach mtd1
UBI error: ubi_init: UBI error: cannot initialize UBI, error -22
UBI init error -22
exit not allowed from main input shell.
Clancor> <INTERRUPT>


Am I missing any steps? I wrote the FS using  the following in u-boot.

tftp 0x21400000 rootfs.ubifs ;ubi write 0x21400000 data 0x1b90000


regards

Nataraj

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
