Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cBg9f-0007aL-H1
 for barebox@lists.infradead.org; Tue, 29 Nov 2016 11:00:57 +0000
Received: from thebe.hi.pengutronix.de ([2001:67c:670:100:5e26:aff:fe2b:7cc4]
 helo=thebe) by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1cBg9I-0001nw-6j
 for barebox@lists.infradead.org; Tue, 29 Nov 2016 12:00:32 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue, 29 Nov 2016 12:02:23 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201611291202.23646.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: UBIFS trouble
To: barebox@lists.infradead.org

Hi,

with an older barebox (2015.08) I can see in my NOR:

barebox@board: ls -l /mnt/nor0.file-system.ubi.rootfs/boot/
-rw-r--r--    1686716 System.map-4.1.0-none-board
-rw-r--r--      67615 config-4.1.0-none-board
lrwxrwxrwx         30 initrd.img -> initrd.img-4.1.0-none-board
-rw-r--r--    2180972 initrd.img-4.1.0-none-board
lrwxrwxrwx         67 oftree -> ../usr/lib/linux-image-4.1.0-none-board/oma=
p3-mfr-board.dtb
-rw-r--r--    3375248 vmlinuz-4.1.0-none-board
-rw-r--r--    3426056 vmlinuz-ptx-board
lrwxrwxrwx         15 zImage -> vmlinuz-ptx-board

A 4.1 Linux kernel sees this filesystem in the same manner:

root@board:~# ll /boot/
total 10496
-rw-r--r-- 1 root root 1686716 Jul 11  2016 System.map-4.1.0-none-board
-rw-r--r-- 1 root root   67615 Jul 11  2016 config-4.1.0-none-board
lrwxrwxrwx 1 root root      30 Oct 24  2016 initrd.img -> initrd.img-4.1.0-=
none-board
-rw-r--r-- 1 root root 2180972 Oct 24  2016 initrd.img-4.1.0-none-board
lrwxrwxrwx 1 root root      67 Oct 24  2016 oftree -> ../usr/lib/linux-imag=
e-4.1.0-none-board/omap3-mfr-board.dtb
-rw-r--r-- 1 root root 3375248 Jul 11  2016 vmlinuz-4.1.0-none-board
-rw-r--r-- 1 root root 3426056 Oct  1  2016 vmlinuz-ptx-board
lrwxrwxrwx 1 root root      15 Oct  1  2016 zImage -> vmlinuz-ptx-board

A fresh barebox (2016.11.0) sees this filesystem differently:

barebox@board:/ ls -l /mnt/nor0.file-system.ubi.rootfs/boot/
-rw-r--r--        1686716 System.map-4.1.0-none-board
-rw-r--r--          67615 config-4.1.0-none-board
-rw-r--r--        2180972 initrd.img
-rw-r--r--        2180972 initrd.img-4.1.0-none-board
/mnt/nor0.file-system.ubi.rootfs/boot//oftree: No such file or directory
-rw-r--r--        3375248 vmlinuz-4.1.0-none-board
-rw-r--r--        3426056 vmlinuz-ptx-board
-rw-r--r--        3426056 zImage

Any idea?

jb

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
