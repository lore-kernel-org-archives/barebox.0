Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U0u5a-00019v-90
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 13:22:02 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 4F9FFFFB0E0
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 14:36:46 +0100 (CET)
Date: Thu, 31 Jan 2013 14:20:45 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130131132045.GC26329@game.jcrosoft.org>
References: <1358779081-31836-1-git-send-email-plagnioj@jcrosoft.com>
 <20130130221314.GA11480@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130130221314.GA11480@pengutronix.de>
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
Subject: Re: [RFC PATCH 1/1] omap: xload: switch to generic bootstrap
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:13 Wed 30 Jan     , Sascha Hauer wrote:
> On Mon, Jan 21, 2013 at 03:38:01PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> > Hi,
> > 
> > 	just compiled not tested
> 
> Just tested on panda, this does not work.
> 
> > +static __noreturn int omap_xload(void)
> > +{
> > +	int (*func)(void) = NULL;
> > +
> > +	switch (omap_bootsrc())
> > +	{
> 
> { should be in the previous line.
> 
> > +	case OMAP_BOOTSRC_MMC1:
> > +		printf("booting from MMC1\n");
> > +		func = bootstrap_read_disk("disk0.0", NULL);
> 
> For some reason the autodetection does not work, with "fat" it works. I
> haven't investigated why. Anything else but fat does not make sense
> anyway since the OMAP ROM code expects a FAT for the MLO here and barebox
> is on the same partition.
> 
> > +		break;
> > +	case OMAP_BOOTSRC_USB1:
> > +		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
> > +			printf("booting from USB1\n");
> > +			func = bootstrap_read_disk("omap4_usbboot", "omap4_usbbootfs");
> 
> 'func' is set but not used now.
it's 

	bootstrap_boot(func, false);

ligne 57

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
