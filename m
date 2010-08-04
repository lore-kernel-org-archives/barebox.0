Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OgbEv-0001m7-HL
	for barebox@lists.infradead.org; Wed, 04 Aug 2010 10:30:28 +0000
Date: Wed, 4 Aug 2010 12:25:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100804102545.GB12545@game.jcrosoft.org>
References: <cover.1280749932.git.baruch@tkos.co.il>
	<20100802120213.GC13044@game.jcrosoft.org>
	<20100804064641.GB17208@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100804064641.GB17208@jasper.tkos.co.il>
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
Subject: Re: [PATCH 0/3] arm/imx: serial number / UID support
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

On 09:46 Wed 04 Aug     , Baruch Siach wrote:
> Hi Jean-Christophe,
> 
> On Mon, Aug 02, 2010 at 02:02:13PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > 	serial number is more for board ref than CPU ref
> > 	as you can easly read it from the register.
> > 
> > 	So why pass it via the ATAG?
> 
> The point of the serial number ATAG is to uniquely identify the system.  
> Getting this unique ID from the CPU is as good as any other IMO. I'm not aware 
> of any other UID source on the mx25 3DS system. Besides, having the serial 
> number nicely listed in /proc/cpuinfo is far easier than reading registers.
> 
> Anyway, patches 1 and 2 in this series are useful on their own, I think. I 
> intend to use this functionality for our own board. I've added the mx25 3ds 
> two lines patch to justify the bloat :).
I agree about the other patch I just do not think we need to pass the CPUID to
the kernel as he can easly get it by himself IMHO

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
