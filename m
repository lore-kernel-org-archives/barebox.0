Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiVJA-0007Ll-UN
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 18:11:29 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 9E0CF1004108
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 19:12:34 +0100 (CET)
Date: Wed, 4 Jan 2012 19:05:15 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104180515.GD1810@game.jcrosoft.org>
References: <20111231151655.GB945@game.jcrosoft.org>
 <1325344898-7076-8-git-send-email-plagnioj@jcrosoft.com>
 <20120104134042.GP27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120104134042.GP27267@pengutronix.de>
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
Subject: Re: [PATCH 08/12] at91/gpio: simplify resources
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:40 Wed 04 Jan     , Sascha Hauer wrote:
> Hi J,
> 
> On Sat, Dec 31, 2011 at 04:21:34PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > drop irq id and rebase instead of of offset
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/mach-at91/at91rm9200.c                |   12 ++++--------
> >  arch/arm/mach-at91/at91sam9260.c               |    9 +++------
> >  arch/arm/mach-at91/at91sam9261.c               |    9 +++------
> >  arch/arm/mach-at91/at91sam9263.c               |   15 +++++----------
> >  arch/arm/mach-at91/at91sam926x_lowlevel_init.c |   10 +++++-----
> >  arch/arm/mach-at91/at91sam9g45.c               |   15 +++++----------
> >  arch/arm/mach-at91/gpio.c                      |   13 ++-----------
> >  arch/arm/mach-at91/include/mach/at91rm9200.h   |    9 +++++----
> >  arch/arm/mach-at91/include/mach/at91sam9260.h  |    7 ++++---
> >  arch/arm/mach-at91/include/mach/at91sam9261.h  |    7 ++++---
> >  arch/arm/mach-at91/include/mach/at91sam9263.h  |   11 ++++++-----
> >  arch/arm/mach-at91/include/mach/at91sam9g45.h  |   11 ++++++-----
> >  arch/arm/mach-at91/include/mach/gpio.h         |    4 ----
> >  13 files changed, 52 insertions(+), 80 deletions(-)
> 
> This breaks at91rm9200ek_defconfig which still references AT91_PIOC.
> I don't know if it's worth it to keep this around anyway since the
> ethernet driver seems to be broken since ages.
I do use it and I've a new version of the ethernet driver

need to finish to cleanup before send

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
