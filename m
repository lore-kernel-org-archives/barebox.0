Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THZ6y-00014b-Kh
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 11:52:05 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1THZ6v-00034b-Qc
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 13:52:02 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 13:52:01 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 13:52:01 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Fri, 28 Sep 2012 11:51:47 +0000 (UTC)
Message-ID: <loom.20120928T135012-259@post.gmane.org>
References: <loom.20120926T210129-125@post.gmane.org>
 <20120926214515.GT1322@pengutronix.de>
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

Sascha Hauer <s.hauer@...> writes:
> On Wed, Sep 26, 2012 at 07:07:32PM +0000, Jerry Kirk wrote:
> > Any ideas what we now need to do to be able to overwrite Barebox?
> 
> I think you are the victim of a bug fix ;)

Thanks Sascha, that was it. 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
