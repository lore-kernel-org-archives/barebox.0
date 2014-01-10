Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Xn4-0003Mc-TB
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 08:50:07 +0000
Date: Fri, 10 Jan 2014 09:49:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140110084944.GY6750@pengutronix.de>
References: <20140108024539.GA13274@san0.fossix.org>
 <20140108140748.GL6750@pengutronix.de>
 <20140109072914.GA21626@ns203013.ovh.net>
 <20140109160641.GA7102@san0.fossix.org>
 <20140109162933.GC7102@san0.fossix.org>
 <20140110080251.GT6750@pengutronix.de>
 <20140110082424.GB21626@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140110082424.GB21626@ns203013.ovh.net>
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
Subject: Re: [PATCH] Make number of GPT partitions a configurable option
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Jan 10, 2014 at 09:24:24AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:02 Fri 10 Jan     , Sascha Hauer wrote:
> > On Thu, Jan 09, 2014 at 09:59:33PM +0530, Santosh Sivaraj wrote:
> > > * Santosh Sivaraj <santosh@fossix.org> wrote (on 2014-01-09 21:36:41 +0530):
> > > 
> > > adding list, missed it.
> > > > > > 
> > > > > > Can we instead allocate the partitions dynamically? This limitation to
> > > > > > eight partitions we currently have is not nice, but making it
> > > > > > configurable is not a proper fix.
> > > > > 
> > > > > agreed but a limit will be good too
> > > > > 
> > > > > Best Regards,
> > > > > J.
> > > > > > 
> > > > > > Sascha
> > > > > > 
> > > > 
> > > > We could keep a configurable maximum, with a high default, but do the allocation
> > > > dynamically. I will try to send in a patch, we can discuss how it needs to be
> > > > done over it.
> > 
> > It shouldn't be configurable in Kconfig. That's not a question a user
> > should have to answer when configuring barebox. I high default would be
> > fine with me though since memory usually is an infinite resource in
> > barebox.
> 
> I'm more thiking of a broken EFI GPT that have 1000s of partition
> 
> do we really need to handle that

Indeed it seems we can assume that something is wrong when a device has
1000s of partitions. So where do we set the border? 64?

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
