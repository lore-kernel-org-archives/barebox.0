Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bbi3L-00034Z-Pn
 for barebox@lists.infradead.org; Mon, 22 Aug 2016 05:45:44 +0000
Date: Mon, 22 Aug 2016 07:45:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160822054521.GU20657@pengutronix.de>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
 <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
 <20160818063059.GD20657@pengutronix.de>
 <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABDcavYO3AtqLPuaDwtOfpm4Vs-qazrD8xzC4wu0wrJ8uL5mvw@mail.gmail.com>
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

On Thu, Aug 18, 2016 at 10:02:48AM +0200, Guillermo Rodriguez Garcia wrote:
> Hello,
> 
> 2016-08-18 8:31 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> > Hi,
> >
> > On Tue, Aug 16, 2016 at 10:42:32AM +0200, Guillermo Rodriguez Garcia wrote:
> >> Hello all,
> >>
> >> Currently, for defaultenv v1, the /env/bin/boot_board script is called
> >> from /env/bin/init.
> >>
> >> However this means boot_board will not be run if booting manually (by
> >> running 'boot' from the barebox console).
> >>
> >> Shouldn't this script be called from /env/bin/boot instead? If a board
> >> needs any specific stuff to be done when booting, this probably
> >> applies both when autobooting and when booting manually (otherwise,
> >> anything that only applies only when autobooting could also be done
> >> from init_board instead of boot_board).
> >
> > The only boot_board script we have is
> > arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board. Here a menu is
> > built which I think makes sense at that stage and not at init_board.
> 
> The thing is, if boot_board is called from init, then it will not be
> called if autoboot is interrupted and you later boot manually with the
> boot command.

I think you are right, just go ahead with the suggested change. With
that a menu will be shown on the at91sam9m10g45ek when doing a manual
'boot' which may even be the desired behaviour.

> 
> >
> > However, I would be glad to get rid of defaultenv-1 rather sooner than
> > later.
> 
> Uhm. I actually like defaultenv-1 better than defaultenv-2. Why not
> keep both? Everyone can then make their choice :)

That's interesting. What do you like better about defaultenv-1? This
information could help me to improve defaultenv-2.

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
