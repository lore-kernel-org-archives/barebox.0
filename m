Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo5.mail-out.ovh.net ([87.98.174.144]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkD93-0002qn-Fj
 for barebox@lists.infradead.org; Tue, 13 May 2014 13:53:29 +0000
Received: from mail422.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E8A88FFA6F7
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 15:52:59 +0200 (CEST)
Date: Tue, 13 May 2014 15:55:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140513135556.GD15426@ns203013.ovh.net>
References: <20140513134228.GQ5858@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140513134228.GQ5858@pengutronix.de>
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
Subject: Re: barebox Documentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:42 Tue 13 May     , Sascha Hauer wrote:
> 
> Hi,
> 
> As we all know the barebox documentation sucks. We @Pengutronix will
> have our internal techweek next month. One of the goals will be to
> improve the documentation situation for barebox.
> 
> What are your opinions in which form the documentation should be?
> 
> We currently have plain text files under Documentation/, a wiki on
> http://wiki.barebox.org/doku.php and doxygen. None of the documentation
> sets is complete and all are outdated.
> 
> Some pros and cons of the existing approaches are:
> 
> Plain text files
> + Easy to write
> + no extra step to generate docs, wysiwyg ;)
> - no links
> - no pictures
soso
> 
> Wiki
> - not contained in the repository, so may be out of sync
> + links
> + nice markup language
useless if no internet
> 
> doxygen
> + contained in the repository
> + easy html doc generation
> + links
> - extra step to generate the docs
why not use the same as the kernel simply

> 
> So what are your opinions, what should be updated and what should be
> dropped? Kconfig has an extra role here. It cannot provide a full
> documentation, but should be updated and maintained.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
