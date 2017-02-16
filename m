Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ceGiD-0002NY-4G
 for barebox@lists.infradead.org; Thu, 16 Feb 2017 07:42:46 +0000
Date: Thu, 16 Feb 2017 08:42:23 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170216074223.fct2k427gpebftsa@pengutronix.de>
References: <20170215192932.GB32649@mail.ovh.net>
 <20170216073811.napm7zygn2l6l44u@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170216073811.napm7zygn2l6l44u@pengutronix.de>
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
Subject: Re: [PATCH 0/12] EFI: drop arch efi
To: barebox@lists.infradead.org

Hi,

On Thu, Feb 16, 2017 at 08:38:11AM +0100, Michael Olbrich wrote:
> On Wed, Feb 15, 2017 at 08:29:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Today the EFI is build as an other ARCH when in fact it's just a boot mode
> > 
> > so move it back to arch/x86 for the spicific x86 part and the common
> > to common and driver
> > 
> > The last 3 patches allow to debug EFI and prepare for more efi support
> > 
> > The following changes since commit b225bbf295c92263adbcec2c385c5e8d83542c72:
> > 
> >   i.MX: esdhc: fix imx-esdhc driver for non-OF boards (2017-02-14 08:48:34 +0100)
> 
> I've commented on one patch where stuff got lost. I think that was all.
> "efi-image.c" was moved so git could handle that correctly.
> 
> With that fixed, barebox seemed to work as expected in a short test.

Oh, and I've only tested patches 1-9. I've not seen 10-12 so far.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
