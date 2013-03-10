Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from fallback5.mail.ru ([94.100.176.59])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEhkh-0005iL-Bz
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 15:01:32 +0000
Received: from f386.i.mail.ru (f386.i.mail.ru [185.5.136.57])
 by fallback5.mail.ru (mPOP.Fallback_MX) with ESMTP id 8691BD680411
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 19:01:27 +0400 (MSK)
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Sun, 10 Mar 2013 19:01:00 +0400
Message-ID: <1362927660.933817593@f386.i.mail.ru>
In-Reply-To: <20130310145634.GP1906@pengutronix.de>
References: <1362594605-1083-1-git-send-email-shc_work@mail.ru>
 <1362913680.690644667@f363.mail.ru> <20130310145634.GP1906@pengutronix.de>
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
Subject: =?UTF-8?B?UmVbMl06IFtSRkNdIE1ha2VmaWxlOiBDcmVhdGUgZW1wdHkgPGNvbmZpZy5o?=
 =?UTF-8?B?PiBpZiB0aGlzIGhlYWRlciBmaWxlIGlzIG5vdCBuZWVkZWQgYnkgYm9hcmQ=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

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
> 
> How does git incorporate with this? I think git just ignores empty files
> like these, right?

When I say "empty" here, I mean about not zeroed files, but about
files without any content. Now we have 50 config.h files like this.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
