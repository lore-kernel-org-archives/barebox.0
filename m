Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VWLmy-0000p3-Mo
 for barebox@lists.infradead.org; Wed, 16 Oct 2013 07:45:05 +0000
Date: Wed, 16 Oct 2013 09:44:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131016074442.GO30088@pengutronix.de>
References: <1381834214-12603-1-git-send-email-s.hauer@pengutronix.de>
 <20131015113630.GX32444@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131015113630.GX32444@ns203013.ovh.net>
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
Subject: Re: [PATCH] ARM: rpi: add SD card environment support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2013 at 01:36:30PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 12:50 Tue 15 Oct     , Sascha Hauer wrote:
> > +static int rpi_env_init(void)
> > +{
> > +	struct stat s;
> > +	const char *diskdev = "/dev/disk0.0";
> > +	int ret;
> > +
> > +	device_detect_by_name("mci0");
> > +
> > +	ret = stat(diskdev, &s);
> > +	if (ret) {
> > +		printf("no %s. using default env\n", diskdev);
> > +		return 0;
> > +	}
> > +
> > +	mkdir("/boot", 0666);
> > +	ret = mount(diskdev, "fat", "/boot");
> > +	if (ret) {
> > +		printf("failed to mount %s\n", diskdev);
> > +		return 0;
> > +	}
> > +
> > +	default_environment_path = "/boot/barebox.env";
> > +
> > +	return 0;
> > +}
> 
> can we drop all of this and do something like this
> 
> set_defaultenv and do not have custom code in the c duplicated everywhere?

That's probably a good idea. Right now it's just not clear to me how
such a code would look like. Omap does something similar to the above,
but additionally checks whether the device to mount is actually the
device the board started from.

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
