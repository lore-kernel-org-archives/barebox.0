Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp484.redcondor.net ([208.80.204.84])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7M7Z-0000Bj-Q7
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 11:44:23 +0000
Date: Fri, 11 Dec 2015 06:43:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20151211070330.GP11966@pengutronix.de>
Message-ID: <alpine.LFD.2.20.1512110643001.4943@localhost>
References: <alpine.LFD.2.20.1512101025310.13554@localhost>
 <20151211070330.GP11966@pengutronix.de>
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
Subject: Re: "make distclean" leaves a pile of arch/arm/dts/*.lzo files
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox mailing list <barebox@lists.infradead.org>

On Fri, 11 Dec 2015, Sascha Hauer wrote:

> Hi Robert,
>
> On Thu, Dec 10, 2015 at 10:28:18AM -0500, Robert P. J. Day wrote:
> >
> >   just did a configure and build for a beaglebone black, then ran
> > "make distclean" and ...
> >
> > $ git status --ignored
> > On branch master
> > Your branch is up-to-date with 'origin/master'.
> > Ignored files:
> >   (use "git add -f <file>..." to include in what will be committed)
> >
> > 	arch/arm/dts/am335x-afi-gf.dtb.lzo
> > 	arch/arm/dts/am335x-bone-common.dtb.lzo
> > 	arch/arm/dts/am335x-bone.dtb.lzo
> > 	arch/arm/dts/am335x-boneblack.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycard-som-mlo.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycard-som.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycore-som-mlo.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycore-som-no-eeprom.dtb.lzo
> >         arch/arm/dts/am335x-phytec-phycore-som-no-spi-no-eeprom.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycore-som-no-spi.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phycore-som.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phyflex-som-mlo.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phyflex-som-no-eeprom.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phyflex-som-no-spi-no-eeprom.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phyflex-som-no-spi.dtb.lzo
> > 	arch/arm/dts/am335x-phytec-phyflex-som.dtb.lzo
> > 	barebox-flash-images
> >
> > nothing to commit, working directory clean
> > $
> >
> >   so i'm guessing building for other targets will also leave .lzo
> > files lying around.
>
> Added the following patch, this should fix this issue. Thanks for
> noting.

  what about that last line, "barebox-flash-images"? should that also
be cleaned out?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
