Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo5.mail-out.ovh.net ([91.121.55.239]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VOVbZ-0004ws-Cn
 for barebox@lists.infradead.org; Tue, 24 Sep 2013 16:36:54 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 79C1A102920D
 for <barebox@lists.infradead.org>; Tue, 24 Sep 2013 18:29:11 +0200 (CEST)
Date: Tue, 24 Sep 2013 18:30:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130924163028.GM31585@ns203013.ovh.net>
References: <1379775256-29471-1-git-send-email-plagnioj@jcrosoft.com>
 <1379775256-29471-2-git-send-email-plagnioj@jcrosoft.com>
 <20130924073244.GA30088@pengutronix.de>
 <20130924092450.GJ31585@ns203013.ovh.net>
 <20130924093340.GD30088@pengutronix.de>
 <20130924124442.GL31585@ns203013.ovh.net>
 <20130924152836.GF30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130924152836.GF30088@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2 v2] fs: add BPKFS support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Fargier Sylvain <sylvain.fargier@somfy.com>

On 17:28 Tue 24 Sep     , Sascha Hauer wrote:
> On Tue, Sep 24, 2013 at 02:44:42PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:33 Tue 24 Sep     , Sascha Hauer wrote:
> > > On Tue, Sep 24, 2013 at 11:24:50AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > On 09:32 Tue 24 Sep     , Sascha Hauer wrote:
> > > > > Some typos inside
> > > > > 
> > > > > On Sat, Sep 21, 2013 at 04:54:16PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > Simple update file format developped for Somfy, tools and library are
> > > > > 
> > > > > s/developped/developed/
> > > > > 
> > > > > > +/*
> > > > > > + * Copyright (c) 2013 Jean-Chritstophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > 
> > > > > s/Jean-Chritstophe/Jean-Christophe/
> > > > 
> > > > a tyPo in my own name :(
> > > > > 
> > > > > Otherwise this looks good.
> > > > 
> > > > for some times I was thinking to do the same on uimage
> > > > 
> > > > so we do not need to extract struff from it
> > > 
> > > I have a patch that drops multifile uImage support. It really makes the
> > > bootm code more readable.
> > 
> > NO I does use it and in production board
> > 
> > we must have multifile uImage support
> 
> That was in response to "I was thinking to do the same on uimage" which
> I interpreted in the way that you thought about implementing uimage
> support as filesystem which would allow us to remove the multifile
> support from bootm without loosing the feature of handling multifile
> images.

yes I was thinking of droping all the bootm uImage bla bla code and use an
ioctl to get the metadata

and I do agree this will simplify the bootm code

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
