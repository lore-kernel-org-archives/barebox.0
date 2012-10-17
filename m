Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo4.mail-out.ovh.net ([188.165.55.104]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TONZ1-0005d5-0U
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 06:57:12 +0000
Received: from mail438.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 093DE104F19E
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 09:03:49 +0200 (CEST)
Date: Wed, 17 Oct 2012 08:54:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121017065451.GD30038@game.jcrosoft.org>
References: <1347464902-2127-1-git-send-email-plagnioj@jcrosoft.com>
 <20121016204123.GP24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121016204123.GP24458@pengutronix.de>
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
Subject: Re: [PATCH v4] bootm: add global bootm.{image/initrd}.loadaddr support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 22:41 Tue 16 Oct     , Sascha Hauer wrote:
> On Wed, Sep 12, 2012 at 05:48:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > To be able to pass the loadaddr of the image and the initrd.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/bootm.c |   25 +++++++++++++++++++++++--
> >  1 file changed, 23 insertions(+), 2 deletions(-)
> > 
> > diff --git a/commands/bootm.c b/commands/bootm.c
> > index 2d9f7f2..dfd9ac9 100644
> > --- a/commands/bootm.c
> > +++ b/commands/bootm.c
> > @@ -254,6 +254,19 @@ static char *bootm_image_name_and_no(const char *name, int *no)
> >  #define BOOTM_OPTS BOOTM_OPTS_COMMON
> >  #endif
> >  
> > +static unsigned long long getenv_loadaddr(const char *name)
> > +{
> > +	const char *valstr = getenv(name);
> > +
> > +	if (!valstr)
> > +		return UIMAGE_SOME_ADDRESS;
> > +
> > +	if (valstr[0] == '\0')
> > +		return UIMAGE_SOME_ADDRESS;
> > +
> > +	return simple_strtoull(valstr, NULL, 0);
> > +}
> > +
> >  static int do_bootm(int argc, char *argv[])
> >  {
> >  	int opt;
> > @@ -273,8 +286,11 @@ static int do_bootm(int argc, char *argv[])
> >  
> >  	oftree = getenv("global.bootm.oftree");
> >  	os_file = getenv("global.bootm.image");
> > -	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
> > +	data.os_address = getenv_loadaddr("global.bootm.image.loadaddr");
> > +	data.initrd_address = getenv_loadaddr("global.bootm.initrd.loadaddr");
> 
> This needs to be in the 'if' below.
no need if not present the address as set to SOME_ADDRESS

and this save nearly no space 8 bytes

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
