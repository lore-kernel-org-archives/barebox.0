Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22d.google.com ([2a00:1450:4013:c00::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdbuB-00026u-T0
 for barebox@lists.infradead.org; Tue, 05 Nov 2013 08:22:32 +0000
Received: by mail-ee0-f45.google.com with SMTP id e50so1606981eek.32
 for <barebox@lists.infradead.org>; Tue, 05 Nov 2013 00:22:06 -0800 (PST)
Date: Tue, 5 Nov 2013 09:22:03 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131105082202.GB26656@omega>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
 <1383573870-11325-8-git-send-email-s.hauer@pengutronix.de>
 <20131104222141.GA25392@omega>
 <20131105073908.GZ24559@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131105073908.GZ24559@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 05, 2013 at 08:39:08AM +0100, Sascha Hauer wrote:
> On Mon, Nov 04, 2013 at 11:21:42PM +0100, Alexander Aring wrote:
> > Hi Sascha,
> > 
> > On Mon, Nov 04, 2013 at 03:04:26PM +0100, Sascha Hauer wrote:
> > ....
> > >  
> > > -		entry->me.display = asprintf("%-20s %-20s  %s", devname, hwdevname,
> > > +		entry->me.display = asprintf("%-20s %-20s  %s",
> > > +				devname ? devname : "",
> > > +				hwdevname ? hwdevname : "",
> > >  				blspec_entry_var_get(entry, "title"));
> > > +
> > >  		free(devname);
> > >  		free(hwdevname);
> > >  
> > > @@ -277,7 +281,7 @@ static int blspec_scan_cdev(struct blspec *blspec, struct cdev *cdev)
> > >  	if (IS_ERR(rootpath))
> > >  		return PTR_ERR(rootpath);
> > >  
> > > -	ret = blspec_scan_directory(blspec, rootpath, cdev);
> > > +	ret = blspec_scan_directory(blspec, rootpath);
> > >  
> > >  	return ret;
> > unnecessary assign of ret here, but it's not important...
> 
> Changed anyway.
> 
oh neat, Thanks.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
