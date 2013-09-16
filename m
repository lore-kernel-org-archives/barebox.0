Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLZr4-000755-5L
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 14:32:47 +0000
Received: from mail615.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id F0B80FFAFB0
 for <barebox@lists.infradead.org>; Mon, 16 Sep 2013 16:32:20 +0200 (CEST)
Date: Mon, 16 Sep 2013 16:33:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130916143328.GD21829@ns203013.ovh.net>
References: <1379175785-6885-1-git-send-email-plagnioj@jcrosoft.com>
 <20130916075513.GU30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130916075513.GU30088@pengutronix.de>
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
Subject: Re: [PATCH 1/1] genenv: ignore *.orig file too
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:55 Mon 16 Sep     , Sascha Hauer wrote:
> On Sat, Sep 14, 2013 at 06:23:05PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  scripts/genenv | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/scripts/genenv b/scripts/genenv
> > index 374db6d..02af767 100755
> > --- a/scripts/genenv
> > +++ b/scripts/genenv
> > @@ -24,7 +24,7 @@ for i in $*; do
> >  done
> >  )
> >  
> > -find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> > +find $tempdir -name '*.orig' -o -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
> 
> Should we ignore *.rej aswell?
yes maybe .*

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
