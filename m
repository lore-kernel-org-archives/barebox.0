Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9mHF-0001ry-Fn
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 00:18:31 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id ABA23FF8562
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 02:26:06 +0200 (CEST)
Date: Fri, 7 Sep 2012 02:18:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907001847.GN20330@game.jcrosoft.org>
References: <20120906060058.GE4761@game.jcrosoft.org>
 <20120906160308.GA26594@pengutronix.de>
 <20120906215050.GK20330@game.jcrosoft.org>
 <20120906222559.GK26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120906222559.GK26594@pengutronix.de>
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
Subject: Re: [PATCH 00/12] add PNG support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 00:25 Fri 07 Sep     , Sascha Hauer wrote:
> On Thu, Sep 06, 2012 at 11:50:50PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 18:03 Thu 06 Sep     , Sascha Hauer wrote:
> > > The discussion in this thread makes it clear that there are two problems
> > > with this logo, one technical and one political.
> > > 
> > > The technical problem:
> > > 
> > > From a technical pov it makes no sense to put big image binaries into
> > > the repository when a small svg image would be sufficient to generate
> > > all other images.
> > > 
> > > The political problem:
> > > 
> > > For an open source project a closed image is a no go. We (and by we I
> > > mean we as the community, not we as Pengutronix) must for example be
> > > able to:
> > > 
> > > - generate versions with different colors, sizes, dimensions
> > > - generate a logo without text
> > > - modify the image and to redistribute without limitations
> > > - add a journal to the logo and use it for bwn.org (barebox weekly news) ;)
> > As on Linux, Meego , Mozilla, Coreboot and others Logo are copyrighted and protected
> 
> From http://commons.wikimedia.org/wiki/File:Tux.svg:
> 
> | The copyright holder of this file allows anyone to use it for any
> | purpose, provided that the copyright holder is properly attributed.
> | Redistribution, derivative work, commercial use, and all other use is
> | permitted.
> 
> So the Linux logo can explicitely be modified (derivative work)
> 
> You mentioned that:
> > It's free to USE without modification for the Barebox Project
>                    ^^^^^^^^^^^^^^^^^^^^
> 
> Whereas is coreboot we have (from http://www.coreboot.org/Logo):
> 
> | This logo or a modified version may be used by anyone to refer to the
> | coreboot project
> 
> btw, the mentioned projects do not seem to have a problem with svg
> files:
The logo was designed on Photoshop for the effect

THe basic one I've a svg but not with the whole blur effect that make the logo
nice on black background
> 
> http://upload.wikimedia.org/wikipedia/commons/1/14/MeeGo_logo.svg
> http://commons.wikimedia.org/wiki/File:Tux.svg
> http://upload.wikimedia.org/wikipedia/en/7/74/Mozilla_Foundation_logo.svg
> http://upload.wikimedia.org/wikipedia/de/e/ec/Coreboot_logo.svg
> 
> > 
> > This is a standard for project image protection
> > 
> > Modify the image means the image is not Barebox Logo
> > (Modify in the limit of the Licence)
> 
> Does this mean it can be modified or exactly the opposite?
> 
> Could you send a license text?
The idea is that we can modified in a certain limit

The limit is modified in respect of the Barebox Project and the logo can only be use for
the Barebox project and related

Not to sell shoes or make fun of the project
This is where I DO NOT want to argue about.

The logo is for the barebox project ONLY.

Best Regards,
J.
> 
> Thanks
>  Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
