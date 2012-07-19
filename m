Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrrKq-0000HD-Kn
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 14:04:13 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 8F5BAFFAA85
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2012 16:09:36 +0200 (CEST)
Date: Thu, 19 Jul 2012 16:04:37 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120719140437.GC22657@game.jcrosoft.org>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-9-git-send-email-s.hauer@pengutronix.de>
 <5007E38B.8040106@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5007E38B.8040106@pengutronix.de>
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
Subject: Re: [PATCH 8/9] ARM: Separate assembler functions into their own
 section
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:38 Thu 19 Jul     , Marc Kleine-Budde wrote:
> On 07/19/2012 10:13 AM, Sascha Hauer wrote:
> > To let the linker remove unused functions.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/cpu/cache-armv4.S      |    7 ++++++-
> >  arch/arm/cpu/cache-armv5.S      |    7 ++++++-
> >  arch/arm/cpu/cache-armv6.S      |   11 +++++++++--
> >  arch/arm/cpu/cache-armv7.S      |    8 ++++++--
> >  arch/arm/lib/ashldi3.S          |    1 +
> >  arch/arm/lib/ashrdi3.S          |    1 +
> >  arch/arm/lib/findbit.S          |    9 +++++++++
> >  arch/arm/lib/io-writesw-armv4.S |    2 ++
> >  arch/arm/lib/lib1funcs.S        |    7 +++++++
> >  arch/arm/lib/lshrdi3.S          |    1 +
> >  10 files changed, 48 insertions(+), 6 deletions(-)
> > 
> > diff --git a/arch/arm/cpu/cache-armv4.S b/arch/arm/cpu/cache-armv4.S
> > index 6d03565..2231eee 100644
> > --- a/arch/arm/cpu/cache-armv4.S
> > +++ b/arch/arm/cpu/cache-armv4.S
> > @@ -3,6 +3,7 @@
> >  
> >  #define CACHE_DLINESIZE 32
> >  
> > +.section .text.__mmu_cache_on
> >  ENTRY(__mmu_cache_on)
> 
> Is it possible to add the section to the ENTRY macro?
Agreed

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
