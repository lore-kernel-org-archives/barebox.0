Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRX21-00074k-Hl
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 07:44:12 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1iRX1H-00041d-Fz
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:44:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <2c00f789-0630-5dca-d0a6-3aa33b03e1ce@pengutronix.de>
Date: Mon, 4 Nov 2019 08:42:58 +0100
MIME-Version: 1.0
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [BUG] Padding inserted by linker breaks magicvar linker array
To: barebox@lists.infradead.org

Hi,

I run into a crash with barebox master[1] when running the magicvar command.
The culprit seems to be 8 bytes of padding inserted between
__barebox_magicvar_start and OPTARG, the first array element:

                  0x0000000000061918                __barebox_magicvar_start = .
   *(SORT_BY_NAME(.barebox_magicvar*))
=> *fill*         0x0000000000061918        0x8
   .barebox_magicvar_OPTARG
                  0x0000000000061920       0x10 common/built-in.o
                  0x0000000000061920                __barebox_magicvar_OPTARG

The 8 byte *fill*er aligns the .barebox_magicvar_OPTARG section to 16 bytes.
Via addition and removal of dummy initcalls, we can shift the magicvars around
until we no longer straddle the 16 bit boundary:

                 0x0000000000061910                __barebox_magicvar_start = .
   *(SORT_BY_NAME(.barebox_magicvar*))
   .barebox_magicvar_OPTARG
                 0x0000000000061910       0x10 common/built-in.o
                 0x0000000000061910                __barebox_magicvar_OPTARG

Now running magicvar no longer crashes. We can achieve the alignment reliably by
adding . = ALIGN(16) at the start of the BAREBOX_MAGICVARS definition in
include/asm-generic/barebox.lds.h.

Does someone know what controls this 16 byte (or maybe 32 byte?) alignment?
Do we need to explicitly align the other linker array start symbols as well or
is there a better way?

Interestingly, the barebox_cmd array which I would've expected to behave the same
doesn't:

               0x0000000000061638                __barebox_cmd_start = .
*(SORT_BY_NAME(.barebox_cmd*))
.barebox_cmd_2048
               0x0000000000061638        0x8 commands/built-in.o
               0x0000000000061638                barebox_cmd_2048

Here the 8 byte alignment is deemed ok by the linker...

Thoughts?

Cheers,
Ahmad



[1]: master at time of writing is 27ee6010 "console_simple: fix linking error when
     ARCH_HAS_CTRLC enabled". To reproduce the issue I've added a single dummy initcall.
     I can provide defconfig if requested.
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
