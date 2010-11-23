Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PKoFb-0003IJ-Cv
	for barebox@lists.infradead.org; Tue, 23 Nov 2010 08:29:20 +0000
Date: Tue, 23 Nov 2010 09:25:28 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101123082528.GE11909@game.jcrosoft.org>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1289585938-22813-1-git-send-email-plagnioj@jcrosoft.com>
	<20101119080049.GA6017@pengutronix.de>
	<20101119113009.GB4216@game.jcrosoft.org>
	<20101120134017.GF6017@pengutronix.de>
	<20101120135824.GE4216@game.jcrosoft.org>
	<20101121042854.GI4216@game.jcrosoft.org>
	<20101123073623.GG6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101123073623.GG6017@pengutronix.de>
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
Subject: Re: [PATCH 1/5] device: introduce resource structure to simplify
	resource delaration
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:36 Tue 23 Nov     , Sascha Hauer wrote:
> On Sun, Nov 21, 2010 at 05:28:54AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 14:58 Sat 20 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 14:40 Sat 20 Nov     , Sascha Hauer wrote:
> > > > On Fri, Nov 19, 2010 at 12:30:09PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > On 09:00 Fri 19 Nov     , Sascha Hauer wrote:
> > > > > > Hi J,
> > > > > > 
> > > > > > On Fri, Nov 12, 2010 at 07:18:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > > introdude also some helper to manager them
> > > > > > > 
> > > > > > > and add multi resource per device support
> > > > > > > 
> > > > > > > ram device: use resource structure instead of memory_platform_data
> > > > > > > 
> > > > > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > > > 
> > > > > > 
> > > > > > You shouldn't use a resource_size_t type to access registers. This will
> > > > > > lead to problems when we start to support 64bit resource sizes
> > > > > no as resource_size_t is 64 bit aware
> > > > 
> > > > And exactly this is the problem. void * is usually only 32bit on arm.
> > > > This will lead to compiler warnings and sparse isn't happy about
> > > > unsigned long in readl/writel anyway.
> > > IIRC on arm resource_size_t is never 64bit at least on the current ARMvx
> 
> Think of MMC/SD cards > 4G.
ok but I do not see the import on the ressource for the drivers?

as it's runtime probed

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
