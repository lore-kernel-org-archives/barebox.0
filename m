Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f209.mail.ru ([217.69.128.147])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TczF4-00004u-Dc
 for barebox@lists.infradead.org; Mon, 26 Nov 2012 14:00:59 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 26 Nov 2012 18:00:54 +0400
References: <1353783209-16451-1-git-send-email-shc_work@mail.ru>
 <20121126081602.GW10369@pengutronix.de>
In-Reply-To: <20121126081602.GW10369@pengutronix.de>
Message-ID: <1353938454.660390986@f209.mail.ru>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSF0gQ2xlYW51cCBLY29uZmlnIGZpbGVz?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sat, Nov 24, 2012 at 10:53:29PM +0400, Alexander Shiyan wrote:
> > This patch provides a global cleanup barebox Kconfig files. This includes
> > replacing spaces to tabs, formatting in accordance format, removing
> > extraneous lines and spaces. No functional changes.
> > 
> > diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> > index 3afd885..01fe9de 100644
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -19,7 +19,7 @@ config ARM_LINUX
> >  config HAVE_MACH_ARM_HEAD
> >  	bool
> >  
> > -menu "System Type                   "
> > +menu "System Type"
> 
> These whitespaces are present on purpose. They are there for aligning
> the arrows in menus in make menuconfig. I tend to say that this is a
> good change anyway, because counting the spaces to align line lengths
> is something which hurts during review (and I can't remember having
> done this before).
> 
> If nobody objects I'll apply it. If somebody objects, I probably say him
> that he should provide a patch for Kconfig instead.

I can remade some parts if necessary since this output is produced
via cleanup program. Also, is necessary, I can remade this patch for
the "next" branch.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
