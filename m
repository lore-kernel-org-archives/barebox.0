Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9bY3-0004hL-Ck
	for barebox@lists.infradead.org; Sat, 23 Oct 2010 10:42:05 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 23 Oct 2010 12:37:47 +0200
References: <1287766405-1646-1-git-send-email-jbe@pengutronix.de>
	<1287766405-1646-9-git-send-email-jbe@pengutronix.de>
	<20101022185637.GN22139@pengutronix.de>
In-Reply-To: <20101022185637.GN22139@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010231237.47956.jbe@pengutronix.de>
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
Subject: Re: [PATCH 08/11] Add a video driver for S3C2440 bases platforms
To: barebox@lists.infradead.org

Sascha Hauer wrote:
> On Fri, Oct 22, 2010 at 06:53:22PM +0200, Juergen Beisert wrote:
> > From: Juergen Beisert <juergen@kreuzholzen.de>
> >
> > Signed-off-by: Juergen Beisert <juergen@kreuzholzen.de>
> > ---
> >  arch/arm/mach-s3c24xx/include/mach/fb.h |   40 +++
> >  drivers/video/Kconfig                   |    6 +
> >  drivers/video/Makefile                  |    1 +
> >  drivers/video/s3c.c                     |  454
> > +++++++++++++++++++++++++++++++ 4 files changed, 501 insertions(+), 0
> > deletions(-)
> >  create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
> >  create mode 100644 drivers/video/s3c.c
> >
> > diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
> > new file mode 100644
> > index 0000000..cd0f220
> > --- /dev/null
> > +++ b/drivers/video/s3c.c
> > +
> > +/**
> > + * Prepare the video hardware for a specified video mode
> > + * @param fb_info Framebuffer information
> > + * @param mode The video mode description to initialize
> > + * @return 0 on success
> > + *
> > + * FIXME Diese Routine darf die Pinx nach drau?en nicht aktivieren. Zur
> > Zeit macht sie das!
>
> You should at least translate this to english ;)

Sure, I already removed this sentence in my local patch stack... :-)

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
