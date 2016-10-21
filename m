Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxThk-00087Z-JV
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 06:53:25 +0000
Date: Fri, 21 Oct 2016 08:53:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161021065302.kgbeqbzl36qk7aya@pengutronix.de>
References: <20161004101048.12970-1-ejo@pengutronix.de>
 <20161004101048.12970-4-ejo@pengutronix.de>
 <20161004194020.vmmm35546csmbvnv@pengutronix.de>
 <CAGm1_ksWRAVPV3JSzxZvap_B=O7oUFw7CV93druAFF8ZGir4Og@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksWRAVPV3JSzxZvap_B=O7oUFw7CV93druAFF8ZGir4Og@mail.gmail.com>
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
Subject: Re: [PATCH 3/5] fs: squashfs: port zlib compression support from
 kernel
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>, Enrico Jorns <ejo@pengutronix.de>

On Fri, Oct 21, 2016 at 08:04:35AM +0200, Yegor Yefremov wrote:
> Hi Enrico,
> 
> On Tue, Oct 4, 2016 at 9:40 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > On Tue, Oct 04, 2016 at 12:10:46PM +0200, Enrico Jorns wrote:
> >> As this is the default compression method for squashfs, make this the
> >> default in kconfig selection, too
> >>
> >> Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
> >> ---
> >>  fs/squashfs/Kconfig        |  20 ++++++-
> >>  fs/squashfs/Makefile       |   1 +
> >>  fs/squashfs/zlib_wrapper.c | 132 +++++++++++++++++++++++++++++++++++++++++++++
> >>  3 files changed, 152 insertions(+), 1 deletion(-)
> >>  create mode 100644 fs/squashfs/zlib_wrapper.c
> >>
> >> diff --git a/fs/squashfs/Kconfig b/fs/squashfs/Kconfig
> >> index d2de168..1cb1ac5 100644
> >> --- a/fs/squashfs/Kconfig
> >> +++ b/fs/squashfs/Kconfig
> >> @@ -17,6 +17,19 @@ menuconfig FS_SQUASHFS
> >>         embedded systems where low overhead is needed.  Further information
> >>         and tools are available from http://squashfs.sourceforge.net.
> >>
> >> +config SQUASHFS_ZLIB
> >> +     bool "Include support for ZLIB compressed file systems"
> >> +     depends on FS_SQUASHFS
> >> +     select ZLIB
> >> +     default y
> >> +     help
> >> +       ZLIB compression is the standard compression used by Squashfs
> >> +       file systems.  It offers a good trade-off between compression
> >> +       achieved and the amount of CPU time and memory necessary to
> >> +       compress and decompress.
> >> +
> >> +       If unsure, say Y.
> >> +
> >>  config SQUASHFS_LZ4
> >>       bool "Include support for LZ4 compressed file systems"
> >>       depends on FS_SQUASHFS
> >> @@ -30,9 +43,10 @@ config SQUASHFS_LZ4
> >>         LZ4 is not the standard compression used in Squashfs and so most
> >>         file systems will be readable without selecting this option.
> >>
> >> +       If unsure, say N.
> >> +
> >>  config SQUASHFS_LZO
> >>       bool "Include support for LZO compressed file systems"
> >> -     default y
> >>       depends on FS_SQUASHFS
> >>       select LZO_DECOMPRESS
> >>       help
> >> @@ -44,6 +58,8 @@ config SQUASHFS_LZO
> >>         LZO is not the standard compression used in Squashfs and so most
> >>         file systems will be readable without selecting this option.
> >>
> >> +       If unsure, say N.
> >> +
> >>  config SQUASHFS_XZ
> >>       bool "Include support for XZ compressed file systems"
> >>       default y
> >> @@ -57,3 +73,5 @@ config SQUASHFS_XZ
> >>
> >>         XZ is not the standard compression used in Squashfs and so most
> >>         file systems will be readable without selecting this option.
> >> +
> >> +       If unsure, say N.
> >
> > Here unrelated Kconfig entries are changed. Also in the end we get
> > "default y" for SQUASHFS_XZ along with the help "If unsure, say N."
> > which seems inconsistent.
> 
> Care to send v2?

Enrico is on holiday, so I just did.

> 
> @Sascha what is the plan as to the default compression selection?
> Leave XZ or set it to ZLIB? I'm open for both options.

In the new series I enabled zlib as default since this is what the
kconfig help text says. For the others I chose a "Enable it when the
algorithm is enabled anyway"

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
