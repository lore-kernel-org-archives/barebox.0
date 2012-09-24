Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo5.mail-out.ovh.net ([178.32.116.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGF5J-0003q6-PE
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 20:16:55 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 7281EFFB002
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 22:22:50 +0200 (CEST)
Date: Mon, 24 Sep 2012 22:14:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120924201421.GG26553@game.jcrosoft.org>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <20120924192054.GT1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120924192054.GT1322@pengutronix.de>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 21:20 Mon 24 Sep     , Sascha Hauer wrote:
> On Mon, Sep 24, 2012 at 11:31:22AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	v7:
> > 	 - drop the duplicate platform_data for fec driver
> > 	   as we need to update both with the same data (piss me off)
> 
> Already fixed this up. Is there anything else why I should use this
> version instead of the one currently in -next?
there is a fix for at91_ether IIRC I just send a fix for macb
if you can squash them will be nice

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
