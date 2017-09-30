Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dyGrc-0006FZ-C5
 for barebox@lists.infradead.org; Sat, 30 Sep 2017 12:27:26 +0000
Received: by mail-lf0-x241.google.com with SMTP id m199so1931709lfe.3
 for <barebox@lists.infradead.org>; Sat, 30 Sep 2017 05:27:03 -0700 (PDT)
Date: Sat, 30 Sep 2017 15:38:59 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20170930153859.7d7d44ddae692b3d46a90c1a@gmail.com>
In-Reply-To: <a483bc68-8d0a-7d27-377e-e1941ddc4161@rempel-privat.de>
References: <20170928231249.4158-1-antonynpavlov@gmail.com>
 <20170928231249.4158-9-antonynpavlov@gmail.com>
 <a483bc68-8d0a-7d27-377e-e1941ddc4161@rempel-privat.de>
Mime-Version: 1.0
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
Subject: Re: [RFC v4 08/10] RISC-V: add erizo_generic_defconfig
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

On Fri, 29 Sep 2017 14:29:21 +0200
Oleksij Rempel <linux@rempel-privat.de> wrote:

> Am 29.09.2017 um 01:12 schrieb Antony Pavlov:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/riscv/configs/erizo_generic_defconfig | 55 ++++++++++++++++++++++=
++++++++
> >  1 file changed, 55 insertions(+)
> > =

> > diff --git a/arch/riscv/configs/erizo_generic_defconfig b/arch/riscv/co=
nfigs/erizo_generic_defconfig
> > new file mode 100644
> > index 000000000..8ccad8934
> > --- /dev/null
> > +++ b/arch/riscv/configs/erizo_generic_defconfig
> > @@ -0,0 +1,55 @@
> > +CONFIG_32BIT=3Dy
> > +CONFIG_BUILTIN_DTB=3Dy
> > +CONFIG_BUILTIN_DTB_NAME=3D"erizo_generic"
> > +# CONFIG_GLOBALVAR is not set
> > +CONFIG_TEXT_BASE=3D0x80000000
> > +CONFIG_MEMORY_LAYOUT_FIXED=3Dy
> > +CONFIG_STACK_BASE=3D0x800e0000
> > +CONFIG_STACK_SIZE=3D0x20000
> > +CONFIG_MALLOC_BASE=3D0x80100000
> > +CONFIG_MALLOC_SIZE=3D0x100000
> > +CONFIG_MALLOC_TLSF=3Dy
> > +CONFIG_PANIC_HANG=3Dy
> > +CONFIG_HUSH_FANCY_PROMPT=3Dy
> > +CONFIG_CMDLINE_EDITING=3Dy
> > +CONFIG_AUTO_COMPLETE=3Dy
> > +# CONFIG_ERRNO_MESSAGES is not set
> > +# CONFIG_TIMESTAMP is not set
> > +# CONFIG_BOOTM is not set
> > +# CONFIG_ENV_HANDLING is not set
> > +CONFIG_POLLER=3Dy
> > +CONFIG_DEBUG_LL=3Dy
> > +CONFIG_LONGHELP=3Dy
> > +CONFIG_CMD_IOMEM=3Dy
> > +CONFIG_CMD_IMD=3Dy
> > +CONFIG_CMD_MEMINFO=3Dy
> > +CONFIG_CMD_GO=3Dy
> > +CONFIG_CMD_LOADY=3Dy
> > +CONFIG_CMD_CMP=3Dy
> > +CONFIG_CMD_MD5SUM=3Dy
> > +CONFIG_CMD_SHA1SUM=3Dy
> > +CONFIG_CMD_MSLEEP=3Dy
> > +CONFIG_CMD_SLEEP=3Dy
> > +CONFIG_CMD_MEMTEST=3Dy
> > +CONFIG_CMD_MM=3Dy
> > +CONFIG_CMD_FLASH=3Dy
> > +CONFIG_CMD_GPIO=3Dy
> > +CONFIG_CMD_I2C=3Dy
> > +CONFIG_CMD_SPI=3Dy
> > +CONFIG_CMD_OF_DUMP=3Dy
> > +CONFIG_CMD_TIME=3Dy
> > +CONFIG_CMD_DHRYSTONE=3Dy
> > +CONFIG_OFDEVICE=3Dy
> > +CONFIG_DRIVER_SERIAL_NS16550=3Dy
> > +CONFIG_DRIVER_SPI_GPIO=3Dy
> > +CONFIG_I2C=3Dy
> > +CONFIG_I2C_GPIO=3Dy
> > +CONFIG_MTD=3Dy
> > +# CONFIG_MTD_OOB_DEVICE is not set
> > +CONFIG_MTD_M25P80=3Dy
> > +CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
> > +CONFIG_EEPROM_AT25=3Dy
> > +CONFIG_EEPROM_AT24=3Dy
> =

> hm... none of it seems to be in devicetree. Do you need this eeproms?

My bad! These options used in development branch.

In my RICS-V TODO list I have the 'add support for Opencores I2C and SPI IP=
-blocks' record.

At the moment I work on testing bitbanged SPI and I2C on real FPGA boards.
Next I will try to use Opencores I2C and SPI IP-blocks instead of GPIO bitb=
ang.

> =

> > +CONFIG_GPIO_GENERIC_PLATFORM=3Dy
> > +# CONFIG_PINCTRL is not set
> > +CONFIG_DIGEST_CRC32_GENERIC=3Dy
> > =


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
