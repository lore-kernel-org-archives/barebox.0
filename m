Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YCD7f-000695-Du
 for barebox@lists.infradead.org; Fri, 16 Jan 2015 20:04:00 +0000
Date: Fri, 16 Jan 2015 21:03:31 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20150116200331.GW22880@pengutronix.de>
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
Subject: FTBFS on master + imx_v7_defconfig
To: Masahiro Yamada <yamada.m@jp.panasonic.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

current master + imx_v7_defconfig fails to build for me when using
out-of-tree building:

	  LD      .tmp_barebox1
	arch/arm/lib/built-in.o: In function `unwind_init':
	:(.text.unwind_init+0x24): undefined reference to `__start_unwind_idx'
	:(.text.unwind_init+0x28): undefined reference to `__stop_unwind_idx'
	arch/arm/lib/built-in.o: In function `unwind_frame':
	:(.text.unwind_frame+0x264): undefined reference to `__start_unwind_idx'
	:(.text.unwind_frame+0x26c): undefined reference to `__stop_unwind_idx'
	:(.text.unwind_frame+0x270): undefined reference to `__stop_unwind_idx'
	/home/ukl/gsrc/barebox/Makefile:662: recipe for target '.tmp_barebox1' fai=
led
	make[2]: *** [.tmp_barebox1] Error 1
	Makefile:123: recipe for target '_all' failed
	make[1]: *** [_all] Error 2
	Makefile:14: recipe for target 'all' failed
	make: *** [all] Error 2

bisect points to:

	0ec6488501b0 (kbuild: remove redundant -include include/generated/autoconf=
.h)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
