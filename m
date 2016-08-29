Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1beGei-0007Tp-Nu
 for barebox@lists.infradead.org; Mon, 29 Aug 2016 07:06:54 +0000
Date: Mon, 29 Aug 2016 09:06:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160829070628.w2jfmi2olokemly3@pengutronix.de>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
 <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
 <20160818063059.GD20657@pengutronix.de>
 <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
 <20160822054521.GU20657@pengutronix.de>
 <CABDcavb3DN9Hc-Gr-vYG6aPHBgMYhM__4BzxVAjEqp5MdhB6qA@mail.gmail.com>
 <20160823081319.GD20657@pengutronix.de>
 <CABDcavaN3ZV6bYVkBs_i4emasduzxVWX3b4k=MwMafeCYU8KaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavaN3ZV6bYVkBs_i4emasduzxVWX3b4k=MwMafeCYU8KaA@mail.gmail.com>
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
Subject: Re: Fwd: Shouldn't boot_board be called from boot instead of init?
To: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 24, 2016 at 04:42:42PM +0200, Guillermo Rodriguez Garcia wrote:
> Hi Sascha,
> 
> 2016-08-23 10:13 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > On Mon, Aug 22, 2016 at 11:12:55AM +0200, Guillermo Rodriguez Garcia wrote:
> >> >> > However, I would be glad to get rid of defaultenv-1 rather sooner than
> >> >> > later.
> >> >>
> >> >> Uhm. I actually like defaultenv-1 better than defaultenv-2. Why not
> >> >> keep both? Everyone can then make their choice :)
> >> >
> >> > That's interesting. What do you like better about defaultenv-1? This
> >> > information could help me to improve defaultenv-2.
> >>
> >> I guess it is just a matter of personal preference but I find
> >> defaultenv-1 easier to understand and easier to manage. With
> >> defaultenv-1 we basically have just one configuration file to edit
> >> (/env/config) and optionally init_board and/or boot_board (which are
> >> not needed in a majority of the cases). So everything you need to
> >> know/edit/tweak is in /env/config.
> >>
> >> With defaultenv-2 the "board configuration" is scattered through a
> >> number of tiny files, some of which contain just a single value (see
> >> for example nv/autoboot_timeout or nv/user). I find this more
> >> difficult to manage -- you need to edit a lot of tiny files instead of
> >> just one. Also I feel that the flow of control is less obvious for the
> >> same reason.
> >>
> >> I'd say defaultenv-1 feels more "imperative" and defaultenv-2 feels
> >> more "declarative", and I prefer the former. But I am fully aware that
> >> this is just a matter of personal preference :)
> >
> > I understand your concerns but do not share them all. Maybe we can find
> > a way to either make defaultenv-2 more acceptable for you or to make
> > defaultenv-1 more appealing to me?
> >
> > About the number of small files that only contain a single value:
> > defaultenv-1 was the opposite and that was a problem. Whenever a board
> > wanted to adjust a single value, say the autoboot timeout, it had to
> > duplicate a big file and very soon we had many nearly identical copies
> > of that file and nobody knew what the actual change was.
> 
> Not sure what you mean with duplicating a big file. With defaultenv-1 most
> of the time the only single file you need to edit is /env/config, which is quite
> small, and most of it should be board specific anyway. I find this (the fact
> that all I need to edit/tweak is in that single file) quite convenient.
> 
> > With NV
> > variables this has become better. I never felt the need though to dig
> > through the individual /env/nv files, here the 'nv' and 'global'
> > commands or the 'magicvar' command to much better jobs. Normally you
> > only have to hand edit /env/nv files when you want to change the default
> > of a variable for a given board.
> >
> > Another thing that made another approach than with defaultenv-1
> > necessary was the variables that contain "net", "disk", "nor", "nand".
> > This did not scale and was not extensible because you could not pass
> > some arbitrary file and use it as kernel.
> 
> I can understand that one. But on the other hand not every target needs
> that flexibility. That's why I said that I don't see the need to drop
> defaultenv-1.
> Isn't it better to leave both defaultenv-1 and defaultenv-2 alive and
> let everyone
> decide which one suits them best?
> 
> My impression when I look at defaultenv-2 is as described above: OK,
> more flexibility (which I currently don't need), but also more complexity,
> configuration scattered over more files, more management overhead.
> Plus, I'm happy with defaultenv-1, so why change?
> 
> >
> > I wonder if defaultenv-1 is not customizable enough and on the other
> > hand your board does only boot from very special locations, do you need
> > a generic default environment at all or are you better off using your
> > own special environment?
> 
> In my case, I am currently using barebox on 3 boards. All of them support
> multiple boot sources (NAND, NOR, MMC) plus NFS. For all of them I only
> needed to edit /env/config; the other files in the default environment
> (init, update, boot) all work fine. So (for me) defaultenv-1 was customizable
> enough, and I did indeed benefit from having a generic default environment
> instead of a custom one written from scratch.
> 
> >
> > Finally, could this be a documentation issue? Could you have another
> > look at defaultenv-2 and see what is not clear or what needs further
> > convenience to be better usable?
> 
> I think the documentation is fine as a reference. Perhaps a tutorial showing
> how to migrate from defaultenv-1 to defaultenv-2 could help "convert" people
> to defaultenv-2 by holding their hand and taking them from what they know
> (defaultenv-1) to the "new stuff".
> 
> But even then I still wonder -- why not let both approaches coexist?

It's my interest to keep the diversion between boards small. Normally
as a barebox user you shouldn't care about the particular type of the
board you have, instead it should always feel the same (Or, if you
decide to customize barebox via Kconfig or patches, it should be
applyable for all boards without having to repeat this step for every
board you use in the future). defaultenv-1 make this goal hard to
archieve. Most boards only copy and modify /env/config, but some also
duplicate /env/boot and other files. /env/boot is problematic because
it contains behaviour, not configuration. With each duplication we
introduce a new behaviour which means that this board beahves different
from the rest of the boards and also won't get updates from the generic
/env/boot file anymore.
This all is not problematic when you only care about one board or a few
boards that you use, but is a nightmare when you have > 100 boards
from which you only have access to a few of them. defaultenv-2 is better
in this regard since we can do adjustments without changing other things
and it generally needs less adjustments.

I think it's not really defaultenv-1 that disturbs me, but more the
in-tree users of it. Also it's not really nice that by choosing a board
you also choose between defaultenv-1 and defaultenv-2. It would be much
nicer if these choices were independent.

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
