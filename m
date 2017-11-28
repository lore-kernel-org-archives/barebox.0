Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eJamo-0000j2-HQ
 for barebox@lists.infradead.ORG; Tue, 28 Nov 2017 07:58:36 +0000
Date: Tue, 28 Nov 2017 08:58:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171128075812.wld6er2vuhbprgje@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
 <20171124081237.6830-2-s.hauer@pengutronix.de>
 <20171124233427.GA22830@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171124233427.GA22830@ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sat, Nov 25, 2017 at 12:34:27AM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> On Fri, Nov 24, 2017 at 09:12:17AM +0100, Sascha Hauer wrote:
> > Add a device_detect_all function to detect all devices and use it
> > in the detect command. This makes the functionality reusable in other
> > code.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  commands/detect.c     | 6 +-----
> >  drivers/base/driver.c | 8 ++++++++
> >  include/driver.h      | 1 +
> >  3 files changed, 10 insertions(+), 5 deletions(-)
> > 
> > diff --git a/commands/detect.c b/commands/detect.c
> > index 1586a6fb54..42e111419f 100644
> > --- a/commands/detect.c
> > +++ b/commands/detect.c
> > @@ -56,11 +56,7 @@ static int do_detect(int argc, char *argv[])
> >  	}
> >  
> >  	if (option_all) {
> > -		for_each_device(dev) {
> > -			ret = device_detect(dev);
> > -			if (ret && ret != -ENOSYS && option_error)
> > -				return ret;
> > -		}
> > +		device_detect_all();
> 
> With this change there is no longer any checks
> if device_detect() fails.
> so the option "-e" is no longer useful in combination
> with option "-a" (which uses the patched code).

Of course we could bail out of device_detect_all() when an error
occurs, I'm not sure though how useful this is. I mean when your
SATA drivers detect function returns an error because there is no
drive connected, why would you want to bail out of the detection of
other devices?

In an earlier version of this series I completely removed the -e
option. Maybe that would be better?

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
