Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YCDUk-00005G-PW
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 20:27:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <ukl@pengutronix.de>) id 1YCDUO-0001JG-R0
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 21:27:28 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <ukl@pengutronix.de>) id 1YCDUO-0004ho-P7
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 21:27:28 +0100
Date: Fri, 16 Jan 2015 21:27:28 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150116202728.GY22880@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: sp uninitialized in imx6_cpu_lowlevel_init
To: barebox@lists.infradead.org

Hello,

when building imx_v7_defconfig and then looking at
images/start_imx6_gk802.pbl (several more are affected, too), I get:

$ objdump -d images/start_imx6_gk802.pbl
00000000 <start_imx6_gk802>:
   0:   e28f9001        add     r9, pc, #1
   4:   e12fff19        bx      r9
   8:   f000 f822       bl      50 <start_imx6_gk802+0x50>
...
  50:   f000 f850       bl      f4 <__start_imx6_gk802>
...
  f4:   f000 f80c       bl      110 <imx6_cpu_lowlevel_init>
...
 110:   b508            push    {r3, lr}

That is the sp register is used here without being initialized. I guess
this didn't break up to now because when barebox is jumped into, sp
was already used by the boot rom and still points into SRAM.

Still I think this is worth to be fixed. I think this means that
imx6_cpu_lowlevel_init must be marked __naked and lr must be saved into
a register that is preserved by the functions called by
imx6_cpu_lowlevel_init.

Sounds reasonable?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
