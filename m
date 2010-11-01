Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCuIf-0003zb-3U
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 13:19:50 +0000
Date: Mon, 1 Nov 2010 14:19:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101101131946.GW6017@pengutronix.de>
References: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1288092708-5187-1-git-send-email-jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2] Add dynamic video initialization to barebox
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Tue, Oct 26, 2010 at 01:31:36PM +0200, Juergen Beisert wrote:
> Currently barebox uses a fixed videomode setup. Everything is compiled in.
> This change adds the possibility to select a videomode according to a
> connected display at runtime. The current behaviour is still present if n=
ot
> otherwise configured. If configured for runtime setup, initialization of =
the
> video hardware will be delayed until the required videomode will be selec=
ted
> from the shell code. If more than one videomode is supported by the platf=
orm,
> running the 'devinfo' command on the framebuffer device shows the support=
ed
> videomode list. After selecting the videomode, the output can be enabled.
>

General remarks about this series:

- Please do not add code with '#if 0' and activate it later. This shows
  the series has the wrong order.
- Please refrain from basing your internal functions around 'struct
  device_d'. By doing so we completey lose type safety and at least in
  case of the mci framework where three different devices are involved
  this leads to unreadable and error prone code. The framebuffer
  code should be based around struct fb_info.
- Please keep the line lengths within sensible limits.
- Get rid of CONFIG_VIDEO_DELAY_INIT and make the mode runtime
  changeable. All this requires is a
  host->fb_disable(info); host->fb_mode(info, newmode); host->fb_enable(mod=
e);

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
