Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RxGIf-0005L8-Ix
 for barebox@lists.infradead.org; Tue, 14 Feb 2012 11:11:58 +0000
Date: Tue, 14 Feb 2012 12:11:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120214111151.GW3852@pengutronix.de>
References: <1328811868-1000-1-git-send-email-premi@ti.com>
 <20120210122343.GI3852@pengutronix.de>
 <E28AAFD00EFAA646AE3DF9B89CD24A89318431A3@DBDE01.ent.ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A89318431A3@DBDE01.ent.ti.com>
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
Subject: Re: [RFC] omap3evm: Set preliminary environment
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Feb 13, 2012 at 10:16:13AM +0000, Premi, Sanjeev wrote:
> > -----Original Message-----
> > From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> > Sent: Friday, February 10, 2012 5:54 PM
> > To: Premi, Sanjeev
> > Cc: barebox@lists.infradead.org
> > Subject: Re: [RFC] omap3evm: Set preliminary environment
> > 
> > On Thu, Feb 09, 2012 at 11:54:28PM +0530, Sanjeev Premi wrote:
> > > This is still work-in-progress, but wanted to
> > > share them early for any feedback.
> > > 
> > > Signed-off-by: Sanjeev Premi <premi@ti.com>
> > > ---
> > >  I have made offline edits on these scripts before making
> > >  this patch. There is a possibility of run-time failure.
> > > 
> > >  You will also observe many TODOs. Hope to get them sorted
> > >  tomorrow - for a patch worthy of applying on the tree.
> > 
> > You are rewriting what we already have in form of the generic
> > environment. You shouldn't do this, we've been there before.
> > Before there was the generic environment every board had its
> > own set of environment scripts. This resulted in tons of
> > board specific scripts in slightly different states.
> 
> Agree. I didn't want duplication - but was swayed by "FIXME"s
> the barebox/defaultenv and scripts in some of the boards that
> I saw.
> 
> It is possible to override selective variables? e.g.
> 
> machine=FIXME
> bootargs="console=ttyFIXME,115200"
> kernel_part=disk0.2
> 
> Is there an example to refer?

The idea is to just overwrite env/config and keeping the rest from the
default env. There currently is no way to overwrite only single variables.

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
