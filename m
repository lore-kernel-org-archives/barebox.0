Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGx2A-0002yD-Sk
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 19:12:35 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 76962FFB940
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 21:18:34 +0200 (CEST)
Date: Wed, 26 Sep 2012 21:10:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120926191004.GC26553@game.jcrosoft.org>
References: <loom.20120926T210129-125@post.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <loom.20120926T210129-125@post.gmane.org>
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
To: Jerry Kirk <jkirk865@gmail.com>
Cc: barebox@lists.infradead.org

On 19:07 Wed 26 Sep     , Jerry Kirk wrote:
> We are updating from 2012-03 to 2012-09 and after flashing our SOM
> (Phytec PCM043 - imx35) we starting getting this error:
> 
> barebox:/ erase /dev/nor0.barebox
>                                      
> erase: Operation not permitted
did you unprotect first?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
