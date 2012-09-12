Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBkbg-0006si-TQ
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 10:55:45 +0000
Date: Wed, 12 Sep 2012 12:55:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120912105540.GP6180@pengutronix.de>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
 <1347358767-1180-7-git-send-email-plagnioj@jcrosoft.com>
 <20120912072035.GG6180@pengutronix.de>
 <20120912090128.GO31207@game.jcrosoft.org>
 <20120912094448.GO6180@pengutronix.de>
 <20120912104234.GP31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912104234.GP31207@game.jcrosoft.org>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add boot sequence
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 12, 2012 at 12:42:34PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:44 Wed 12 Sep     , Sascha Hauer wrote:
> > On Wed, Sep 12, 2012 at 11:01:28AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 09:20 Wed 12 Sep     , Sascha Hauer wrote:
> > > > On Tue, Sep 11, 2012 at 12:19:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > Boot will boot run sequentially the script in /env/boot.d
> > > > > 
> > > > > diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
> > > > > index 103eb87..68e9e89 100644
> > > > > --- a/defaultenv-2/base/bin/boot
> > > > > +++ b/defaultenv-2/base/bin/boot
> > > > > @@ -2,6 +2,8 @@
> > > > >  
> > > > >  verbose=
> > > > >  dryrun=
> > > > > +# ensure sequence is init at something
> > > > > +sequence=t
> > > > 
> > > > This looks unnecessary.
> > > I beleive it too but 
> > > no as you run boot again the sequence keep the previous set I set it after
> > > trial
> > 
> > Then you must have exported it from the command line before calling the
> > script. Initializing variables is a good idea, but you should set it to
> > be empty.
> agreed except this does not work that's why I for to a value

What exactly does not work? Can you give an example script and how you
call it?

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
