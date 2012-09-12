Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBpFY-0003zf-CH
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 15:53:13 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C4409FF999D
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 17:54:44 +0200 (CEST)
Date: Wed, 12 Sep 2012 17:46:33 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120912154633.GD28928@game.jcrosoft.org>
References: <1347459234-17676-1-git-send-email-plagnioj@jcrosoft.com>
 <20120912154145.GZ6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120912154145.GZ6180@pengutronix.de>
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
Subject: Re: [PATCH 1/1 v3] bootm: add global bootm.{image/initrd}.loadaddr
 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 17:41 Wed 12 Sep     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 04:13:54PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > To be able to pass the loadaddr of the image and the initrd.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > fix typo in doc
> > 
> > Best Regards,
> > J.
> >  commands/bootm.c |   25 +++++++++++++++++++++++--
> >  1 file changed, 23 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/bootm.c b/commands/bootm.c
> > index 2d9f7f2..c03ca30 100644
> > --- a/commands/bootm.c
> > +++ b/commands/bootm.c
> > @@ -254,6 +254,19 @@ static char *bootm_image_name_and_no(const char *name, int *no)
> >  #define BOOTM_OPTS BOOTM_OPTS_COMMON
> >  #endif
> >  
> > +unsigned long long getenv_loadaddr(const char *name)
> 
> Static?
yes

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
