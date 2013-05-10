Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uamch-0005dv-PQ
 for barebox@lists.infradead.org; Fri, 10 May 2013 12:40:32 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 09646104E9B7
 for <barebox@lists.infradead.org>; Fri, 10 May 2013 14:40:08 +0200 (CEST)
Date: Fri, 10 May 2013 14:35:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130510123546.GA19265@game.jcrosoft.org>
References: <20130507175549.GR32299@pengutronix.de>
 <em6083fb6c-e073-40f9-aa90-2878d59c3517@plh001-think>
 <20130510105350.GM32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130510105350.GM32299@pengutronix.de>
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
Subject: Re: Installing barebox for karo-tx53 in nand-flash
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 12:53 Fri 10 May     , Sascha Hauer wrote:
> On Fri, May 10, 2013 at 09:20:50AM +0000, Dr. Patrick Langfeld wrote:
> > Thanks Sascha,
> > building barebox results in two .bin files: barebox.bin and
> > zbarebox.bin.
> > Is zbarebox.bin a compressed version of barebox.bin?
> > Which one should I use for flashing the tx53 nand-flash?
> 
> If it exists then zbarebox.bin please. There is a convenience link
> (barebox-flash-image) which always points to the correct binary.
> 
> > 
> > My boot sources are nand-flash (thats where u-boot is at the moment)
> > (and SD-card for testing).
> > 
> > I tried to flash zbarebox.bin to nand-flash. It started but with error
> > nand: NAND type unknown, ec,f1
> > nand: No NAND device found (-19)!
> 
> Hm, strange. This should be a Samsung 128MiB NAND flash. The id is in
> the database. I currently have no good idea why this isa unknown.
patch from Eric that brake the none ONFI NAND

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
