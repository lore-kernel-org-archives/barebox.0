Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PS7b4-0006HR-0B
	for barebox@lists.infradead.org; Mon, 13 Dec 2010 12:33:45 +0000
Date: Mon, 13 Dec 2010 14:33:28 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101213123328.GD5766@jasper.tkos.co.il>
References: <13507e3e1f3a5dfa2e79be2ffcfbe6d7b9e84bb3.1292219932.git.baruch@tkos.co.il>
	<20101213120857.GH6017@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20101213120857.GH6017@pengutronix.de>
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
Subject: Re: [PATCH] remove redundant .gitignore entries
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Mon, Dec 13, 2010 at 01:08:57PM +0100, Sascha Hauer wrote:
> On Mon, Dec 13, 2010 at 08:00:10AM +0200, Baruch Siach wrote:
> > The ARCH and CROSS_COMPILE entries were introduced in commit cdfd8bdd, probably
> > by mistake.
> 
> 'redundant' seems to imply that these are duplicates, but they are not.

English is not my native language. I couldn't come up with anything better.

> They were also not introduced by accident. I use a wrapper script for
> make which evaluates these files, so I'd like to keep them, although
> they are only for my personal use.

The .git/info/exclude file is a better place for local excludes, IMHO. I use 
it myself for this.

baruch

> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> >  .gitignore |    2 --
> >  1 files changed, 0 insertions(+), 2 deletions(-)
> > 
> > diff --git a/.gitignore b/.gitignore
> > index 6f04601..cdc4df0 100644
> > --- a/.gitignore
> > +++ b/.gitignore
> > @@ -34,8 +34,6 @@ barebox.netx
> >  barebox.map
> >  System.map
> >  Module.symvers
> > -ARCH
> > -CROSS_COMPILE
> >  barebox_default_env
> >  
> >  #
> > -- 
> > 1.7.2.3

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
