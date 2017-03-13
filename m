Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnND8-0003jj-QB
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 10:28:20 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cnNCl-0005Su-D0
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 11:27:55 +0100
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cnNCl-0001Wd-5c
 for barebox@lists.infradead.org; Mon, 13 Mar 2017 11:27:55 +0100
Date: Mon, 13 Mar 2017 11:27:55 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170313102755.fddlbzorzczkdshk@pengutronix.de>
References: <20170215192932.GB32649@mail.ovh.net>
 <20170311162611.oti5lvnonnpfmohz@pengutronix.de>
 <20170312120538.GA25192@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170312120538.GA25192@mail.ovh.net>
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

On Sun, Mar 12, 2017 at 01:05:38PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 17:26 Sat 11 Mar     , Michael Olbrich wrote:
> > On Wed, Feb 15, 2017 at 08:29:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Today the EFI is build as an other ARCH when in fact it's just a boot mode
> > > 
> > > so move it back to arch/x86 for the spicific x86 part and the common
> > > to common and driver
> > > 
> > > The last 3 patches allow to debug EFI and prepare for more efi support
> > > 
> > > The following changes since commit b225bbf295c92263adbcec2c385c5e8d83542c72:
> > > 
> > >   i.MX: esdhc: fix imx-esdhc driver for non-OF boards (2017-02-14 08:48:34 +0100)
> > > 
> > > are available in the git repository at:
> > > 
> > >   git://git.jcrosoft.org/barebox.git
> > > 
> > > for you to fetch changes up to df12536f83b485c9a4ee28f78637356c6abab6f6:
> > > 
> > >   efi: add efi handle dump command (2017-02-15 07:32:24 +0800)
> > 
> > While testing the serial stuff I noticed that the
> > CONFIG_ARCH_EFI_REGISTER_COM1 option got lost during this rework.
> I did not merge it as it's a hack more than a feature as this by pass the EFI
> API and access the hw directly instead of using Serial IO
> 
> Which was add after
> 
> And I plan to drop this hack

You cannot assume a sane EFI. I have a hardware with a serial port that
works just fine with the ns16550 driver but the EFI does not implement the
serial IO protocol. So this hack is still needed in some way.

Maybe we could register the ns16550 console if no efi serial IO protocol is
found?

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
