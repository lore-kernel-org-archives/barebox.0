Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo1.mail-out.ovh.net ([46.105.76.26]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBMK8-0003Ki-6z
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 09:00:01 +0000
Received: from mail425.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 71B5EFFA008
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 11:07:58 +0200 (CEST)
Date: Tue, 11 Sep 2012 10:57:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120911085721.GE31207@game.jcrosoft.org>
References: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
 <20120910151900.GC31207@game.jcrosoft.org>
 <20120911075357.GK18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911075357.GK18243@pengutronix.de>
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
Subject: Re: [for master PATCH 1/2] miidev: add phy_addr detection support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:53 Tue 11 Sep     , Sascha Hauer wrote:
> On Mon, Sep 10, 2012 at 05:19:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 17:48 Tue 14 Aug     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > export via param the phy_addr and the phy_id detected
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > > Hi,
> > > 
> > > 	this is need to fix the calao board support since the introduction of
> > > 	the gigabit phy detection support
> > 
> > can we have this as the phylib will not make it for this release
> 
> As said to Eric in the other thread, I intend to apply:
> 
> [PATCH 3/3] miidev: fix 1G wrong detection
> 
> This should fix your problem here aswell, right?
no I need the phy_addr auto detected

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
