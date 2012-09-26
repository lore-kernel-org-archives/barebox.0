Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGxEL-0007d8-6k
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 19:25:09 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1TGxEB-0007Vc-UM
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 21:24:59 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 21:24:59 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 21:24:59 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Wed, 26 Sep 2012 19:24:42 +0000 (UTC)
Message-ID: <loom.20120926T212337-977@post.gmane.org>
References: <loom.20120926T210129-125@post.gmane.org>
 <20120926191004.GC26553@game.jcrosoft.org>
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
Subject: Re: Write Protect Error re-flashing /dev/nor0.barebox
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD <plagnioj@...> writes:

> 
> On 19:07 Wed 26 Sep     , Jerry Kirk wrote:
> > We are updating from 2012-03 to 2012-09 and after flashing our SOM
> > (Phytec PCM043 - imx35) we starting getting this error:
> > 
> > barebox:/ erase /dev/nor0.barebox
> >                                      
> > erase: Operation not permitted
> did you unprotect first?

Yes, just didn't include that in my snippet. The unprotect command did 
not return an error.
 




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
