Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9bY2-0004hJ-QJ
	for barebox@lists.infradead.org; Sat, 23 Oct 2010 10:42:04 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 23 Oct 2010 12:35:07 +0200
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-4-git-send-email-jbe@pengutronix.de>
	<20101022174109.GF22139@pengutronix.de>
In-Reply-To: <20101022174109.GF22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010231235.07819.jbe@pengutronix.de>
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
Subject: Re: [PATCH 03/11] Bring in dynamic videomode selection at runtime
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Oct 22, 2010 at 06:53:17PM +0200, Juergen Beisert wrote:
> > This patch mostly rewrites all parts of /drivers/video/fb.c. As it
> > changes the API to the drivers, it must be done in one step to keep the
> > repository bisectable. But to do it in one step makes the patches itself
> > unreadable.
> >
> > So, I decided to do it in a few steps, only for the review. All patches
> > marked with a "step n of m" should be merged, prior the final commit into
> > the repository.
> >
> > This step brings in the required functions for dynamic videomode
> > selection at runtime, but keep the old functions untouched (the new ones
> > are commented out).
> >
> > This is patch 1 of 7 to keep the repository bisectable.
> >
> > Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
> > ---
> >  drivers/video/Kconfig |   23 +++++
> >  drivers/video/fb.c    |  251
> > +++++++++++++++++++++++++++++++++++++++++++++++++ include/fb.h          |
> >   40 ++++++++
> >  3 files changed, 314 insertions(+), 0 deletions(-)
> >
> > diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> > index 7a89a3f..e6ecfc8 100644
> > --- a/drivers/video/Kconfig
> > +++ b/drivers/video/Kconfig
> > @@ -5,6 +5,29 @@ menuconfig VIDEO
> >
> >  if VIDEO
> >
> > +comment "runtime options"
> > +
> > +config VIDEO_DELAY_ENABLING
> > +	bool "Delayed enabling"
> > +	help
> > +	  Say 'y' here to delay enabling video output. This is useful to first
> > +	  fill the framebuffer (splash screen for example) prior enabling the
> > +	  video device.
> > +          This entry adds the "enable" parameter to the video device, to
> > enable +	  or disable video output at runtime.
> > +
> > +config VIDEO_DELAY_INIT
> > +	bool "Delayed initialization"
> > +	select VIDEO_DELAY_ENABLING
> > +	help
> > +	  If the platform supports more than one video mode say 'y' her to
> > delay +	  the initialization of the video device until any kind of
> > barebox's +          shell code sets up the correct mode at runtime.
> > +          This entry adds the "mode" parameter to the video device, to
> > setup +          the desired videomode prior enabling it at runtime.
>
> I think the framebuffers should *never* be activated by the setup code
> and should be explicitely initialized by doing a 'fb0.enable=1' on the
> command line.

Okay. It "should not" is a new policy to barebox. Currently the framebuffer is 
activated immediately (except the platforms you changed already). I just 
wanted to keep this behaviour.

> This way we have the most flexibility. We can enable 
> the framebuffer when we actually need it, we can draw a splash screen
> before enabling it so that we do not have a black screen before we draw
> an image. Also, the environment can decide to leave the framebuffer
> disabled because the kernel will draw another screen a second later. If
> necessary, the environemt can do a fb0.display="sharp-whatever" before
> activating it. And we do not need any kconfig options for this.

Okay. We can change the default behaviour for all platforms using graphic in 
this way. I will try to include it in the next series.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
