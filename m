Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDWwN-00076V-RD
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 09:16:44 +0000
Received: by mail-ee0-f44.google.com with SMTP id l10so133489eei.17
 for <barebox@lists.infradead.org>; Thu, 07 Mar 2013 01:16:42 -0800 (PST)
Date: Thu, 7 Mar 2013 10:17:54 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130307091754.GA673@x61s.8.8.8.8>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
 <1362562189-17783-6-git-send-email-plagnioj@jcrosoft.com>
 <20130306212129.GN1906@pengutronix.de>
 <20130306213444.GI4401@game.jcrosoft.org>
 <20130307074503.GR1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130307074503.GR1906@pengutronix.de>
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
Subject: Re: [PATCH 06/20] app: add some utils
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Mar 07, 2013 at 08:45:03AM +0100, Sascha Hauer wrote:
> On Wed, Mar 06, 2013 at 10:34:44PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 22:21 Wed 06 Mar     , Sascha Hauer wrote:
> > > On Wed, Mar 06, 2013 at 10:29:35AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > >  - getchar_timeout
> > > >  - term (try to detect terminal size, position, ansi helper)
> > > >  - list
> > > > 
> > > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > > ---
> > > > diff --git a/apps/include/utils/list.h b/apps/include/utils/list.h
> > > > new file mode 100644
> > > > index 0000000..8a18dae
> > > > --- /dev/null
> > > > +++ b/apps/include/utils/list.h
> > > > @@ -0,0 +1,114 @@
> > > > +/*
> > > > + * Copyright (C) 2013 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> > > > + *
> > > > + * Under GPLv2 only
> > > > + *
> > > > + * As a special exception, if other files instantiate templates or use macros
> > > > + * or inline functions from this file, or you compile this file and link it
> > > > + * with other works to produce a work based on this file, this file does not
> > > > + * by itself cause the resulting work to be covered by the GNU General Public
> > > > + * License. However the source code for this file must still be made available
> > > > + * in accordance with section (3) of the GNU General Public License.
> > > > +
> > > > + * This exception does not invalidate any other reasons why a work based on
> > > > + * this file might be covered by the GNU General Public License.
> > > > + */
> > > 
> > > This looks suspiciously like the Linux list implementation which I think you
> > > haven't written. Also who gives you the right to add this licence
> > > exception to code you do not own?
> > I did wrote this for years about 10 I just update the code to looks like the
> > linux one so I do own the code
> 
> LOL. I've written my own OS 25 years ago, I just updated the code to look
> like Linux.
> 
lol... other question: why we need a second list implementation?
In order to not be dependent on linux headers?

Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
