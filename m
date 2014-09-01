Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOObC-0006wS-E2
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 10:12:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XOOap-0003Br-Nt
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 12:12:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1XOOaj-00020o-05
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 12:12:05 +0200
Date: Mon, 1 Sep 2014 12:12:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901101204.GS5352@pengutronix.de>
References: <1407836241-17620-1-git-send-email-m.olbrich@pengutronix.de>
 <1407836241-17620-2-git-send-email-m.olbrich@pengutronix.de>
 <20140901090619.GJ5352@pengutronix.de>
 <20140901100200.GA5271@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140901100200.GA5271@pengutronix.de>
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
Subject: Re: [PATCH 2/2] EFI: handle more boot devices
To: barebox@lists.infradead.org

On Mon, Sep 01, 2014 at 12:02:00PM +0200, Michael Olbrich wrote:
> On Mon, Sep 01, 2014 at 11:06:19AM +0200, Sascha Hauer wrote:
> > On Tue, Aug 12, 2014 at 11:37:21AM +0200, Michael Olbrich wrote:
> > > efi_get_boot() fails for partitions that are not supported, so errors must
> > > be ignored to find all supported devices.
> > > 
> > > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > > ---
> > > 
> > > I'm not sure about this one. We're not doing anythings with the return
> > > value of efi_get_boot(), so this is just some debug output + memory leak.
> > 
> > So maybe we should rather comment out the code until we do something
> > meaningful with it?
> 
> I don't care either way. What's this stuff for anyways?

These variables contain the boot order. I added this stuff to verify
that I can read EFI variables.

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
