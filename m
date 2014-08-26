Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMJQn-0004R0-7I
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 16:17:13 +0000
Date: Tue, 26 Aug 2014 13:15:43 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140826161543.GB8789@arch.cereza>
References: <1408825163-6135-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408825163-6135-2-git-send-email-ezequiel.garcia@free-electrons.com>
 <53FC9530.7020009@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53FC9530.7020009@gmail.com>
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
Subject: Re: [PATCH 1/2] nand: Add Marvell Orion NAND driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 26 Aug 04:09 PM, Sebastian Hesselbarth wrote:
> On 08/23/2014 10:19 PM, Ezequiel Garcia wrote:
> >This commit adds NAND support for the controller present in Kirkwood SoC=
s.
> =

> Ezequiel,
> =

> I just did a quick check through all public MVEBU datasheets. It looks
> like Kirkwood is really the only SoC with this specific IP while Dove,
> Armada 370, and XP have a different one.
> =


Indeed. Dove's NAND controller seems to be NFC (aka NFC v1), which is
probably similar to the one in PXA3xx. Armada 370/375/380/XP documents
it as NFC v2. Both versions are similar enough to use the same pxa3xx-nand
driver.

I plan to push support for NFCv2 only in Barebox.

Regarding the so-called Orion driver, grepping Linux it seems the IP is
used in Kirkwood and Orion5x.

> >Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> >---
> >  drivers/mtd/nand/Kconfig      |   7 ++
> >  drivers/mtd/nand/Makefile     |   1 +
> >  drivers/mtd/nand/nand_orion.c | 162 ++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 170 insertions(+)
> >  create mode 100644 drivers/mtd/nand/nand_orion.c
> >
> >diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
> >index 04fe3c8..ccf1f9c 100644
> >--- a/drivers/mtd/nand/Kconfig
> >+++ b/drivers/mtd/nand/Kconfig
> >@@ -90,6 +90,13 @@ config NAND_OMAP_GPMC
> >  	  Support for NAND flash using GPMC. GPMC is a common memory
> >  	  interface found on Texas Instrument's OMAP platforms
> >
> >+config NAND_ORION
> >+	bool
> >+	prompt "Orion NAND driver"
> >+	depends on ARCH_MVEBU
> =

> Therefore, we should limit this to ARCH_KIRKWOOD. Also, we could choose
> to call the driver nand_kirkwood.c. OTOH, I am fine with Orion as long
> as we find another good name for the other IP. Remember that Dove is
> still kind-of-Orion.
> =


Sure, I'm fine with naming this nand-kirkwood.c and limit it to ARCH_KIRKWO=
OD
to avoid confusion.

> FWIW,
> =

> Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> =

> I'll give it a try on Guruplug later, too.
> =


Good. Any test is very well-received (although this one is almost a
copy-paste from Linux, given it's really simple).

-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
