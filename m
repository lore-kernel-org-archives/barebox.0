Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO1FT-0006pe-6i
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 08:12:04 +0000
Received: from mail436.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id EDD76DC85FA
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2013 10:11:26 +0200 (CEST)
Date: Mon, 23 Sep 2013 10:12:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130923081243.GF31585@ns203013.ovh.net>
References: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
 <20130922181748.GM30088@pengutronix.de>
 <20130923044025.GC31585@ns203013.ovh.net>
 <20130923063344.GQ30088@pengutronix.de>
 <20130923080701.GE31585@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923080701.GE31585@ns203013.ovh.net>
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
Subject: Re: [PATCH v2] bootm: update os_entry from uimage
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:07 Mon 23 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:33 Mon 23 Sep     , Sascha Hauer wrote:
> > On Mon, Sep 23, 2013 at 06:40:25AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 20:17 Sun 22 Sep     , Sascha Hauer wrote:
> > > >  common/bootm.c | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > > 
> > > > diff --git a/common/bootm.c b/common/bootm.c
> > > > index 1987a09..4e62006 100644
> > > > --- a/common/bootm.c
> > > > +++ b/common/bootm.c
> > > > @@ -73,6 +73,8 @@ static int bootm_open_os_uimage(struct image_data *data)
> > > >  	if (data->os_address == UIMAGE_SOME_ADDRESS)
> > > >  		data->os_address = data->os->header.ih_load;
> > > >  
> > > > +	data->os_entry = data->os->header.ih_ep - data->os->header.ih_load;
> > > > +
> > > >  	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
> > > >  		data->os_res = uimage_load_to_sdram(data->os, 0,
> > > >  				data->os_address);
> > > 
> > > this does not work on INVALID_ADDRESS as this time teh ih_load is as
> > > 0xffffffff and the ih_ep is relative not absolute
> > 
> > Right. How about this one then?
> > 
> > 
> > From da3192d5c763361ec08a51ebaa3cc2c3884c9827 Mon Sep 17 00:00:00 2001
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Date: Sun, 22 Sep 2013 19:51:53 +0200
> > Subject: [PATCH] bootm: handle image entry point correctly
> > 
> > This fixes starting of uImages which have an entry point other than
> > the load address.
> > 
> > The uImage format stores the entry point to the image in the ih_ep
> > field. Normally it has the absolute address, so calculate the relative
> > offset to the image start address and put it into data->os_entry. In
> > case the uImage has a load address of 0xffffffff (UIMAGE_INVALID_ADDRESS)
> > the entry point is stored relative to the image start, so just transfer
> > it to data->os_address.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/bootm.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 1987a09..16d3416 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -73,7 +73,11 @@ static int bootm_open_os_uimage(struct image_data *data)
> >  	if (data->os_address == UIMAGE_SOME_ADDRESS)
> >  		data->os_address = data->os->header.ih_load;
> >  
> > -	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
> > +	if (data->os_address == UIMAGE_INVALID_ADDRESS) {
> > +		data->os_entry = data->os->header.ih_ep;
> > +	} else {
> > +		data->os_entry = data->os->header.ih_ep -
> > +			data->os->header.ih_load;
> >  		data->os_res = uimage_load_to_sdram(data->os, 0,
> >  				data->os_address);
> >  		if (!data->os_res) {
> 
> same as my patch do

except one point you forget to reset data->os_entry in the case of a non
uimage

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
