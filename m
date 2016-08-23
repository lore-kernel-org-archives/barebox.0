Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bc6q7-00031Q-5K
 for barebox@lists.infradead.org; Tue, 23 Aug 2016 08:13:44 +0000
Date: Tue, 23 Aug 2016 10:13:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160823081319.GD20657@pengutronix.de>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
 <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
 <20160818063059.GD20657@pengutronix.de>
 <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
 <20160822054521.GU20657@pengutronix.de>
 <CABDcavb3DN9Hc-Gr-vYG6aPHBgMYhM__4BzxVAjEqp5MdhB6qA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavb3DN9Hc-Gr-vYG6aPHBgMYhM__4BzxVAjEqp5MdhB6qA@mail.gmail.com>
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

On Mon, Aug 22, 2016 at 11:12:55AM +0200, Guillermo Rodriguez Garcia wrote:
> >> > However, I would be glad to get rid of defaultenv-1 rather sooner than
> >> > later.
> >>
> >> Uhm. I actually like defaultenv-1 better than defaultenv-2. Why not
> >> keep both? Everyone can then make their choice :)
> >
> > That's interesting. What do you like better about defaultenv-1? This
> > information could help me to improve defaultenv-2.
> 
> I guess it is just a matter of personal preference but I find
> defaultenv-1 easier to understand and easier to manage. With
> defaultenv-1 we basically have just one configuration file to edit
> (/env/config) and optionally init_board and/or boot_board (which are
> not needed in a majority of the cases). So everything you need to
> know/edit/tweak is in /env/config.
> 
> With defaultenv-2 the "board configuration" is scattered through a
> number of tiny files, some of which contain just a single value (see
> for example nv/autoboot_timeout or nv/user). I find this more
> difficult to manage -- you need to edit a lot of tiny files instead of
> just one. Also I feel that the flow of control is less obvious for the
> same reason.
> 
> I'd say defaultenv-1 feels more "imperative" and defaultenv-2 feels
> more "declarative", and I prefer the former. But I am fully aware that
> this is just a matter of personal preference :)

I understand your concerns but do not share them all. Maybe we can find
a way to either make defaultenv-2 more acceptable for you or to make
defaultenv-1 more appealing to me?

About the number of small files that only contain a single value:
defaultenv-1 was the opposite and that was a problem. Whenever a board
wanted to adjust a single value, say the autoboot timeout, it had to
duplicate a big file and very soon we had many nearly identical copies
of that file and nobody knew what the actual change was. With NV
variables this has become better. I never felt the need though to dig
through the individual /env/nv files, here the 'nv' and 'global'
commands or the 'magicvar' command to much better jobs. Normally you
only have to hand edit /env/nv files when you want to change the default
of a variable for a given board.

Another thing that made another approach than with defaultenv-1
necessary was the variables that contain "net", "disk", "nor", "nand".
This did not scale and was not extensible because you could not pass
some arbitrary file and use it as kernel.

I wonder if defaultenv-1 is not customizable enough and on the other
hand your board does only boot from very special locations, do you need
a generic default environment at all or are you better off using your
own special environment?

Finally, could this be a documentation issue? Could you have another
look at defaultenv-2 and see what is not clear or what needs further
convenience to be better usable?

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
