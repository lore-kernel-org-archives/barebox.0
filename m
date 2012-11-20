Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo1.mail-out.ovh.net ([46.105.60.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Taow3-0007TK-OO
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 14:36:25 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 48E79FFA9A0
 for <barebox@lists.infradead.org>; Tue, 20 Nov 2012 15:47:34 +0100 (CET)
Date: Tue, 20 Nov 2012 15:34:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121120143416.GL8327@game.jcrosoft.org>
References: <20121031120122.GF29599@game.jcrosoft.org>
 <20121115101150.GF31820@game.jcrosoft.org>
 <20121120084100.GI10369@pengutronix.de>
 <20121120123738.GK8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121120123738.GK8327@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] m25p80: re-import it againt mtd_add_host
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:37 Tue 20 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:41 Tue 20 Nov     , Sascha Hauer wrote:
> > On Thu, Nov 15, 2012 at 11:11:50AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > ping
> > > 
> > > work on next
> > > On 13:01 Wed 31 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > Hi,
> > > > 
> > > > 	so we now create the cdev via mtd
> > > > 
> > > > 	This will also simplify sync with linux
> > > > 
> > > > 	to avoid the m25p8000 or m25p00 the cdev is still named name m25p and the
> > > > 	drivers m25p80
> > > > 
> > > > 	sync with linux too
> > > > 
> > > > 	this patch series is agianst mtd_dataflash support
> > > > 
> > > > The following changes since commit 9428c386f876fa3a8871eeea4725a805cea5c367:
> > > > 
> > > >   mtd: add dataflash support (2012-10-31 04:48:39 +0800)
> > > > 
> > > > are available in the git repository at:
> > > > 
> > > >   git://git.jcrosoft.org/barebox.git delivery/m25p80
> > 
> > Applied, thanks
> can we have this one on master it's there for a while

And I need on sam9x5ek to have the spi flash

with 2012.12 we will do an official release on linux4sam

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
