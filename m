Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StC9a-0001is-Kx
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 06:30:03 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 7172EFF9503
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 08:35:40 +0200 (CEST)
Date: Mon, 23 Jul 2012 08:30:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120723063036.GN22657@game.jcrosoft.org>
References: <1342985496-18182-1-git-send-email-plagnioj@jcrosoft.com>
 <20120723062440.GT30009@pengutronix.de>
 <20120723062648.GU30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120723062648.GU30009@pengutronix.de>
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
Subject: Re: [PATCH 1/1] compressed: rename barebox target to zbarebox and
 zbarebox.bin
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:26 Mon 23 Jul     , Sascha Hauer wrote:
> On Mon, Jul 23, 2012 at 08:24:40AM +0200, Sascha Hauer wrote:
> > Hi Jean-Christophe,
> > 
> > On Sun, Jul 22, 2012 at 09:31:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Keep the previous target untouched.
> > > This will allow to do not brake the modules support.
> > 
> > This breaks images which use barebox.bin as an input for their SoC
> > specific image, like MLO (Omap xload), barebox.netx, barebox.s5p
> 
> If you want to do this, you have to add a make variable for the target
> which can be used for these SoC images.
so we can do this in arch/arm/compressed/Makefile

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
