Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjMTM-0007vV-8d
 for barebox@lists.infradead.org; Mon, 12 Sep 2016 08:20:13 +0000
Date: Mon, 12 Sep 2016 10:17:18 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1609120925590.3356@blala.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
 <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/6] ARM: add common definitions for i.MX50 SOC
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org



On Mon, 12 Sep 2016, Sascha Hauer wrote:

> On Fri, Sep 09, 2016 at 05:43:39PM +0200, Alexander Kurz wrote:
> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  Documentation/boards/imx.rst                   |  1 +
> >  arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
> >  arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
> >  3 files changed, 15 insertions(+)
> 
> Seems to be straight forward to add i.MX50 support. I have nothing to
> add, except: Applied, thanks
> 
> Out of curiosity: What device do you use with i.MX50? Is it some E-Book
> reader again?
The imx50 has a build-in e-ink driver, so it is more or less a SOC 
tailored on e-books. It is used in some already outdated e-books like the
4th and 5th generation Kindles, some Kobos and Tolinos.
The successor for the imx50 became the e-ink driver equiped variants 
of the imx6sl, which is used in most current generation e-book readers.

While the current patchsets will enable barebox to run on different
e-books e.g. when beeing booted via an installed bootloader, there is 
still an open issue: RAM initialization.
Freescale used a "DRAMMC" which seems to be very unique to this SOC.
Documentation on it is available in the Reference Manual, but it covers
some details quite briefly.
Related on barebox:
it is not clear, whether DRAMMC initialization via imximg-DCD is possible
at all. All existing bootloaders I have seen so far used some 
imximg-plugin code (which is currently not supported by barebox).
A two-stage bootloader implementation via xload may be an alternative.

One note "ARM i.MX50: Add iomux definitions for non-DT board 
implementations": this patch enables non-DT board code.
While DT implementations of new board code would be a better choice,
DT-based board code is currently not able to pass ATAGs. At least some
Kindle-Kernels still rely on ATAGs.

Cheers, Alexander

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
