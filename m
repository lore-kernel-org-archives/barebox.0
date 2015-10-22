Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp9xb-00040r-SH
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 07:06:53 +0000
Date: Thu, 22 Oct 2015 09:06:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151022070627.GH14476@pengutronix.de>
References: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
 <20151021060123.GW14476@pengutronix.de>
 <1445450956.13196.120.camel@rtred1test09.kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1445450956.13196.120.camel@rtred1test09.kymetacorp.com>
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
Subject: Re: [PATCH] Make barebox flashable image link for "multi-image"
 targets
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Oct 21, 2015 at 06:09:10PM +0000, Trent Piepho wrote:
> On Wed, 2015-10-21 at 08:01 +0200, Sascha Hauer wrote:
> > On Tue, Oct 20, 2015 at 09:47:30PM +0000, Trent Piepho wrote:
> > > For a target with multi-image support, no barebox-flash-image link is
> > > made pointing to the finished flashable image.  This makes it hard for
> > > buildroot to figure out which file is the barebox image.  And one has
> > > to assume this link is generally useful and convenient to users of
> > > barebox, or why would it have been created in the first place?
> > 
> > Creating the barebox-flash-image link predates the multiimage support,
> > so by the time it was introduced it was not clear to me that there will
> > be no single image later anymore.
> 
> I imagine having multiple images is used far more often by developers of
> barebox than developers of a device that uses barebox.  So I wouldn't
> say the concept of a single image is dead.

Nope, it's not.

> 
> > > 
> > > This patch to the multi-image build will create that link.
> > > 
> > > It only works when a single image is made.  If one is making multiple
> > > images, then the concept of a single finished image no longer applies,
> > > and no link is made.
> > 
> > Can't you make the image a config option in buildroot? Depending on only
> > having a single image selected in barebox doesn't sound like a good
> > idea.
> 
> buildroot doesn't have an option that for that.  It uses
> barebox-flash-image if it exists and then falls back to barebox.bin.
> The latter will still exist in a multi-image build, but is not the
> correct file!
> 
> My first thought was to add an option to buildroot for the name of the
> flash image file.  But barebox is the one choosing this name and it
> knows what it is.  So why should I have to manually copy this data out
> of barebox and into buildroot and keep to up to date when it chages?
> Barebox knows the value, have it tell buildroot what it is.  And there
> is already the barebox-flash-image symlink system that does just this.
> This way buildroot (and any other buildsystem or flash or test script
> that uses a barebox image) gets told what file to use straight from the
> authoritative source: the barebox build system that made the file.
> 
> So, that's why I did it this way.  And it's not like I'm adding a new
> feature for this, just making an existing one work in more cases that it
> did before.

Yes, it works in more cases, but not in all. With your patch it works
exactly in the case when one board is selected. Once you intentionally
or by accident enable another board then buildroot would silently fall
back to barebox.bin and nothing works anymore. Some images do not even
have a separate config option, for example there are three nitrogen 6x
images which are all controlled by the CONFIG_MACH_NITROGEN6X option.

Applying a band aid solution only lowers the pressure to do the
necessary changes in buildroot. I am not a fan of this.

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
