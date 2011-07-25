Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QlLlL-0007J1-Hw
	for barebox@lists.infradead.org; Mon, 25 Jul 2011 14:04:04 +0000
Received: from mail92.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 91317FFC14E
	for <barebox@lists.infradead.org>;
	Mon, 25 Jul 2011 15:57:16 +0200 (CEST)
Date: Mon, 25 Jul 2011 15:39:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110725133917.GA12391@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
	<20110725093259.GY20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110725093259.GY20587@pengutronix.de>
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
Subject: Re: [PATCH 0/12] more device rework
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:32 Mon 25 Jul     , Sascha Hauer wrote:
> On Sun, Jul 24, 2011 at 04:44:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	the folling patch series continue to switch the device/driver
> > 
> > 	this reduce the code of 744 lignes and 188 bytes since v2011.07.0
> > 
> > 	this superseed the previous patch has some errors was found
> > 
> > The following changes since commit 522af7074a333508d8b73c25abd1d051d8672e5c:
> > 
> >   armlinux: mem tag switch to "struct resource" (2011-07-20 08:25:45 +0200)
> > 
> > are available in the git repository at:
> >   git://uboot.jcrosoft.org/barebox.git resource
> 
> pulled to -next.
> 
> That drops the occurances of map_base to 180 ;)
130 to go

can some people help on imx?

I'll send usb and fb soon
that drop 50 more

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
