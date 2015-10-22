Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZpKw4-0008W7-TC
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 18:50:02 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 22 Oct 2015 18:48:54 +0000
Message-ID: <1445539740.13196.171.camel@rtred1test09.kymetacorp.com>
References: <1445377655.13196.99.camel@rtred1test09.kymetacorp.com>
 <20151021060123.GW14476@pengutronix.de>
 <1445450956.13196.120.camel@rtred1test09.kymetacorp.com>
 <20151022070627.GH14476@pengutronix.de>
In-Reply-To: <20151022070627.GH14476@pengutronix.de>
Content-Language: en-US
Content-ID: <49292E54A077AC4EB57111D510753379@kymetacorp.com>
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

On Thu, 2015-10-22 at 09:06 +0200, Sascha Hauer wrote:
> > > > It only works when a single image is made.  If one is making multiple
> > > > images, then the concept of a single finished image no longer applies,
> > > > and no link is made.
> > > 
> > > Can't you make the image a config option in buildroot? Depending on only
> > > having a single image selected in barebox doesn't sound like a good
> > > idea.
> > 
> > buildroot doesn't have an option that for that.  It uses
> > barebox-flash-image if it exists and then falls back to barebox.bin.
> > The latter will still exist in a multi-image build, but is not the
> > correct file!
> > 
> > My first thought was to add an option to buildroot for the name of the
> > flash image file.  But barebox is the one choosing this name and it
> > knows what it is.  So why should I have to manually copy this data out
> > of barebox and into buildroot and keep to up to date when it chages?
> > Barebox knows the value, have it tell buildroot what it is.  And there
> > is already the barebox-flash-image symlink system that does just this.
> > This way buildroot (and any other buildsystem or flash or test script
> > that uses a barebox image) gets told what file to use straight from the
> > authoritative source: the barebox build system that made the file.
> > 
> > So, that's why I did it this way.  And it's not like I'm adding a new
> > feature for this, just making an existing one work in more cases that it
> > did before.
> 
> Yes, it works in more cases, but not in all. With your patch it works
> exactly in the case when one board is selected. Once you intentionally
> or by accident enable another board then buildroot would silently fall
> back to barebox.bin and nothing works anymore. Some images do not even
> have a separate config option, for example there are three nitrogen 6x
> images which are all controlled by the CONFIG_MACH_NITROGEN6X option.
> 
> Applying a band aid solution only lowers the pressure to do the
> necessary changes in buildroot. I am not a fan of this.

So should the existing support for barebox-flash-image for
non-multi-image boards be removed too?  If they switch a multi-image
based build, even if they support only one image, the link goes away as
you described above and one has the same problem.

And putting an option into barebox (and also every other script or
system that wants to do something with the barebox flash image), still
has the problem of duplicating information.  It's like putting an
identical #define in two C files instead of in one header that both use.
Barebox chose the image name, why not have it provide that information
automatically?

For instance, I have a script that puts barebox on an SD card.  I have
multiple different barebox builds for different devices.  I can point
the script at the barebox output dir and it can tell, because barebox
provides that information, what image file it needs to flash even
through the name isn't the same for the different builds.


What if, in the case of multiple images, the link is still made, but
points to a non-existent location like
"multiple-flash-images-generated".  That way anyone using the link will
get an error and know they need to come up with a different plan.  Like
not building multiple images when they only want one.

Another alternative would be to create a file that lists the images
generated one per line, like the final make output that lists them to
stdout.  Then the image name(s) could be retrieved automatically even in
the case of multiple images.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
