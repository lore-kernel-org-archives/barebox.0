Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gezrn-0008IA-RN
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 10:04:45 +0000
Date: Thu, 3 Jan 2019 11:04:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103100440.6fck2c5olsgfi6fd@pengutronix.de>
References: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
 <20181222095656.GA27911@ravnborg.org>
 <33739d90-5710-b9b9-bee9-73f2d0ff1e25@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33739d90-5710-b9b9-bee9-73f2d0ff1e25@rempel-privat.de>
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
Subject: Re: MIPS multiimabe is brocken after "Images: Add image size to
 built images"
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Sam Ravnborg <sam@ravnborg.org>

On Sat, Dec 22, 2018 at 11:00:46AM +0100, Oleksij Rempel wrote:
> Am 22.12.18 um 10:56 schrieb Sam Ravnborg:
> > Hi Oleksij
> > 
> >> i can't build MIPS images after this patch:
> >>
> >> commit 3abeee3e45224c73245e32cb614c241cd195f1c4 (bb/master)
> >> Author: Sascha Hauer <s.hauer@pengutronix.de>
> >> Date:   Mon Dec 17 12:09:23 2018 +0100
> > 
> > Can you elaborate a little what goes wrong.
> > Does the build fail or you cannot boot barebox?
> 
> The build will fail with:
> 
>   OBJCOPYB images/start_black_swift.pblb
>   OBJCOPYB images/start_dptechnics_dpt_module.pblb
>   OBJCOPYB images/start_8devices_lima.pblb
>   OBJCOPYB images/start_tplink_mr3020.pblb
>   OBJCOPYB images/start_tplink_wdr4300.pblb
> invalid magic
> barebox/images/Makefile:68: recipe for target
> 'images/start_black_swift.pblb' failed
> make[1]: *** [images/start_black_swift.pblb] Error 1
> make[1]: *** Waiting for unfinished jobs....
> invalid magic

This is because fix_size is called on the .pblb images and fix_size
is written for ARM and doesn't recognize this as a valid image.

What we can do is to call fix_size with -i (which still causes an error
message, but no error. Would have to patch the error message away
aswell).
Another possibility would be to call fix_size only for builds which
support it (ARM).

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
