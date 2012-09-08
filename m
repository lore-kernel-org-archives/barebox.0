Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAOpV-0007Ze-8J
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 17:28:25 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B64D2FF85A1
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 19:36:06 +0200 (CEST)
Date: Sat, 8 Sep 2012 19:28:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908172844.GF20330@game.jcrosoft.org>
References: <1347013566-26130-1-git-send-email-plagnioj@jcrosoft.com>
 <20120908150243.GF18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120908150243.GF18243@pengutronix.de>
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
Subject: Re: [PATCH 1/1] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:02 Sat 08 Sep     , Sascha Hauer wrote:
> On Fri, Sep 07, 2012 at 12:26:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Adapt phylib from linux
> > 
> > switch all the driver to it
> > 
> > This will allow to have phy drivers and to only connect the phy at then
> > opening of the device. And if the phy is not ready fail on open.
> > 
> > This is needed by the boot sequence support to do not endup in a loop or spend
> > time on bootp when no ethernet cable is connected.
> 
> We do not 'need' this for the above reasons, we could also fix the
> current code. The above may be an advantage of your code, but the major
> selling point is code sharing with Linux (at least that's what you told
> me)

yes the major point is to touch the phy only when the ethernet is opening

yes the commit is true but it's not the major selling point

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
