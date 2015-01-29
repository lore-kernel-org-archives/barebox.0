Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGmdj-0007wf-6F
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 10:48:00 +0000
Date: Thu, 29 Jan 2015 19:47:31 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
In-Reply-To: <20150129093212.GJ18908@pengutronix.de>
References: <20150129182138.3DA6.AA925319@jp.panasonic.com>
 <20150129093212.GJ18908@pengutronix.de>
Message-Id: <20150129194731.3DAE.AA925319@jp.panasonic.com>
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
Subject: Re: [PATCH v2] param: add error check to __dev_add_param()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, 29 Jan 2015 10:32:12 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jan 29, 2015 at 06:21:39PM +0900, Masahiro Yamada wrote:
> > Hi Sascha,
> > 
> > On Thu, 29 Jan 2015 10:06:22 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > On Thu, Jan 29, 2015 at 11:46:53AM +0900, Masahiro Yamada wrote:
> > > > If the argument, name is given with NULL, it would be probably
> > > > unexpected behavior.  It should fail rather than register the
> > > > NULL-named parameter.
> > > > 
> > > > If strdup() fails with out-of-memory, it should also fail
> > > > with -ENOMEM.
> > > > 
> > > > Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> > > > ---
> > > > 
> > > > Changes in v2:
> > > >   - Fix the condition of returning -ENOMEM
> > > > 
> > > >  lib/parameter.c | 8 +++++++-
> > > >  1 file changed, 7 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/lib/parameter.c b/lib/parameter.c
> > > > index 71262c4..02a89bb 100644
> > > > --- a/lib/parameter.c
> > > > +++ b/lib/parameter.c
> > > > @@ -130,6 +130,13 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
> > > >  	if (get_param_by_name(dev, name))
> > > >  		return -EEXIST;
> > > >  
> > > > +	if (!name)
> > > > +		return -EINVAL;
> > > 
> > > Name is used already two lines above so barebox will already be crashed
> > > before this triggers.
> > > 
> > > Besides, I normally don't like these checks. dereferencing NULL pointers
> > > means you get a backtrace showing you what went wrong. Returning an error
> > > means adding code which in this case makes dev_add_param just fail
> > > silently because the return value often is not checked.
> > > 
> > 
> > OK, then how about dropping this -EINVAL check?
> 
> Yes, please.


I did that in v3.


> > 
> > I think the -ENOMEM check below is still useful.
> > ( strdup() returns NULL also when NULL is passed,
> > but in that case this line cannot be reached.
> > The problem is that is not apparent at a glance..)
> 
> Note we also have xstrdup which crashes barebox on out of memory. This
> is usually the right thing to do when it's known that the allocation is
> small.
> 

I stopped and I have been thinking about it.
I hesitate a bit to replace it with xstrdup().  I feel like being lazy.

So, I did not do this in v3.



Best Regards
Masahiro Yamada


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
