Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzZYU-0000f1-1D
 for barebox@lists.infradead.org; Thu, 09 Aug 2012 20:42:07 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1SzZYG-0004WQ-2v
 for barebox@lists.infradead.org; Thu, 09 Aug 2012 22:41:52 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 09 Aug 2012 22:41:52 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Thu, 09 Aug 2012 22:41:52 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Thu, 9 Aug 2012 20:41:39 +0000 (UTC)
Message-ID: <loom.20120809T223144-180@post.gmane.org>
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
Subject: Video issues with PCM043
To: barebox@lists.infradead.org

So far we have not been able to get the display working under
Barebox with the display incorporated into the Phytec PCM043
development board. The framebuffer driver is starting without
errors and provides a /dev/fb0 interface. The bmp command is
included and runs without error, but nothing ever displays.

Has anyone else tested this configuration recently? We have
copied the parameters for our display from (our working)
Linux-3.5 driver and have also made sure that our iomux 
settings match our Linux kernel configuration.

Can we get some advice from any other PCM043 user even if
you're not using the Phytec development board? Were you able
get your display working from Barebox? What did you have to
change?


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
