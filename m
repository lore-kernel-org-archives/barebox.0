Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R2EGJ-0002NH-Md
	for barebox@lists.infradead.org; Sat, 10 Sep 2011 03:29:48 +0000
Received: by ywp17 with SMTP id 17so2310468ywp.36
	for <barebox@lists.infradead.org>; Fri, 09 Sep 2011 20:29:45 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 9 Sep 2011 23:29:45 -0400
Message-ID: <CAMwGMjyne+ixbgzJ3_KJ9+=qHK+kGQgQGqL06stVvv-GQ6PYow@mail.gmail.com>
From: Jon Ringle <jon@ringle.org>
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
Subject: barebox nand ignoring bad eraseblocks or read/write
To: barebox@lists.infradead.org

I have a NAND device with a few bad eraseblocks, which is not
uncommon. I figured that barebox would properly handle avoiding the
bad eraseblocks.
So I was surprised when I discovered that this is not entirely the
case when I #define DEBUG at the top of nand.c. erase seems to honor
the bad eraseblocks, but write still silently uses the bad erase block
and read fails when it reads the bad eraseblock at 0x001e0000. Am I
missing something?


NAND device: Manufacturer ID: 0xec, Chip ID: 0xf1 (Samsung NAND 128MiB
3,3V 8-bit)
Scanning device for bad blocks
Bad eraseblock 15 at 0x001e0000
Bad eraseblock 279 at 0x022e0000
Bad eraseblock 507 at 0x03f60000
Bad eraseblock 874 at 0x06d40000
<...snip...>

[barebox]: / update -t kernel -d nand -m mem -f 0x81000000

erasing partition /dev/nand0.kernel_bb

erase 393216 131072
erase 524288 131072
erase 655360 131072
erase 786432 131072
erase 917504 131072
erase 1048576 131072
erase 1179648 131072
erase 1310720 131072
erase 1441792 131072
erase 1572864 131072
erase 1703936 131072
erase 1835008 131072
erase 1966080 131072
Skipping bad block at 0x001e0000
erase 2097152 131072
<...snip...>
erase 8650752 131072

flashing 0x81000000 to /dev/nand0.kernel_bb

write: 0x00060000 0x00001000
offset: 0x00060000 now: 0x00000800 retlen: 0x00000800
offset: 0x00060800 now: 0x00000800 retlen: 0x00000800
write: 0x00061000 0x00001000
offset: 0x00061000 now: 0x00000800 retlen: 0x00000800
offset: 0x00061800 now: 0x00000800 retlen: 0x00000800
<...snip...>
write: 0x001e0000 0x00001000
offset: 0x001e0000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e0800 now: 0x00000800 retlen: 0x00000800
write: 0x001e1000 0x00001000
offset: 0x001e1000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e1800 now: 0x00000800 retlen: 0x00000800
write: 0x001e2000 0x00001000
offset: 0x001e2000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e2800 now: 0x00000800 retlen: 0x00000800
write: 0x001e3000 0x00001000
offset: 0x001e3000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e3800 now: 0x00000800 retlen: 0x00000800
write: 0x001e4000 0x00001000
offset: 0x001e4000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e4800 now: 0x00000800 retlen: 0x00000800
write: 0x001e5000 0x00001000
offset: 0x001e5000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e5800 now: 0x00000800 retlen: 0x00000800
write: 0x001e6000 0x00001000
offset: 0x001e6000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e6800 now: 0x00000800 retlen: 0x00000800
write: 0x001e7000 0x00001000
offset: 0x001e7000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e7800 now: 0x00000800 retlen: 0x00000800
write: 0x001e8000 0x00001000
offset: 0x001e8000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e8800 now: 0x00000800 retlen: 0x00000800
write: 0x001e9000 0x00001000
offset: 0x001e9000 now: 0x00000800 retlen: 0x00000800
offset: 0x001e9800 now: 0x00000800 retlen: 0x00000800
write: 0x001ea000 0x00001000
offset: 0x001ea000 now: 0x00000800 retlen: 0x00000800
offset: 0x001ea800 now: 0x00000800 retlen: 0x00000800
write: 0x001eb000 0x00001000
offset: 0x001eb000 now: 0x00000800 retlen: 0x00000800
offset: 0x001eb800 now: 0x00000800 retlen: 0x00000800
write: 0x001ec000 0x00001000
offset: 0x001ec000 now: 0x00000800 retlen: 0x00000800
offset: 0x001ec800 now: 0x00000800 retlen: 0x00000800
write: 0x001ed000 0x00001000
offset: 0x001ed000 now: 0x00000800 retlen: 0x00000800
offset: 0x001ed800 now: 0x00000800 retlen: 0x00000800
write: 0x001ee000 0x00001000
offset: 0x001ee000 now: 0x00000800 retlen: 0x00000800
offset: 0x001ee800 now: 0x00000800 retlen: 0x00000800
write: 0x001ef000 0x00001000
offset: 0x001ef000 now: 0x00000800 retlen: 0x00000800
offset: 0x001ef800 now: 0x00000800 retlen: 0x00000800
write: 0x001f0000 0x00001000
offset: 0x001f0000 now: 0x00000800 retlen: 0x00000800
offset: 0x001f0800 now: 0x00000800 retlen: 0x00000800
<...snip...>
write: 0x0085f000 0x00001000
offset: 0x0085f000 now: 0x00000800 retlen: 0x00000800
offset: 0x0085f800 now: 0x00000800 retlen: 0x00000800
[barebox]:
[barebox]: / md5sum /dev/nand0.kernel_bb 0+4159380
nand_read: 0x00060000 0x00001000
nand_read: 0x00061000 0x00001000
<...snip...>
nand_read: 0x001df000 0x00001000
nand_read: 0x001e0000 0x00001000
err -74
read: error 74
[barebox]: /

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
