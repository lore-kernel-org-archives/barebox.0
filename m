Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from plane.gmane.org ([80.91.229.3])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sd0Vx-0004wc-MQ
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 14:50:14 +0000
Received: from list by plane.gmane.org with local (Exim 4.69)
 (envelope-from <gcbb-barebox@m.gmane.org>) id 1Sd0Vn-0003sM-Ea
 for barebox@lists.infradead.org; Fri, 08 Jun 2012 16:50:03 +0200
Received: from h96-60-251-119.cncrtn.dsl.dynamic.tds.net ([96.60.251.119])
 by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
 id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Fri, 08 Jun 2012 16:50:03 +0200
Received: from jkirk865 by h96-60-251-119.cncrtn.dsl.dynamic.tds.net with
 local (Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
 for <barebox@lists.infradead.org>; Fri, 08 Jun 2012 16:50:03 +0200
From: Jerry Kirk <jkirk865@gmail.com>
Date: Fri, 8 Jun 2012 14:48:24 +0000 (UTC)
Message-ID: <loom.20120608T163815-186@post.gmane.org>
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
Subject: How should a new internally developed board be handled?
To: barebox@lists.infradead.org

Our company is developing a new board for the i.MX35 series
for use in various internal products. We do not expect to
ever "sell" this board on the open market.

We recognize the "public" license and are willing to release
any modifications so that others might learn from our changes
in order to improve their systems.

In this case, is it appropriate for me to begin submitting
patches to define our new (internal only) board and it's
configuration? It would certainly be easier if our changes
were in the tree as we migrate through various versions of
barebox.

Thanks,
  Jerry



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
