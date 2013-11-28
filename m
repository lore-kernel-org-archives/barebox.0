Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm6nK-00017i-Rg
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:58:40 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B0CAFFF9C57
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:58:13 +0100 (CET)
Date: Thu, 28 Nov 2013 20:00:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131128190043.GB27628@ns203013.ovh.net>
References: <20131128180526.GA27628@ns203013.ovh.net>
 <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
 <1385662007-13057-2-git-send-email-plagnioj@jcrosoft.com>
 <20131128181908.GA8179@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131128181908.GA8179@omega>
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
Subject: Re: [PATCH 2/6] ARM: introduce machine description
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On 19:19 Thu 28 Nov     , Alexander Aring wrote:
> Hi,
> 
> there are only some little nitpicks... maybe not important.
> 
> On Thu, Nov 28, 2013 at 07:06:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > This will allow to do not check in each board which machine we are running
> > from. This work on DT & non-DT board.
> > 
> > If only one board is enable autoselect it
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/cpu/Makefile              |   2 +-
> >  arch/arm/cpu/dtb.c                 |   8 +-
> >  arch/arm/cpu/machine.c             | 188 +++++++++++++++++++++++++++++++++++++
> >  arch/arm/include/asm/barebox-arm.h |   8 ++
> >  arch/arm/include/asm/mach/arch.h   |  68 ++++++++++++++
> >  arch/arm/lib/barebox.lds.S         |   6 ++
> >  6 files changed, 277 insertions(+), 3 deletions(-)
> >  create mode 100644 arch/arm/cpu/machine.c
> >  create mode 100644 arch/arm/include/asm/mach/arch.h
> > 
> > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > index aba201b..78532da 100644
> ...
> > +
> > +int is_dt_compatible(const struct machine_desc *m, const char* dt_compat)
> > +{
> > +	const char *const *dtc = m->dt_compat;
> const char *const *dtc? Looks like c ninja coding style :-D.
> 
> I think you mean:
> 
> const char **dtc = ...
> 

no I mean this one both pointer are const It's very specific

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
