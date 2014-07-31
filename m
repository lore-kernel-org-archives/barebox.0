Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCiyD-0000sF-O3
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 05:32:06 +0000
Date: Thu, 31 Jul 2014 07:31:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140731053143.GO23235@pengutronix.de>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v4 0/9] Add a simple rtc framework
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 30, 2014 at 12:10:16AM +0400, Antony Pavlov wrote:
> Changes since RFC v3:
> 
>  * rebase over latest 'next';
>  * hwclock: add additional checks;
>  * add jz4740 driver; make appropriate changes
>    for jz4755 and Ritmix RZX50 support;
>  * fix copyright information.
> 
> Changes since RFC v2:
> 
>  * rtc/Kconfig: fix formatting, dependencies and help sections;
>  * hwclock: read time into environment variable.
> 
> Changes since RFC v1:
> 
>  * rebase over latest 'next';
>  * fix copy'n'paste side effects;
>  * add hwclock set time function;
>  * make hwclock options more close to util-linux hwclock;
>  * rtc-ds1307: add ds1338 chip support (used in versatile);
>  * use qemu-versatile for testing.
> 
> 
> Antony Pavlov (9):
>   lib: import 'bcd' from linux-3.15
>   Add a simple rtc framework
>   rtc: import ds1307 driver from linux-3.15
>   commands: add hwclock
>   ARM: versatilepb_defconfig: enable RTC support
>   rtc-lib: import rtc_time_to_tm() from linux-3.15
>   rtc: add jz4740 driver
>   MIPS: dts: jz4755.dtsi: add jz4740-rtc
>   MIPS: ritmix-rzx50_defconfig: enable RTC support

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
