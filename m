Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoxqJ-0005sk-LF
 for barebox@lists.infradead.org; Wed, 21 Oct 2015 18:10:32 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 21 Oct 2015 18:09:10 +0000
Message-ID: <1445450956.13196.120.camel@rtred1test09.kymetacorp.com>
References: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
 <20151021060123.GW14476@pengutronix.de>
In-Reply-To: <20151021060123.GW14476@pengutronix.de>
Content-Language: en-US
Content-ID: <50137290AD167F40BB40DA252025BB6B@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Make barebox flashable image link for "multi-image"
 targets
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2015-10-21 at 08:01 +0200, Sascha Hauer wrote:
> On Tue, Oct 20, 2015 at 09:47:30PM +0000, Trent Piepho wrote:
> > For a target with multi-image support, no barebox-flash-image link is
> > made pointing to the finished flashable image.  This makes it hard for
> > buildroot to figure out which file is the barebox image.  And one has
> > to assume this link is generally useful and convenient to users of
> > barebox, or why would it have been created in the first place?
> 
> Creating the barebox-flash-image link predates the multiimage support,
> so by the time it was introduced it was not clear to me that there will
> be no single image later anymore.

I imagine having multiple images is used far more often by developers of
barebox than developers of a device that uses barebox.  So I wouldn't
say the concept of a single image is dead.

> > 
> > This patch to the multi-image build will create that link.
> > 
> > It only works when a single image is made.  If one is making multiple
> > images, then the concept of a single finished image no longer applies,
> > and no link is made.
> 
> Can't you make the image a config option in buildroot? Depending on only
> having a single image selected in barebox doesn't sound like a good
> idea.

buildroot doesn't have an option that for that.  It uses
barebox-flash-image if it exists and then falls back to barebox.bin.
The latter will still exist in a multi-image build, but is not the
correct file!

My first thought was to add an option to buildroot for the name of the
flash image file.  But barebox is the one choosing this name and it
knows what it is.  So why should I have to manually copy this data out
of barebox and into buildroot and keep to up to date when it chages?
Barebox knows the value, have it tell buildroot what it is.  And there
is already the barebox-flash-image symlink system that does just this.
This way buildroot (and any other buildsystem or flash or test script
that uses a barebox image) gets told what file to use straight from the
authoritative source: the barebox build system that made the file.

So, that's why I did it this way.  And it's not like I'm adding a new
feature for this, just making an existing one work in more cases that it
did before.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
