Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULtMV-00042Z-R0
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 10:50:16 +0000
Date: Sat, 30 Mar 2013 11:50:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130330105013.GX1906@pengutronix.de>
References: <1364569704-18851-1-git-send-email-h.feurstein@gmail.com>
 <20130329163237.GP1568@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130329163237.GP1568@game.jcrosoft.org>
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
Subject: Re: [PATCH] commands/tftp: use pr_debug for debug output
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 29, 2013 at 05:32:37PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:08 Fri 29 Mar     , Hubert Feurstein wrote:
> > Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> > ---
> >  commands/tftp.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/commands/tftp.c b/commands/tftp.c
> > index 558b0ac..05d9d04 100644
> > --- a/commands/tftp.c
> > +++ b/commands/tftp.c
> > @@ -76,7 +76,7 @@ static int do_tftpb(int argc, char *argv[])
> >  	if (ret)
> >  		goto err_rmdir;
> >  
> > -	printk("%s: %s -> %s\n", __func__, source, dest);
> > +	pr_debug("%s: %s -> %s\n", __func__, source, dest);
> no pr_ is for device/driver not commands

Saying what he should use instead is probably very helpful.

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
