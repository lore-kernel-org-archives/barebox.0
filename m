Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlHJn-0004GC-O7
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 09:51:37 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9656FFFB66D
 for <barebox@lists.infradead.org>; Thu, 12 Jan 2012 10:52:54 +0100 (CET)
Date: Thu, 12 Jan 2012 10:51:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120112095130.GA13145@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
 <20120112085035.GX5446@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120112085035.GX5446@pengutronix.de>
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
Subject: Re: [PATCH 0/6] code size reduction for xloader
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:50 Thu 12 Jan     , Sascha Hauer wrote:
> Hi J,
> 
> On Wed, Jan 11, 2012 at 02:29:14PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	this patch serie wrok on disble non needed code to optimize the size
> > 	of barebox specially in the case of non interactive version suc as
> > 	xloader for TI and late bootstrap for at91
> > 
> > 	tis will also iclude a sync of the kconfig need for this
> > 
> > 
> > The following changes since commit 21d0fac1382cbe20dfc95c0a400350632f28cbdb:
> > 
> >   at91: add Calao TNY-A9260/TNY-A9263/TNY-A9G20 (2012-01-11 09:41:25 +0100)
> > 
> > are available in the git repository at:
> >    git://uboot.jcrosoft.org/barebox.git size-optimisation
> 
> Your git server does not work for me. A git pull just stalls. The web
> frontend works well though.
> 
> Can you check this?
check ready

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
