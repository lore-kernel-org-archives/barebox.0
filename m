Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rvz9Q-0006w2-Vs
 for barebox@lists.infradead.org; Fri, 10 Feb 2012 22:41:10 +0000
Date: Fri, 10 Feb 2012 17:40:57 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20120210223856.GL3852@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1202101740350.15327@oneiric>
References: <alpine.DEB.2.02.1202100937130.23570@oneiric>
 <20120210223856.GL3852@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [RFC] A first pass at recognizing Pandaboards
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Fri, 10 Feb 2012, Sascha Hauer wrote:

> On Fri, Feb 10, 2012 at 09:39:10AM -0500, Robert P. J. Day wrote:
> >
> >   thoughts on the following patch?  it's certainly not the final
> > result, but it at least *starts* the process of properly recognizing
> > newer pandaboards, using code taking very close to verbatim out of
> > u-boot.
> >
> >   it's been compile-tested and appears to still work on all boards it
> > did before.  i'll do a bit more testing to make sure of that, but is
> > there any philosophical objection to the following as a single patch
> > submission?
>
> Nope, looks good, except for the whitespace damage between here
>
> > +        case MIDR_CORTEX_A9_R2P10:
> > +                switch (readl(CONTROL_ID_CODE)) {
> > +                case OMAP4460_CONTROL_ID_CODE_ES1_1:
> > +                        return OMAP4460_ES1_1;
> > +                        break;
> > +                case OMAP4460_CONTROL_ID_CODE_ES1_0:
> > +                default:
> > +                        return OMAP4460_ES1_0;
> > +                        break;
> > +                }
> > +                break;
> > +        default:
> > +                return OMAP4430_SILICON_ID_INVALID;
> > +                break;
> >  	}
>
> and here.

  ok, i'll go back and fix and resubmit.

rday

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
