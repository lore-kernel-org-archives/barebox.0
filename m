Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1at9ae-0003RR-74
 for barebox@lists.infradead.org; Thu, 21 Apr 2016 08:03:57 +0000
Message-ID: <1461225765.4164.6.camel@lws-tremmet.phytec.de>
From: Teresa Remmet <t.remmet@phytec.de>
Date: Thu, 21 Apr 2016 10:02:45 +0200
In-Reply-To: <20160419062409.GN9102@pengutronix.de>
References: <1460962611-14084-1-git-send-email-t.remmet@phytec.de>
 <20160419062409.GN9102@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] ARM: board: phytec-som-am335x: RAM timings for
 phycore-r2 1GB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

Am Dienstag, den 19.04.2016, 08:24 +0200 schrieb Sascha Hauer:
> Hi Teresa,
> 
> On Mon, Apr 18, 2016 at 08:56:51AM +0200, Teresa Remmet wrote:
> > Add new RAM Timings for phyCORE R2 with MT41K512M16HA-125IT
> > 1024MB mounted.
> > 
> > Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> > ---
> >  arch/arm/boards/phytec-som-am335x/lowlevel.c    |  1 +
> >  arch/arm/boards/phytec-som-am335x/ram-timings.h | 20 ++++++++++++++++++++
> >  images/Makefile.am33xx                          |  6 ++++++
> >  3 files changed, 27 insertions(+)
> 
> Applied, thanks. The usual question: Can't the new version be
> autodetected using bootstrap pins or similar? ;)


the phyCORE-AM335x R2 is a pin compatible replacement of the
phyCORE-AM335x. So we do not have any new pins left for this. But we
will think of ways to improve this anyway. 

Regards,
Teresa



> 
> Sascha
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
