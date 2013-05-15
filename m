Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f392.i.mail.ru ([185.5.136.63])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWUL-0001BF-8J
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:51:06 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 15 May 2013 11:50:37 +0400
Message-ID: <1368604237.60751970@f392.i.mail.ru>
In-Reply-To: <1368601703.210769916@f185.mail.ru>
References: <1367958099-5063-1-git-send-email-plagnioj@jcrosoft.com>
 <20130515065902.GE32299@pengutronix.de>
 <1368601703.210769916@f185.mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbM106IFtQQVRDSCAxLzFdIFJldmVydCAibmFuZF9iYXNlOiBkZXRlY3Qg?=
 =?UTF-8?B?bW9yZSBPTkZJIGZsYXNoIg==?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>, barebox@lists.infradead.org

> > > > > > On Tue, May 07, 2013 at 10:21:39PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > >> this brake the nand support on at91sam9x5ek
> > > > > >> where we have a non compliant ONFI nand
> > > > > >> NAND device: Manufacturer ID: 0xad, Chip ID: 0xda (Hynix NAND 256MiB 3,3V 8-bit), 256MiB, page size: 2048, OOB size: 64
> > > > > >> 
> > > > > >> This reverts commit 4c2bdc8728016b3412523e3264651651fe752860.
> > > > > > 
> > > > > > Thank you for letting us know that this patch causes a regression for
> > > > > > you. I this happens, please first try and fix the regression. If that
> > > > > > doesn't work please tell us what about the original patch is so wrong
> > > > > > that it needs to be reverted. With a good explanation it could be that
> > > > > > someone else has an idea. And whatever you do, put the original author,
> > > > > > Eric in this case, on Cc.
> > > > > 
> > > > > This commit was supposed just able to detect that a Nand is ONFI
> > > > > 
> > > > > but instead it brake supported Nand
> > > > > 
> > > > > So Eric can fix it but I've not time to debug this before 1 month
> > > > > and the few platform that use ONFI are all busy
> > > > > 
> > > > > So as the commit just allow to detect a band is ONFI can we revert it
> > > > > 
> > > > > to keep non-ONFI Nand to work
> > > > > 
> > > > IIRC, I tested this patch on some i.MX board with non ONFI NAND flash
> > > > and that worked fine unless I made a mistake in my tests which is
> > > > always possible.
> > > > 
> > > > I've just sent a patch which may fix your problem, please give it a try
> > > > (only compile tested, not tested on real hardware).
> > > 
> > > What is a patch to fix this? I've got some errors after update to latest master tree:
> > 
> > This one:
> > 
> > http://comments.gmane.org/gmane.comp.boot-loaders.barebox/8883
> > 
> > Eric, you mentioned you would send a final version of this patch. Could
> > you do this? master is still broken.
> 
> Oh, sorry. It was other error. SDRAM size detection for this board is not
> fully completed yet.

I any case I have tested both my modules with this patch.
One module contain chip with ONFI, second chip w/o ONFI.

This is error of non-ONFI module without patch:
mc13xxx-spi mc13xxx-spi0: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
nand: NAND type unknown: ec,dc
nand: No NAND device found (-19)!
imx_nand imx_nand0: probe failed: No such device or address

Then with patch:
mc13xxx-spi mc13xxx-spi0: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
nand: Manufacturer ID: 0xec, Chip ID: 0xdc (Samsung NAND 512MiB 3,3V 8-bit), page size: 2048, OOB size: 64

With ONFI chip:
mc13xxx-spi mc13xxx-spi0: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
nand: ONFI flash detected ... nand: ONFI param page 0 valid
nand: Manufacturer ID: 0x2c, Chip ID: 0xda (Micron MT29F2G08AAD), page size: 2048, OOB size: 64

So, now both works fine.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
