Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f429.i.mail.ru ([185.5.136.100])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UO2pN-0007eX-Tx
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 09:20:59 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 05 Apr 2013 13:20:49 +0400
Message-ID: <1365153649.537566045@f429.i.mail.ru>
In-Reply-To: <20130405091250.GF20989@pengutronix.de>
References: <1363018250-6169-1-git-send-email-shc_work@mail.ru>
 <20130405091250.GF20989@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzJdIE1ha2VmaWxlOiBDcmVhdGUgZW1wdHkgPGNv?=
 =?UTF-8?B?bmZpZy5oPiBpZiB0aGlzIGhlYWRlciBmaWxlIGlzIG5vdCBuZWVkZWQgYnkg?=
 =?UTF-8?B?Ym9hcmQ=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Mon, Mar 11, 2013 at 08:10:49PM +0400, Alexander Shiyan wrote:
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
> > +endef
> 
> I dropped this patch because it autogenerates files which were
> previously part of the repository. This causes git checkout to
> complain about overwriting existing files when we want to checkout
> earlier versions.

Patch creates include/config.h (which is in .gitignore) only
or makes symlink to board/config.h. So all already as you say below.

> 
> How about creating this patch like this:
> 
> - create (and commit) a include/config-empty.h
> - link to the board specific config.h if it exists or to
>   config-empty.h if it doesn't exist.


---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
