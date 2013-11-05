Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdbEY-00014X-3O
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 07:39:30 +0000
Date: Tue, 5 Nov 2013 08:39:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131105073908.GZ24559@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
 <1383573870-11325-8-git-send-email-s.hauer@pengutronix.de>
 <20131104222141.GA25392@omega>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131104222141.GA25392@omega>
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
Subject: Re: [PATCH 07/11] blspec: make cdev optional
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 04, 2013 at 11:21:42PM +0100, Alexander Aring wrote:
> Hi Sascha,
> 
> On Mon, Nov 04, 2013 at 03:04:26PM +0100, Sascha Hauer wrote:
> ....
> >  
> > -		entry->me.display = asprintf("%-20s %-20s  %s", devname, hwdevname,
> > +		entry->me.display = asprintf("%-20s %-20s  %s",
> > +				devname ? devname : "",
> > +				hwdevname ? hwdevname : "",
> >  				blspec_entry_var_get(entry, "title"));
> > +
> >  		free(devname);
> >  		free(hwdevname);
> >  
> > @@ -277,7 +281,7 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
> >  	if (IS_ERR(rootpath))
> >  		return PTR_ERR(rootpath);
> >  
> > -	ret = blspec_scan_directory(blspec, rootpath, cdev);
> > +	ret = blspec_scan_directory(blspec, rootpath);
> >  
> >  	return ret;
> unnecessary assign of ret here, but it's not important...

Changed anyway.

Thanks
 Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
