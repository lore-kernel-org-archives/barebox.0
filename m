Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPRru-0001bR-1f
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 07:21:54 +0000
Date: Mon, 17 Mar 2014 08:21:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140317072132.GI17250@pengutronix.de>
References: <1394791908-22061-1-git-send-email-s.hauer@pengutronix.de>
 <20140314171116.GE6478@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140314171116.GE6478@ns203013.ovh.net>
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
Subject: Re: [SPAM] [PATCH] splash: Print error message when no renderer is
 found
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 14, 2014 at 06:11:16PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 11:11 Fri 14 Mar     , Sascha Hauer wrote:
> > the splash command silently fails when no renderer is found for
> > an image type. Print an error message in this case.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  lib/gui/image_renderer.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/lib/gui/image_renderer.c b/lib/gui/image_renderer.c
> > index 78e5777..9c92983 100644
> > --- a/lib/gui/image_renderer.c
> > +++ b/lib/gui/image_renderer.c
> > @@ -23,6 +23,8 @@ static struct image_renderer *get_renderer(void* buf, size_t bufsize)
> >  			return ir;
> >  	}
> >  
> > +	printf("No renderer found for filetype %s\n", file_type_to_string(type));
> 
> 	eprintf?

ok

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
