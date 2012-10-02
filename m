Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TIyI2-0002SK-Fb
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 08:57:20 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 62915FFC7E8
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 11:06:00 +0200 (CEST)
Date: Tue, 2 Oct 2012 10:54:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121002085447.GW26553@game.jcrosoft.org>
References: <20120926095650.GG31983@game.jcrosoft.org>
 <20120930134749.GN26553@game.jcrosoft.org>
 <20121001181212.GV26553@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121001181212.GV26553@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/6] gui: factorise code
To: barebox@lists.infradead.org

HI,

	can you announce publicy if you now decide to refuse my contribution in
	Barebox

Best Regards,
J.
On 20:12 Mon 01 Oct     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> ping
> On 15:47 Sun 30 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	ping
> > 
> > Best Regards,
> > J.
> > On 11:56 Wed 26 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Hi,
> > > 
> > > The following changes since commit 05b9f24e3ea4071f76ffc4157526946a1c2b1b96:
> > > 
> > >   Merge branch 'for-next/sandbox' into next (2012-09-25 10:20:03 +0200)
> > > 
> > > are available in the git repository at:
> > > 
> > > 
> > >   git://git.jcrosoft.org/barebox.git tags/gui_fbcon_prepare
> > > 
> > > for you to fetch changes up to 267da5665afa3be979cbab2c2787128f4b763f33:
> > > 
> > >   gui: blit the surface on demand (2012-09-26 16:51:11 +0800)
> > > 
> > > ----------------------------------------------------------------
> > > gui: factorise code
> > > 
> > > This patch series move the gui framework to lib/gui and include/gui
> > > and commands to there own menu
> > > 
> > > This also factorise code to handle screen and framebuffer
> > > 
> > > This is a preparation for the framebuffer console support and other gui
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > 
> > > ----------------------------------------------------------------
> > > Jean-Christophe PLAGNIOL-VILLARD (6):
> > >       image_renderer: fix size type
> > >       gui: move gui file to include/gui and lib/gui
> > >       graphic_utils: pass image so we can draw only the visible part of the image
> > >       gui: introduce screen and surface to factorize and simplify code
> > >       graphic_utils: introduce common fb_open/close
> > >       gui: blit the surface on demand
> > > 
> > >  commands/Kconfig                   |   23 +++++++++++++++--------
> > >  commands/splash.c                  |   76 +++++++++++++++++++++++-----------------------------------------------------
> > >  drivers/video/sdl.c                |    2 +-
> > >  include/{ => gui}/graphic_utils.h  |    9 ++++++++-
> > >  include/gui/gui.h                  |   38 ++++++++++++++++++++++++++++++++++++++
> > >  include/gui/image.h                |   20 ++++++++++++++++++++
> > >  include/{ => gui}/image_renderer.h |   25 +++++++------------------
> > >  lib/Kconfig                        |   36 +-----------------------------------
> > >  lib/Makefile                       |    6 +-----
> > >  lib/gui/Kconfig                    |   39 +++++++++++++++++++++++++++++++++++++++
> > >  lib/gui/Makefile                   |    5 +++++
> > >  lib/{ => gui}/bmp.c                |   54 +++++++++++++++++++++++++++---------------------------
> > >  lib/{ => gui}/bmp_layout.h         |    0
> > >  lib/{ => gui}/graphic_utils.c      |   69 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
> > >  lib/{ => gui}/image_renderer.c     |    9 ++++-----
> > >  lib/{ => gui}/lodepng.c            |    0
> > >  lib/{ => gui}/lodepng.h            |    0
> > >  lib/{ => gui}/picopng.c            |    0
> > >  lib/{ => gui}/picopng.h            |    0
> > >  lib/{ => gui}/png.c                |   39 ++++++++++++++++++---------------------
> > >  lib/{ => gui}/png.h                |    0
> > >  lib/{ => gui}/png_lode.c           |    4 ++--
> > >  lib/{ => gui}/png_pico.c           |    4 ++--
> > >  23 files changed, 276 insertions(+), 182 deletions(-)
> > >  rename include/{ => gui}/graphic_utils.h (65%)
> > >  create mode 100644 include/gui/gui.h
> > >  create mode 100644 include/gui/image.h
> > >  rename include/{ => gui}/image_renderer.h (65%)
> > >  create mode 100644 lib/gui/Kconfig
> > >  create mode 100644 lib/gui/Makefile
> > >  rename lib/{ => gui}/bmp.c (69%)
> > >  rename lib/{ => gui}/bmp_layout.h (100%)
> > >  rename lib/{ => gui}/graphic_utils.c (74%)
> > >  rename lib/{ => gui}/image_renderer.c (85%)
> > >  rename lib/{ => gui}/lodepng.c (100%)
> > >  rename lib/{ => gui}/lodepng.h (100%)
> > >  rename lib/{ => gui}/picopng.c (100%)
> > >  rename lib/{ => gui}/picopng.h (100%)
> > >  rename lib/{ => gui}/png.c (60%)
> > >  rename lib/{ => gui}/png.h (100%)
> > >  rename lib/{ => gui}/png_lode.c (96%)
> > >  rename lib/{ => gui}/png_pico.c (96%)
> > > 
> > > Best Regards,
> > > J.
> > > 
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
