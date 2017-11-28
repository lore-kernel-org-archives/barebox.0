Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJokh-0005Nf-E6
 for barebox@lists.infradead.org; Tue, 28 Nov 2017 22:53:21 +0000
Date: Tue, 28 Nov 2017 23:52:56 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171128225256.GA31221@ravnborg.org>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-2-s.hauer@pengutronix.de>
 <20171124233427.GA22830@ravnborg.org>
 <20171128075812.wld6er2vuhbprgje@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171128075812.wld6er2vuhbprgje@pengutronix.de>
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
Subject: Re: [PATCH 01/21] driver: Add device_detect_all() function
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

> > >  
> > >  	if (option_all) {
> > > -		for_each_device(dev) {
> > > -			ret = device_detect(dev);
> > > -			if (ret && ret != -ENOSYS && option_error)
> > > -				return ret;
> > > -		}
> > > +		device_detect_all();
> > 
> > With this change there is no longer any checks
> > if device_detect() fails.
> > so the option "-e" is no longer useful in combination
> > with option "-a" (which uses the patched code).
> 
> Of course we could bail out of device_detect_all() when an error
> occurs, I'm not sure though how useful this is. I mean when your
> SATA drivers detect function returns an error because there is no
> drive connected, why would you want to bail out of the detection of
> other devices?
> 
> In an earlier version of this series I completely removed the -e
> option. Maybe that would be better?

My comment was solely on the inconsistency.
When I want to stop if an error occur I specify -e, otherwise
I expect it to run to the end.
So we should either respect -e always or drop it.
Waht is the best I do not know, but the current middel ground
where -e only have effect in some cases is confusing and should be avoided.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
