Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnhW7-0007R3-Rd
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 08:09:18 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id 731D1433A0
 for <barebox@lists.infradead.org>; Tue, 14 Mar 2017 09:08:51 +0100 (CET)
Date: Tue, 14 Mar 2017 09:15:11 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170314081511.GF25192@mail.ovh.net>
References: <20170309143117.GI4120@mail.ovh.net>
 <1489070050-16024-1-git-send-email-plagnioj@jcrosoft.com>
 <1489070050-16024-3-git-send-email-plagnioj@jcrosoft.com>
 <20170313073416.z6cedammb3vgbj6c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170313073416.z6cedammb3vgbj6c@pengutronix.de>
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
Subject: Re: [PATCH 3/5] efi: fix secure and setup mode report
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:34 Mon 13 Mar     , Sascha Hauer wrote:
> On Thu, Mar 09, 2017 at 03:34:08PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/efi/efi-device.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
> > index 6ed7f12b3..7029bfb31 100644
> > --- a/drivers/efi/efi-device.c
> > +++ b/drivers/efi/efi-device.c
> > @@ -365,7 +365,7 @@ static int efi_is_secure_boot(void)
> >  		free(val);
> >  	}
> >  
> > -	return ret != 1;
> > +	return ret != 0;
> >  }
> >  
> >  static int efi_is_setup_mode(void)
> > @@ -379,7 +379,7 @@ static int efi_is_setup_mode(void)
> >  		free(val);
> >  	}
> >  
> > -	return ret != 1;
> > +	return ret != 0;
> >  }
> >  
> >  static int efi_init_devices(void)
> > @@ -406,7 +406,7 @@ static int efi_init_devices(void)
> >  	dev_add_param_int_ro(efi_bus.dev, "fw_revision", efi_sys_table->fw_revision, "%u");
> >  	dev_add_param_int_ro(efi_bus.dev, "secure_boot", secure_boot, "%d");
> >  	dev_add_param_int_ro(efi_bus.dev, "secure_mode",
> > -			     secure_boot & setup_mode, "%u");
> > +			     secure_boot & !setup_mode, "%u");
> 
> While a bitwise 'and' operator surely works with booleans here you should still
> use a logical 'and' operator here.
ok

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
