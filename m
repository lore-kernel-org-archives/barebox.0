Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RpYCq-0006bA-GV
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 04:42:06 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4CD54FFB6DC
 for <barebox@lists.infradead.org>; Tue, 24 Jan 2012 05:43:47 +0100 (CET)
Date: Tue, 24 Jan 2012 05:39:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120124043943.GT25622@game.jcrosoft.org>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
 <20120101043717.GC945@game.jcrosoft.org>
 <20120102141345.GB5446@pengutronix.de>
 <20120102150901.GF945@game.jcrosoft.org>
 <20120123120738.GB26642@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120123120738.GB26642@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/9] ARM: move exception vectors away from start of binary
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:07 Mon 23 Jan     , Sascha Hauer wrote:
> On Mon, Jan 02, 2012 at 04:09:01PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:13 Mon 02 Jan     , Sascha Hauer wrote:
> > > On Sun, Jan 01, 2012 at 05:37:17AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 15:52 Sat 17 Dec     , Sascha Hauer wrote:
> > > > > Traditionally U-Boot and barebox have the exception vectors at
> > > > > the start of the binary. There is no real reason in doing so,
> > > > > because in the majority of cases this data will not be at 0x0
> > > > > where it could be used as vectors directly anyway.
> > > > > This patch puts the vectors into a separate linker section and
> > > > > defines an head function which is placed at the start of the
> > > > > image instead. Putting this in a separate function also has
> > > > > the advantage that it can be placed at the start of images
> > > > > which require an additional header like several Freescale i.MX
> > > > > images. As the head function contains the barebox arm magic
> > > > > those images can now also be detected aas barebox images.
> > > > > 
> > > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > ---
> > > > I've to make it optionnal as on AT91 for boot we must have it at the bigeniing
> > > > of the binary
> > > 
> > > Instead of this:
> > > 
> > > 		"b reset\n"
> > > 		".rept 7\n"
> > > 		".word 0x0\n"
> > > 		".endr\n"
> > > 
> > > we could do this:
> > > 
> > > 		"b reset\n"
> > > 		".rept 7\n"
> > > 		"1: b 1b\n"
> > > 		".endr\n"
> > > 
> > > This looks like a exception vector table for the at91 bootloader. BTW
> > > I just looked at a at91 datasheet and at least on the at91sam9260 the
> > > sixth vector should contain the image size to copy. So maybe this does
> > > not work on at91 anyway?
> > I'm working on it so please hold on this
> 
> ping. I'd really like to merge the remaining thumb2 support pieces.
I've issue on it

I try to send a version this week sorry but here its chinese new year

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
