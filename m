Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMckO-0003K2-TB
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 11:50:15 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 671C8DC8A8E
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 13:49:46 +0200 (CEST)
Date: Thu, 19 Sep 2013 13:50:57 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130919115057.GB24065@ns203013.ovh.net>
References: <1379404339-6716-1-git-send-email-plagnioj@jcrosoft.com>
 <1379404339-6716-2-git-send-email-plagnioj@jcrosoft.com>
 <20130918070342.GL30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130918070342.GL30088@pengutronix.de>
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
Subject: Re: [PATCH 2/2] bootm: add u-boot support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:03 Wed 18 Sep     , Sascha Hauer wrote:
> On Tue, Sep 17, 2013 at 09:52:19AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Simply do the same as barebox and hope for the best as u-boot does not handle
> > runtime address detection for boot quite often. It does only execpt you to
> > choose as compiling time.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/lib/bootm.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> > index 599b09a..71200be 100644
> > --- a/arch/arm/lib/bootm.c
> > +++ b/arch/arm/lib/bootm.c
> > @@ -315,6 +315,12 @@ static struct image_handler barebox_handler = {
> >  	.filetype = filetype_arm_barebox,
> >  };
> >  
> > +static struct image_handler uboot_handler = {
> > +	.name = "ARM u-boot",
> > +	.bootm = do_bootm_barebox,
> > +	.filetype = filetype_arm_uboot,
> > +};
> > +
> 
> Wolfgang always emphasizes that it's not possible to start U-Boot second
> stage. Most U-Boot images indeed do not support this without hacking the
> lowlevel code.
yeah they still does not understand that it's a hugely usefull feature
> We can't support this feature which happens to work on
> only some U-Boot images.
that's why the comment "hope for the best"

but it's still possible on at91 and others as example

so how can we run those bianry from barebox easely

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
