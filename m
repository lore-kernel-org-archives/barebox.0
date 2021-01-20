Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2Ce9-0000Ol-Lw
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 12:31:38 +0000
Date: Wed, 20 Jan 2021 13:31:33 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20210120123133.GY9321@pengutronix.de>
References: <20210118204850.8420-1-m.felsch@pengutronix.de>
 <20210119110134.GX19063@pengutronix.de>
 <20210119114208.6kxdsj5pa5zo25qo@pengutronix.de>
 <20210120090321.GY19063@pengutronix.de>
 <20210120105422.zpizm7bet22ze4dq@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120105422.zpizm7bet22ze4dq@pengutronix.de>
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
Subject: Re: [PATCH 1/2] blspec: allow board files to overwrite config file
 settings
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Sascha Hauer <sha@pengutronix.de>

On Wed, Jan 20, 2021 at 11:54:22AM +0100, Marco Felsch wrote:
> On 21-01-20 10:03, Sascha Hauer wrote:
> > On Tue, Jan 19, 2021 at 12:42:08PM +0100, Marco Felsch wrote:
> > > Hi Sascha,
> > > 
> > > On 21-01-19 12:01, Sascha Hauer wrote:
> > > > Hi Marco,
> > > > On Mon, Jan 18, 2021 at 09:48:49PM +0100, Marco Felsch wrote:
> > > > > This commit adds the support to overwrite and/or adapt blspec config
> > > > > files by the following global variables:
> > > > >   - global.blspec.fixup.devicetree
> > > > >   - global.blspec.fixup.initrd
> > > > >   - global.blspec.fixup.options
> > > > >   - global.blspec.fixup.linux
> > > > >   - global.blspec.fixup.devicetree-overlay.
> > > > > 
> > > > > Overwriting blspec-config's shouldn't be the normal case but there are
> > > > > cases where this support is needed. One use-case can be a special
> > > > > handling during update. E.g. the normal boot-flow don't need the initrd
> > > > > but the update-flow uses it because the update system is on the initrd.
> > > > 
> > > > When you have an update system and a regular system on the same
> > > > filesystem then I would expect an additional bootspec entry for the
> > > > update system.
> > > 
> > > AFAIK, barebox tries to find the correct entry by checking all config
> > > files and loads the first matching config file. Is there a way to
> > > specify an explicite config file?
> > 
> > Not yet, but maybe we are at a point where a way should be added.
> 
> Maybe but how do you decide it? Also IMHO this wouldn't be that flexible
> as this solution.

Maybe allow globing?

So I can say I want to boot 'default.conf' and create that as a symlink in
the filesystem. That would be for the desktop use-case with multiple kernel
versions.

Or I could switch between '*-regular.conf' and '*-update.conf'. And then
provide two entries for each device-tree.

Michael


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
