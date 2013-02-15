Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Qjv-0001HV-4E
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 19:14:31 +0000
Date: Fri, 15 Feb 2013 20:14:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215191429.GE1906@pengutronix.de>
References: <1360952705-1808-1-git-send-email-plagnioj@jcrosoft.com>
 <20130215183642.GC1906@pengutronix.de>
 <20130215190610.GE19322@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130215190610.GE19322@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/1] hush: return exit code a real instead of 0/1 only
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 08:06:10PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 19:36 Fri 15 Feb     , Sascha Hauer wrote:
> > On Fri, Feb 15, 2013 at 07:25:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  common/hush.c |    2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/common/hush.c b/common/hush.c
> > > index 602f8f1..3e89a11 100644
> > > --- a/common/hush.c
> > > +++ b/common/hush.c
> > > @@ -1639,7 +1639,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
> > >  		b_free(&temp);
> > >  	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
> > >  
> > > -	return (code != 0) ? 1 : 0;
> > > +	return code;
> > 
> > This breaks the exit command.
> so how can we get the correct exit code of a shell any idea?

Maybe it could be stored in struct p_context.

But beware, changes to this code have many non obvious side effects.
They require a good amount of testing. So if you send another patch in
five minutes I won't look at it.

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
