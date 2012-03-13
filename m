Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S7VW9-0006xZ-J9
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 17:28:14 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E86F0DC65AE
 for <barebox@lists.infradead.org>; Tue, 13 Mar 2012 18:31:26 +0100 (CET)
Date: Tue, 13 Mar 2012 18:16:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120313171623.GJ444@game.jcrosoft.org>
References: <20120310221035.GC14564@pengutronix.de>
 <20120313035729.GG444@game.jcrosoft.org>
 <20120313102309.GB2488@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120313102309.GB2488@pengutronix.de>
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
Subject: Re: Shall 'bmp' uncompress automagically?
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:23 Tue 13 Mar     , Wolfram Sang wrote:
> 
> > > since we have 'file_detect_type' in barebox, we could use it to automagically
> > > uncompress BMP files. Pseudo-code:
> > > 
> > > if (file_detect_type(bmp) != BMP) {
> > > 	/* No BMP? Try to depack stream */
> > > 	ret = uncompress(bmp, unpacked_bmp);
> > > 	if (ret < 0 || file_detect_type(unpacked_bmp) != BMP)
> > > 		return -ENOBMP;
> > > }
> > > 
> > > Is something like this wanted? Or shall this be done entirely via scripts?
> > > 
> > > if [ $file is somehow detected as compressed ]
> > > 	uncompress $file /bmp
> > > 	bmp /bmp
> > > 	rm /bmp
> > > else
> > > 	bmp $file
> > > fi
> > I prefer the second one
> 
> Care to explain why?
I the image could be embedeed in other format (uImage, android etc..)

And I'm using such command to boot a kernel via DFU too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
