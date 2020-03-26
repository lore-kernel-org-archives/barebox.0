Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHOVD-0003pj-Vj
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 09:08:42 +0000
Date: Thu, 26 Mar 2020 10:08:31 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20200326090831.jsudgkjc4mjjraau@tellis.lin.mbt.kalray.eu>
References: <20200324154647.17341-1-jmaselbas@kalray.eu>
 <20200324154647.17341-3-jmaselbas@kalray.eu>
 <20200326060311.GI27288@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326060311.GI27288@pengutronix.de>
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
Subject: Re: [PATCH 2/3] usb: gadget: dfu: Progressive erase if file is a mtd
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On Thu, Mar 26, 2020 at 07:03:11AM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> >  
> > @@ -132,6 +134,10 @@ struct file_list_entry *dfu_file_entry;
> >  static int dfufd = -EINVAL;
> >  static struct file_list *dfu_files;
> >  static int dfudetach;
> > +static struct mtd_info_user dfu_mtdinfo;
> > +static loff_t dfu_written;
> > +static loff_t dfu_erased;
> > +static int prog_erase;
> 
> These are not initialized, this works for the first file updated via
> DFU, but what about the following ones?
Good point, this initialization is be required between to file.
I don't think cleaning this in unbind will be sufficient, I will
try to update multiple files.

> 
> >  
> >  /* USB DFU functional descriptor */
> >  static struct usb_dfu_func_descriptor usb_dfu_func = {
> > @@ -327,8 +333,16 @@ static void dfu_cleanup(struct f_dfu *dfu)
> >  static void dn_complete(struct usb_ep *ep, struct usb_request *req)
> >  {
> >  	struct f_dfu		*dfu = req->context;
> > +	loff_t size;
> >  	int ret;
> >  
> > +	if (prog_erase && (dfu_written + req->length) > dfu_erased) {
> > +		size = roundup(req->length, dfu_mtdinfo.erasesize);
> > +		erase(dfufd, size, dfu_erased);
> 
> You should check the return value here.
Right
 
> > +		dfu_erased += size;
> > +	}
> > +
> > +	dfu_written += req->length;
> >  	ret = write(dfufd, req->buf, req->length);
> >  	if (ret < (int)req->length) {
> >  		perror("write");
> > @@ -493,7 +507,12 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
> >  			}
> >  
> >  			if (!(dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)) {
> > -				ret = erase(dfufd, ERASE_SIZE_ALL, 0);
> > +				ret = ioctl(dfufd, MEMGETINFO, &dfu_mtdinfo);
> > +				if (ret) /* not a mtd */
> > +					ret = erase(dfufd, ERASE_SIZE_ALL, 0);
> > +				else
> > +					prog_erase = 1;
> 
> I am not aware of any non mtd devices that need erase. I think you can
> drop the full erase here.
OK

Thanks for the review,
Jules

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
