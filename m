Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TbpNl-0008Ii-D2
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 09:17:12 +0000
Date: Fri, 23 Nov 2012 17:17:53 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121123091753.GF3022@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: NAND_ATMEL strange behavior on at91rm9200 board
To: barebox <barebox@lists.infradead.org>

when NAND_ATMEL used on at91rm9200, it's behavior very strange

write to nand have no effect, Read out of nand, the contents
very strange.

So I write some date to nand using u-boot and then start barebox

----------
# md -s/dev/nand0 0+0x400
00000000: ea00000a eafffffe eafffffe eafffffe                ................
00000010: eafffffe 0000016c eafffffe eafffffe                ....l...........
00000020: 65726162 00786f62 23b00000 00020ea9                barebox....#....
00000030: e10f3000 e3c3301f e38330d3 e129f003                .0...0...0....).
00000040: 00000000 00000000 00000000 00000400                ................
00000050: 00000000 00000000 00000000 00000000                ................
00000060: 00000000 00000000 00000000 00000000                ................
00000070: 00000000 00000000 00000000 00000000                ................
00000080: 00000000 00000000 00000000 00000000                ................
00000090: 00000000 00000000 00000000 00000000                ................
000000a0: 00000000 00000000 00000000 00000000                ................
000000b0: 00000000 00000000 00000000 00000000                ................
000000c0: 00000000 00000000 00000000 00000000                ................
000000d0: 00000000 00000000 00000000 00000000                ................
000000e0: 00000000 00000000 00000000 00000000                ................
000000f0: 00000000 00000000 00000000 00000000                ................
00000100: e1a04000 e50c306f e1a01002 e1a03002                .@..o0.......0..
00000110: e28ee001 e35e0008 e5843000 1afffffb                ......^..0......
00000120: e3e02000 e3a03003 e502306f e3a03e2e                . ...0..o0...>..
00000130: e5841000 e502306b e5841000 e502106f                ....k0......o...
00000140: 00000000 00000000 00000000 00000000                ................
00000150: 00000000 00000000 00000000 00000000                ................
00000160: 00000000 00000000 00000000 00000000                ................
00000170: 00000000 00000000 00000000 00000000                ................
00000180: 00000000 00000000 00000000 00000004                ................
00000190: 00000000 00000000 00000000 00000000                ................
....

But the datas should be:
00000000: ea00000a eafffffe eafffffe eafffffe                ................
00000010: eafffffe 0000016c eafffffe eafffffe                ....l...........
00000020: 65726162 00786f62 23b00000 000200fa                barebox....#....
00000030: e10f3000 e3c3301f e38330d3 e129f003                .0...0...0....).
00000040: ee113f10 e3c33d8e e3c33005 e3833a01                .?...=...0...:..
00000050: e3833002 ee013f10 e3e02000 e51233cf                .0...?... ...3..
00000060: e3130003 1a000039 e59f30e4 e1a01002                ....9....0......
00000070: e50233df e5113397 e3130001 0afffffc                .3...3..........
00000080: e3a03000 e501309b e59f30c8 e3e02000                .0...0...0... ..
00000090: e501308f e59f30c0 e50133d7 e5123397                .0...0...3...3..
000000a0: e3130002 0afffffc e3a03c01 e50233cf                .........<...3..
000000b0: e59f30a8 e3e0c000 e50233cf e51c3397                .0.......3...3..
000000c0: e3130008 0afffffc e59f3094 e3a02000                .........0... ..
000000d0: e50c378f e50c278b e50c37fb e59f3084                .7...'...7...0..
000000e0: e3a01002 e50c109f e3a00202 e50c3067                ............g0..
000000f0: e3a03004 e50c106f e1a0e002 e5802000                .0..o........ ..
......

It looks like there are 64bytes correct data in every 256 bytes. It's so
strange!!

After study barebox source codes. I found atmel_read_buf use
memcpy_fromio to read. I can't understand it. May be on at91samxxx cpu
it's right.

So I let "nand_chip->read_buf = NULL" to let it use the default read
function.

After this , It's OK

I has no at91sam board, So anybody tell me is this behavior specific to
at91rm9200?

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
