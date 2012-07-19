Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrxmF-0007T9-WF
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 20:56:52 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1Srxm9-00012d-2v
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 22:56:45 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 22:56:45 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 22:56:45 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Thu, 19 Jul 2012 20:56:35 +0000 (UTC)
Message-ID: <loom.20120719T224910-551@post.gmane.org>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: USB On PCM043?
To: barebox@lists.infradead.org

> > We have been attempting to get USB Host mode working under Barebox(2012-07-0)
> > a PCM043 platform (i.mx35), but we are having a bit of trouble.
> 
> Could it be that the USB clock operates at the wrong rate? I think it
> should be 60MHz.

We're not certain how to verify the clock setting for USB in Barebox.
We have used "dump_clocks" but are not certain which of these clocks
the USB clock is derived from. We think we have it set to the same
settings as the Eukrea board.

Do you know of anyone that has used USB on the pcm043 board?





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
