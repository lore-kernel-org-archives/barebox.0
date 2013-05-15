Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVgM-0000F9-QI
 for barebox@lists.infradead.org; Wed, 15 May 2013 06:59:28 +0000
Date: Wed, 15 May 2013 08:59:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515065902.GE32299@pengutronix.de>
References: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
 <6061FD58-D248-4A13-98E4-7AAD7A80CFCF@jcrosoft.com>
 <20130508182526.40de08c6@e6520eb>
 <1368600373.828822510@f150.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1368600373.828822510@f150.mail.ru>
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
Subject: Re: [PATCH 1/1] Revert "nand_base: detect more ONFI flash"
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, May 15, 2013 at 10:46:13AM +0400, Alexander Shiyan wrote:
> > > > On Tue, May 07, 2013 at 10:21:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > >> this brake the nand support on at91sam9x5ek
> > > >> where we have a non compliant ONFI nand
> > > >> NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64
> > > >> 
> > > >> This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.
> > > > 
> > > > Thank you for letting us know that this patch causes a regression for
> > > > you. I this happens, please first try and fix the regression. If that
> > > > doesn't work please tell us what about the original patch is so wrong
> > > > that it needs to be reverted. With a good explanation it could be that
> > > > someone else has an idea. And whatever you do, put the original author,
> > > > Eric in this case, on Cc.
> > > 
> > > This commit was supposed just able to detect that a Nand is ONFI
> > > 
> > > but instead it brake supported Nand
> > > 
> > > So Eric can fix it but I've not time to debug this before 1 month
> > > and the few platform that use ONFI are all busy
> > > 
> > > So as the commit just allow to detect a band is ONFI can we revert it
> > > 
> > > to keep non-ONFI Nand to work
> > > 
> > IIRC, I tested this patch on some i.MX board with non ONFI NAND flash
> > and that worked fine unless I made a mistake in my tests which is
> > always possible.
> > 
> > I've just sent a patch which may fix your problem, please give it a try
> > (only compile tested, not tested on real hardware).
> 
> What is a patch to fix this? I've got some errors after update to latest master tree:

This one:

http://comments.gmane.org/gmane.comp.boot-loaders.barebox/8883

Eric, you mentioned you would send a final version of this patch. Could
you do this? master is still broken.

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
