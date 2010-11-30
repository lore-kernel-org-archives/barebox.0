Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PNQaA-0007Qa-4p
	for barebox@lists.infradead.org; Tue, 30 Nov 2010 13:49:33 +0000
Date: Tue, 30 Nov 2010 14:44:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101130134445.GB12504@game.jcrosoft.org>
References: <20101126194353.GH26540@game.jcrosoft.org>
	<20101129205350.GZ6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101129205350.GZ6017@pengutronix.de>
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
Subject: Re: [PATCH 0/12] cfi_flash: improvment
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

On 21:53 Mon 29 Nov     , Sascha Hauer wrote:
> Hi J,
> 
> On Fri, Nov 26, 2010 at 08:43:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	the following patch series improve the current flash
> > 	by adding the atmel flash supportm fixing some issues and factorising
> > 	more the code
> > 
> > 	Found during the adding of the at91rm9200ek
> > 
> > please pull
> > The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:
> > 
> >   Merge branch 'master' into next (2010-11-19 09:35:15 +0100)
> 
> Nice. I like this series.
> 
> Can we use readl/writel instead? The __raw_ versions do not exist on
> architectures other than ARM.
yeah we can but __raw_ is supposed to exist on all arch IIRC
as u which

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
