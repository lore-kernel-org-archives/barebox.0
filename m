Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJEi9-0007D1-05
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 01:57:05 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 6144FFF8875
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 03:58:15 +0200 (CEST)
Date: Sun, 15 Apr 2012 03:39:05 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415013905.GF30672@game.jcrosoft.org>
References: <20120414161509.GC30672@game.jcrosoft.org>
 <20120414201614.GD3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414201614.GD3852@pengutronix.de>
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
Subject: Re: [PATCH 0/3] Omap xloader boot menu support and beagle env
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:16 Sat 14 Apr     , Sascha Hauer wrote:
> On Sat, Apr 14, 2012 at 06:15:09PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	The following patch seri add the support of a boot menu in the xloader
> > 
> > 	This will allow to choice where we boot from.
> > 	As example if the nand boot is broken we can choose to boot from mmc.
> > 	The autoboot is set to 1s as most of the time you expect to boot from the
> > 	default boot.
> 
> No, please no delays which can't be configured away.
with no delay the first entry is selected so minimal delay is 1s

The idea is that even you boot from nand you can load the code from MMC for
barebox

Best Rebards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
