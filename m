Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx01.eckelmann.de ([217.19.183.92])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZxqa-0002bz-4x
 for barebox@lists.infradead.org; Thu, 20 Dec 2018 12:54:41 +0000
From: "Scherer, Thorsten" <T.Scherer@eckelmann.de>
Date: Thu, 20 Dec 2018 12:54:08 +0000
Message-ID: <9048331c298200e72ac622400f056bb30a2ab8d4.camel@eckelmann.de>
References: <20181213063356.19138-1-t.scherer@eckelmann.de>
 <20181217141852.9c9dd9acf3072d07af8af20b@gmail.com>
 <20181217113102.kjlim22expeyz627@pengutronix.de>
In-Reply-To: <20181217113102.kjlim22expeyz627@pengutronix.de>
Content-Language: de-DE
Content-ID: <CAAD6812CA6548489635BCBE0FC7F733@eckelmann.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH] imd: model and compatible missing in metadata
To: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hallo Sascha,

On Mon, 2018-12-17 at 12:31 +0100, Sascha Hauer wrote:
> On Mon, Dec 17, 2018 at 02:18:52PM +0300, Antony Pavlov wrote:
> > On Thu, 13 Dec 2018 07:33:56 +0100
> > "Thorsten K. Scherer" <t.scherer@eckelmann.de> wrote:
> > 
> > Hi!
> > 
> > 
> > > fixes 97e81f2
> > > 
> > > Signed-off-by: Thorsten K. Scherer <t.scherer@eckelmann.de>
> > > ---
> > >  include/asm-generic/barebox.lds.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/include/asm-generic/barebox.lds.h b/include/asm-
> > > generic/barebox.lds.h
> > > index 74d3ca4a9..decaab79a 100644
> > > --- a/include/asm-generic/barebox.lds.h
> > > +++ b/include/asm-generic/barebox.lds.h
> > > @@ -66,7 +66,7 @@
> > >  #define BAREBOX_IMD				\
> > >  	KEEP(*(.barebox_imd_start))		\
> > >  	KEEP(*(.barebox_imd_1*))		\
> > > -	*(.barebox_imd_0*)			\
> > > +	KEEP(*(.barebox_imd_0*))		\
> > >  	KEEP(*(.barebox_imd_end))
> > >  
> > >  #if defined(CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE) && \
> > > -- 
> > > 2.19.1
> > 
> > It looks like this patch has unobvious drawback.
> > The bareboximd utility sees too many 'model' and 'compatible'
> > strings in a single image, e.g.:
> 
> Now I remember what the intention was that this line looks so
> apparently
> different from the other ones ;)
> 
> To get the compatible strings into the binary I have created
> imd_used().
> This should be called with the symbol that should be kept in the
> resulting image.
> 
> Sascha
> 

sorry for introducing confusion.   I misread the documenation on IMD as
"of_compatible and model will be figured out and put into the
proper  location by barebox".  What's your opinion on adding some
documentation for "imd_used" in (user/imd.rst)?  So I may try to
produce a meaningful  a patch for that.

Or is this out of scope (at least in this context)?


Best regards,
Thorsten
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
