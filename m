Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPWN1-0008J8-3Q
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 12:10:20 +0000
Date: Mon, 17 Mar 2014 13:09:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317120956.GV24917@pengutronix.de>
References: <CF4C8000.DD58%ivor@veriline.co.za>
 <CF4C8306.DD5F%ivor@veriline.co.za>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CF4C8306.DD5F%ivor@veriline.co.za>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: GPIO setting
To: Ivor Kruger <ivor@veriline.co.za>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Mar 17, 2014 at 10:47:06AM +0200, Ivor Kruger wrote:
> Hi, sure this is a quick and easy question for the group=8A
> =

> On the OMAP4430, using the command from within barebox prompt to configure
> a GPIO for testing hardware:
> =

> gpio_direction_output 140 0
> =

> Should this be sufficient to set the gpio pin low, or is it required to
> still do some pin muxing as well?

The gpio functions only configure the gpio controller. If this pin is
not gpio by default, you have to configure the pinmux controller aswell.
There is no way to do that on the barebox commandline other than direct reg=
ister
writes to the pinmux controller.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
