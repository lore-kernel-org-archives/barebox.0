Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1VHd-0002xX-E3
 for barebox@lists.infradead.org; Wed, 15 Aug 2012 04:32:42 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9C1FB10583D5
 for <barebox@lists.infradead.org>; Wed, 15 Aug 2012 06:37:21 +0200 (CEST)
Date: Wed, 15 Aug 2012 06:32:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120815043249.GR6271@game.jcrosoft.org>
References: <1344959336-18562-1-git-send-email-plagnioj@jcrosoft.com>
 <20120814195854.GB1451@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120814195854.GB1451@pengutronix.de>
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

On 21:58 Tue 14 Aug     , Sascha Hauer wrote:
> On Tue, Aug 14, 2012 at 05:48:55PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > export via param the phy_addr and the phy_id detected
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > Hi,
> > 
> > 	this is need to fix the calao board support since the introduction of
> > 	the gigabit phy detection support
> 
> Can you explain what this has to do with gigabit support?
before we do not check the error on the phy detection

now we do and do not register the miidev if we can not detect it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
