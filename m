Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEdsT-00078E-38
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 09:48:46 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4AEBCFF9CC5
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 11:37:40 +0200 (CEST)
Date: Mon, 2 Apr 2012 11:21:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120402092128.GD8116@game.jcrosoft.org>
References: <20120330045639.GZ444@game.jcrosoft.org>
 <20120402091423.GS3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120402091423.GS3852@pengutronix.de>
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
Subject: Re: [PATCH 0/9] AT91 update rm9200ek support and add sam9x5 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 11:14 Mon 02 Apr     , Sascha Hauer wrote:
> On Fri, Mar 30, 2012 at 06:56:39AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	this patch serie update the rm9200 support with
> > 
> > 	 - USB OHCI
> > 	 - USB Device (USB serial)
> > 	 - leds
> > 
> > 	and add the basic support for the sam9x5 series
> > 
> > 	NB: the hardware ecc PMECC is not yet supported
> > 
> > please pull
> > The following changes since commit 79ea2bb5284cc4b5b28a3fa3fee6ede7304e4179:
> > 
> >   at91rm9200ek: adjust kernel partition to be able to flash mainline kernel (2012-03-30 12:51:54 +0800)
> > 
> > are available in the git repository at:
> > 
> >   git://git.jcrosoft.org/barebox.git at91
> 
> Applied, thanks.
> 
> If you send pull requests please make sure they don't contain any other
> patches. This pull request has the at91-fixes branch in it.
agreed I did it for the work on net but here this work depends on at91-fixes

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
