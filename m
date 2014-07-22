Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9Ugx-0006jV-Ax
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:40:56 +0000
Message-ID: <1406014724.4667.1.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 22 Jul 2014 09:38:44 +0200
In-Reply-To: <20140722053847.GV23235@pengutronix.de>
References: <6b8c916b058b2ea98a40c6d701186608@linux-source.de>
 <20140722053847.GV23235@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH] arch/arm/lib/bootm: fix length check of kernel image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 22.07.2014, 07:38 +0200 schrieb Sascha Hauer:
> Hi Sebastian,
> 
> On Mon, Jul 21, 2014 at 12:43:13PM +0200, basti@linux-source.de wrote:
> > Signed-off-by: Sebastian Block <basti@linux-source.de>
> > ---
> >  arch/arm/lib/bootm.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> > index 4896d01..d9b9111 100644
> > --- a/arch/arm/lib/bootm.c
> > +++ b/arch/arm/lib/bootm.c
> > @@ -314,7 +314,7 @@ static int do_bootz_linux(struct image_data *data)
> >  			image_size - sizeof(*header));
> >  	if (ret < 0)
> >  		goto err_out;
> > -	if (ret < end - sizeof(*header)) {
> > +	if (ret < image_size - sizeof(*header)) {
> 
> Did this cause any real trouble? I was quite surprised when I saw that
> patch. After a test I saw that for me 'image_size' has the same value as
> 'end'.
> 
> The patch is obviously correct and will be applied, I'm just not sure if
> it's an important fix or a cleanup change.
> 
I don't think this qualifies as a critical fix, as before the
introduction of this 'image_size' variable we always used 'end' as the
size of the image without running into any problems. So I think this is
only a correctness fix.

Regards,
Lucas

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
