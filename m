Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UyfiO-0007nU-FV
 for barebox@lists.infradead.org; Mon, 15 Jul 2013 10:09:09 +0000
Received: from mail618.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 141EA104FAF3
 for <barebox@lists.infradead.org>; Mon, 15 Jul 2013 12:08:47 +0200 (CEST)
Date: Mon, 15 Jul 2013 12:08:54 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130715100854.GF19197@ns203013.ovh.net>
References: <20130712091455.GD19197@ns203013.ovh.net>
 <1373620959-20431-1-git-send-email-plagnioj@jcrosoft.com>
 <1373620959-20431-3-git-send-email-plagnioj@jcrosoft.com>
 <20130715090044.GQ14452@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130715090044.GQ14452@pengutronix.de>
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
Subject: Re: [PATCH 3/3] pbl: add lz4 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:00 Mon 15 Jul     , Sascha Hauer wrote:
> On Fri, Jul 12, 2013 at 11:22:39AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > @@ -54,6 +54,9 @@ if IMAGE_COMPRESSION
> >  choice
> >  	prompt "Compression"
> >  
> > +config IMAGE_COMPRESSION_LZ4
> > +	bool "lz4"
> > +
> >  config IMAGE_COMPRESSION_LZO
> >  	bool "lzo"
> 
> Can we add this in a way that it doesn't get the default for all configs
> currently using lzo? Either put it at the end of the choice or add a
> 'default IMAGE_COMPRESSION_LZO'?
yeah this default will do the tric

I plan to update the LZO too as we can get 10 to 20% decompression speed up

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
