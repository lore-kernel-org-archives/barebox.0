Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PvCZn-0000nK-Br
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 17:44:36 +0000
Date: Thu, 3 Mar 2011 18:39:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110303173942.GP10814@game.jcrosoft.org>
References: <20110303151500.GT29521@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110303151500.GT29521@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: v2011.03.0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:15 Thu 03 Mar     , Sascha Hauer wrote:
> Hi All,
> =

> next month - next release. Here it is.
> =

> Sascha
> =

> Eric B=E9nard (8):
>       _update_help: fix script name
>       defaultenv/bin/boot: make ubi root's name configurable
>       defaultenv/bin/update: let /env/config set default values
>       update: add bareboxenv update possibility
>       eukrea_cpuimx25: add led support
>       eukrea_cpuimx25: switch to default environement
>       eukrea_cpuimx25: update defconfig
>       i2c-imx: sync with kernel's driver
> =

> Gregory CLEMENT (3):
>       BMP: Add support for 32bpp video frame buffer
>       ARM STM/i.MX: Add possibility to choose the bit per pixel for STM v=
ideo driver
>       fb i.MX23/28: Add the reset control of LCD
> =

> Jean-Christophe PLAGNIOL-VILLARD (9):
>       Thumb-2: Add macros for the unified assembler syntax
>       arm: libgcc update to linux v2.6.37
>       arm: add __bswapsi2 support
>       import swab.h arch implementation form linux v2.3.37
>       x86/pmjump: rename __bss_end to __bss_stop
>       at91sam9m10g45ek: add board revision support
>       lib/decompress_unlzo: use fill and full to read and write data
can you reverse this one before the release I found the issue but can not f=
ix
soon as the issue is also in the kernel

in my I test a too small image and found out that if you use a bigger image=
 we
drop data, the current kernel implementation can not work either

I'll fix it soon

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
