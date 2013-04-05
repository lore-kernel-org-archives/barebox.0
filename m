Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO34r-0000Zo-HS
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 09:36:58 +0000
Date: Fri, 5 Apr 2013 11:36:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130405093655.GM1906@pengutronix.de>
References: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
 <20130405091250.GF20989@pengutronix.de>
 <1365153649.537566045@f429.i.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365153649.537566045@f429.i.mail.ru>
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
Subject: Re: [PATCH 1/2] Makefile: Create empty <config.h> if this header
 file is not needed by board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 05, 2013 at 01:20:49PM +0400, Alexander Shiyan wrote:
> > On Mon, Mar 11, 2013 at 08:10:49PM +0400, Alexander Shiyan wrote:
> > > Patch creates empty <config.h> if this header is not needed by board.
> > > This will allow to remove many empty config.h files from boards.
> > > 
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > > ---
> > >  Makefile | 17 +++++++++++------
> > >  1 file changed, 11 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/Makefile b/Makefile
> > > index b5819fc..e8d9984 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -898,13 +898,18 @@ include/asm:
> > >  	$(Q)$(check-symlink)
> > >  	$(Q)$(create-symlink)
> > >  
> > > +define symlink-config-h
> > > +	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
> > > +		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
> > > +		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
> > > +	else							\
> > > +		$(kecho) '  CREATE  $@';			\
> > > +		echo -n > $@;					\
> > > +	fi
> > > +endef
> > 
> > I dropped this patch because it autogenerates files which were
> > previously part of the repository. This causes git checkout to
> > complain about overwriting existing files when we want to checkout
> > earlier versions.
> 
> Patch creates include/config.h (which is in .gitignore) only
> or makes symlink to board/config.h. So all already as you say below.

It creates a arch/$arch/$board/config.h, so we get the following:

# git checkout for-next/remove-config-h
...
# make pcm038_defconfig && make
...
# git checkout master
error: The following untracked working tree files would be overwritten by checkout:
        arch/arm/boards/pcm038/config.h
Please move or remove them before you can switch branches.
Aborting

So this patch forces us to manually remove arch/$arch/$board/config.h
or to use git checkout -f

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
