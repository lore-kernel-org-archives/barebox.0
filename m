Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMvZr-0001oC-6T
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 07:56:36 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id AABCCDC99B5
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2013 09:56:13 +0200 (CEST)
Date: Fri, 20 Sep 2013 09:57:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130920075725.GF1137@ns203013.ovh.net>
References: <1379653584-21481-1-git-send-email-plagnioj@jcrosoft.com>
 <20130920070645.GE30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130920070645.GE30088@pengutronix.de>
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
Subject: Re: [PATCH 1/1] bootm: update os_entry from uimage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:06 Fri 20 Sep     , Sascha Hauer wrote:
> On Fri, Sep 20, 2013 at 07:06:24AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if not uimage set 0 by default
> 
> Can you elaborate more what this patch does and in which situations it
> helps?

today we do not see the issue as the kernel entry point is the same as the
load_addr but on other binary its not necessary the case

as today we ignore the entry point set in the uimage and just assume it's the
same as the load_addr
> 
> Sascha
> 
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  commands/bootm.c |  1 +
> >  common/bootm.c   | 15 ++++++++++++++-
> >  2 files changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/commands/bootm.c b/commands/bootm.c
> > index a4004df..7acf341 100644
> > --- a/commands/bootm.c
> > +++ b/commands/bootm.c
> > @@ -104,6 +104,7 @@ static int do_bootm(int argc, char *argv[])
> >  
> >  	data.initrd_address = UIMAGE_INVALID_ADDRESS;
> >  	data.os_address = UIMAGE_SOME_ADDRESS;
> > +	data.os_entry = UIMAGE_SOME_ADDRESS;
> >  	data.verify = 0;
> >  	data.verbose = 0;
> >  
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 1987a09..da2b85d 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -46,6 +46,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
> >  static int bootm_open_os_uimage(struct image_data *data)
> >  {
> >  	int ret;
> > +	int update_ep = 0;
> >  
> >  	data->os = uimage_open(data->os_file);
> >  	if (!data->os)
> > @@ -70,8 +71,10 @@ static int bootm_open_os_uimage(struct image_data *data)
> >  		return -EINVAL;
> >  	}
> >  
> > -	if (data->os_address == UIMAGE_SOME_ADDRESS)
> > +	if (data->os_address == UIMAGE_SOME_ADDRESS) {
> >  		data->os_address = data->os->header.ih_load;
> > +		update_ep = 1;
> > +	}
> >  
> >  	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
> >  		data->os_res = uimage_load_to_sdram(data->os, 0,
> > @@ -80,6 +83,13 @@ static int bootm_open_os_uimage(struct image_data *data)
> >  			uimage_close(data->os);
> >  			return -ENOMEM;
> >  		}
> > +
> > +	}
> > +
> > +	if (update_ep && data->os_entry == UIMAGE_SOME_ADDRESS) {
> > +		data->os_entry = data->os->header.ih_ep;
> > +		if (data->os_address != UIMAGE_INVALID_ADDRESS)
> > +			data->os_entry -= data->os_address;
> >  	}
> >  
> >  	return 0;
> > @@ -232,6 +242,9 @@ int bootm_boot(struct image_data *data)
> >  		}
> >  	}
> >  
> > +	if (data.os_entry == UIMAGE_SOME_ADDRESS)
> > +		data.os_entry = 0;
> > +
> >  	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
> >  
> >  		initrd_type = file_name_detect_type(data->initrd_file);
> > -- 
> > 1.8.4.rc1
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
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
