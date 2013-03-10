Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEhfv-000447-TB
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 14:56:36 +0000
Date: Sun, 10 Mar 2013 15:56:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130310145634.GP1906@pengutronix.de>
References: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
 <1362913680.690644667@f363.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362913680.690644667@f363.mail.ru>
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
Subject: Re: [RFC] Makefile: Create empty <config.h> if this header file is
 not needed by board
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Mar 10, 2013 at 03:08:00PM +0400, Alexander Shiyan wrote:
> > Patch creates empty <config.h> if this header is not needed by board.
> > This will allow to remove many empty config.h files from boards.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ---
> >  Makefile | 17 +++++++++++------
> >  1 file changed, 11 insertions(+), 6 deletions(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index b5819fc..e8d9984 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -898,13 +898,18 @@ include/asm:
> >  	$(Q)$(check-symlink)
> >  	$(Q)$(create-symlink)
> >  
> > +define symlink-config-h
> > +	if [ -f $(srctree)/$(BOARD)/config.h ]; then		\
> > +		$(kecho) '  SYMLINK $@ -> $(BOARD)/config.h';	\
> > +		ln -fsn $(srctree)/$(BOARD)/config.h $@;	\
> > +	else							\
> > +		$(kecho) '  CREATE  $@';			\
> > +		echo -n > $@;					\
> > +	fi

How does git incorporate with this? I think git just ignores empty files
like these, right?

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
