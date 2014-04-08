Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXQ5N-0005tG-PZ
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 07:04:46 +0000
Received: by mail-la0-f52.google.com with SMTP id ec20so449232lab.25
 for <barebox@lists.infradead.org>; Tue, 08 Apr 2014 00:03:46 -0700 (PDT)
Date: Tue, 8 Apr 2014 11:13:50 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140408111350.055b6103bc9bcde789d0ef27@gmail.com>
In-Reply-To: <20140408060619.GR27055@pengutronix.de>
References: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
 <20140408060619.GR27055@pengutronix.de>
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
Subject: Re: [PATCH 0/3] MIPS: loongson-ls1b: switch to device tree probe
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 8 Apr 2014 08:06:19 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Apr 07, 2014 at 11:38:46AM +0400, Antony Pavlov wrote:
> > New boards should probe from devicetree and
> > not use the platform registration code.
> > =

> > This patchseries adds device tree stuff for
> > Longson LS1B SoC and Loongson Tech LS1B Demo Board.
> > =

> > Antony Pavlov (3):
> >   MIPS: add Longson LS1B SoC dtsi file
> >   MIPS: add Loongson Tech LS1B Demo Board dts file
> >   MIPS: loongson-ls1b: switch to device tree
> =

> Applied, thanks.
> =

> BTW what's the status of mips devicetree support in Linux Mainline? I
> sometimes have a look at arch/mips/boot/dts there and find it empty.
> Does the kernel start with the devicetrees you add to barebox?

linux-mips world is different from linux-arm world in many ways :)

$ find linux.git/arch/mips/ -iname '*dts*'
linux.git/arch/mips/mti-sead3/sead3.dts
linux.git/arch/mips/boot/dts
linux.git/arch/mips/ralink/dts
linux.git/arch/mips/ralink/dts/rt2880_eval.dts
linux.git/arch/mips/ralink/dts/mt7620a.dtsi
linux.git/arch/mips/ralink/dts/rt2880.dtsi
linux.git/arch/mips/ralink/dts/rt3883.dtsi
linux.git/arch/mips/ralink/dts/rt3883_eval.dts
linux.git/arch/mips/ralink/dts/rt3052_eval.dts
linux.git/arch/mips/ralink/dts/rt3050.dtsi
linux.git/arch/mips/ralink/dts/mt7620a_eval.dts
linux.git/arch/mips/lantiq/dts
linux.git/arch/mips/lantiq/dts/easy50712.dts
linux.git/arch/mips/lantiq/dts/danube.dtsi
linux.git/arch/mips/netlogic/dts
linux.git/arch/mips/netlogic/dts/xlp_gvp.dts
linux.git/arch/mips/netlogic/dts/xlp_evp.dts
linux.git/arch/mips/netlogic/dts/xlp_fvp.dts
linux.git/arch/mips/netlogic/dts/xlp_svp.dts
linux.git/arch/mips/cavium-octeon/octeon_3xxx.dts
linux.git/arch/mips/cavium-octeon/octeon_68xx.dts


So there is no support in barebox for a mainline linux dts-capable machine.

I have revived my qemu-malta linux-boot-capable barebox branch
(it also introduces PCI support, but I have to clean it):

   https://github.com/frantony/barebox/tree/next.mips-malta-elf-linux.20140=
408

So there is a chance to organize qemu-barebox-linux dts-capable system.

Also AR9331-based system has a chances to be converted to dt.
There is some notes on AR9331 support:

   * some of AR933x linux-mainline devices are dt-capable
      (but mips ath79 mainline kernel code is not dt-capable);
       may be there is some ar933x kernel branch with dt support?
   * I have to port AR933x Ethernet driver to barebox so
     barebox will be capable to load linux kernel quickly and comfortably;
   * kexec code for booting linux kernel already realized for qemu-malta;
     there are possible some cache support issues (qemu-mips does no suppor=
t caches),
     but draft cache support code is already stolen from u-boot.

Loongson developers have no plan to port OpenFirmware in the near future,
see this
   http://www.linux-mips.org/archives/linux-mips/2014-03/msg00164.html
   =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
