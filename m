Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1VJJ-00031S-5h
 for barebox@lists.infradead.org; Wed, 15 Aug 2012 04:34:26 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 39CC910583D5
 for <barebox@lists.infradead.org>; Wed, 15 Aug 2012 06:39:05 +0200 (CEST)
Date: Wed, 15 Aug 2012 06:34:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120815043433.GS6271@game.jcrosoft.org>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
 <20120814201956.GD1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120814201956.GD1451@pengutronix.de>
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
Subject: Re: [PATCH 1/7] smc911x: move register define to smc911x.h
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:19 Tue 14 Aug     , Sascha Hauer wrote:
> On Tue, Aug 14, 2012 at 07:32:14PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this make the driver more readable
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/net/smc911x.c                |  329 +--------------------------
> >  drivers/net/{smc911x.c => smc911x.h} |  406 ----------------------------------
> >  2 files changed, 2 insertions(+), 733 deletions(-)
> >  copy drivers/net/{smc911x.c => smc911x.h} (60%)
> 
> This is only churn. Please drop.
I'm going to use the linux one and sync both of them

in a second patch series with more improvement so this help

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
