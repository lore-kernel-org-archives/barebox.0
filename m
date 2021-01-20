Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2B85-0003fw-5v
 for barebox@lists.infradead.org; Wed, 20 Jan 2021 10:54:26 +0000
Date: Wed, 20 Jan 2021 11:54:22 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20210120105422.zpizm7bet22ze4dq@pengutronix.de>
References: <20210118204850.8420-1-m.felsch@pengutronix.de>
 <20210119110134.GX19063@pengutronix.de>
 <20210119114208.6kxdsj5pa5zo25qo@pengutronix.de>
 <20210120090321.GY19063@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210120090321.GY19063@pengutronix.de>
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
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 21-01-20 10:03, Sascha Hauer wrote:
> On Tue, Jan 19, 2021 at 12:42:08PM +0100, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 21-01-19 12:01, Sascha Hauer wrote:
> > > Hi Marco,
> > > On Mon, Jan 18, 2021 at 09:48:49PM +0100, Marco Felsch wrote:
> > > > This commit adds the support to overwrite and/or adapt blspec config
> > > > files by the following global variables:
> > > >   - global.blspec.fixup.devicetree
> > > >   - global.blspec.fixup.initrd
> > > >   - global.blspec.fixup.options
> > > >   - global.blspec.fixup.linux
> > > >   - global.blspec.fixup.devicetree-overlay.
> > > > 
> > > > Overwriting blspec-config's shouldn't be the normal case but there are
> > > > cases where this support is needed. One use-case can be a special
> > > > handling during update. E.g. the normal boot-flow don't need the initrd
> > > > but the update-flow uses it because the update system is on the initrd.
> > > 
> > > When you have an update system and a regular system on the same
> > > filesystem then I would expect an additional bootspec entry for the
> > > update system.
> > 
> > AFAIK, barebox tries to find the correct entry by checking all config
> > files and loads the first matching config file. Is there a way to
> > specify an explicite config file?
> 
> Not yet, but maybe we are at a point where a way should be added.

Maybe but how do you decide it? Also IMHO this wouldn't be that flexible
as this solution.

> > 
> > > > Another use-case could be a dynamic devicetree-overlay handling. E.g.
> > > > the board code dynamically checks which periphery boards are connected
> > > > and adds the required overlays dynamically.
> > > 
> > > Board code can register overlays already, there's no need for bootspec
> > > to do that.
> > 
> > But this needs a lot more handling if we boot from nfs or from emmc.
> > Therefore I utilized the already existing code :)
> 
> I'm not sure I understand you correctly. You probably mean that you have
> to decide which overlay to use when the path to the rootfs is already
> known, right?

Hopefully I get it right. What I mean is that the blspec code already
determines the correct boot medium and all blspec entries are relative
to this boot medium. Therefore I love it since booting a device behaves
the same for nfs or emmc :)

So yes, you're right :)

> > > Overall overwriting bootspec variables somewhat contradicts the whole
> > > purpose of bootspec. I don't like that very much, so you'll need very
> > > good reasons to get this through ;)
> > 
> > Yep, I thought so ;) Therefore I wrote a big warning. It gives you a lot
> > opportunities to shot yourself in the foot. Therefore I print a warning
> > if you overwrite a already exisiting config.
> 
> Your code shouldn't issue a warning when it's exactly used like
> intended. A warning tells people they are doing something wrong, but in
> this case they are doing everything correctly, so they might be tempted
> to just patch the warning away.

Mh.. The blspec config shouldn't contain any dynamic entry, therefore I
added the warning. E.g. on my system we check for the connected daughter
boards and add the devicetree-overlay entry. The original blspec-config
file don't have a entry for it.

Regards,
  Marco

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
