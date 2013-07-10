Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux0pU-0006ZR-6e
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 20:17:37 +0000
Date: Wed, 10 Jul 2013 22:17:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710201713.GJ516@pengutronix.de>
References: <1373453528-3723-1-git-send-email-s.hauer@pengutronix.de>
 <1373453528-3723-9-git-send-email-s.hauer@pengutronix.de>
 <14050E29-1044-43D1-B240-2AE619C18CA6@jcrosoft.com>
 <20130710133424.GG516@pengutronix.de>
 <20130710143349.GB19197@ns203013.ovh.net>
 <20130710144240.GH516@pengutronix.de>
 <20130710155028.GC19197@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130710155028.GC19197@ns203013.ovh.net>
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
Subject: Re: [PATCH 8/9] Add configurability via devicetree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 10, 2013 at 05:50:28PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > It's the same binding, yes.
> > > 
> > > I do not like to duplicate the information can de avoid this
> > 
> > Which information? The Documentation?
> 
> no the fact we need to describe the nor-partitions twice, for barebox and for
> linux in the DTB

No, barebox should copy (or move) the partition nodes to where Linux
finds them before starting the kernel. This is not yet implemented
though.

Another option of course is to do the obvious and put the partitions
under the mtd device in the first place. I decided against this since
I have the strong feeling that the hardware description should be
separated from clearly board (or project or usecase) specific partition
descriptions.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
