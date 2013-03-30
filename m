Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ULvFH-0002KY-4n
 for barebox@lists.infradead.org; Sat, 30 Mar 2013 12:50:56 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E70F1FF96BD
 for <barebox@lists.infradead.org>; Sat, 30 Mar 2013 14:02:49 +0100 (CET)
Date: Sat, 30 Mar 2013 13:46:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130330124643.GQ1568@game.jcrosoft.org>
References: <1364569704-18851-1-git-send-email-h.feurstein@gmail.com>
 <20130329163237.GP1568@game.jcrosoft.org>
 <20130330105013.GX1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130330105013.GX1906@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:50 Sat 30 Mar     , Sascha Hauer wrote:
> On Fri, Mar 29, 2013 at 05:32:37PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 16:08 Fri 29 Mar     , Hubert Feurstein wrote:
> > > Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> > > ---
> > >  commands/tftp.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/commands/tftp.c b/commands/tftp.c
> > > index 558b0ac..05d9d04 100644
> > > --- a/commands/tftp.c
> > > +++ b/commands/tftp.c
> > > @@ -76,7 +76,7 @@ static int do_tftpb(int argc, char *argv[])
> > >  	if (ret)
> > >  		goto err_rmdir;
> > >  
> > > -	printk("%s: %s -> %s\n", __func__, source, dest);
> > > +	pr_debug("%s: %s -> %s\n", __func__, source, dest);
> > no pr_ is for device/driver not commands
> 
> Saying what he should use instead is probably very helpful.
which I did

use debug

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
