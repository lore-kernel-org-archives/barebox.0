Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TR5oM-0003B4-U3
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 18:36:16 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 19CAEFFBB9E
 for <barebox@lists.infradead.org>; Wed, 24 Oct 2012 20:45:58 +0200 (CEST)
Date: Wed, 24 Oct 2012 20:33:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121024183359.GN21588@game.jcrosoft.org>
References: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] net phy: poll for a link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 20:06 Wed 24 Oct     , Sascha Hauer wrote:
> Since we have phylib we have no instance which polls for a link. This
> means that network boot often bails out after a powercycle or phy reset.
> This changes the link status behaviour to:
> 
> - Always check for a link if the last link test was unsuccesful
> - If the last check was succesful, check for a link when the last
>   check is longer than 5 seconds ago
> - Try to get a link for 5 seconds.
5 seconds is too long

and check the link is wrong you need to check the autoneg
the link may be down because no cable

Here we need to check the autoneg is finished
and the phy is up

so use phy_aneg_done and genphy_config_aneg is for this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
