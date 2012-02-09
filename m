Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvWyV-0001oh-Mf
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 16:36:00 +0000
Date: Thu, 9 Feb 2012 11:35:49 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <E28AAFD00EFAA646AE3DF9B89CD24A893183BA4E@DBDE01.ent.ti.com>
Message-ID: <alpine.DEB.2.02.1202091135080.14123@oneiric>
References: <alpine.DEB.2.02.1202090837370.5576@oneiric>
 <E28AAFD00EFAA646AE3DF9B89CD24A893183BA4E@DBDE01.ent.ti.com>
MIME-Version: 1.0
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
Subject: RE: [PATCH] Add support for default env and mounting /boot to
 BeagleBoard
To: "Premi, Sanjeev" <premi@ti.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Thu, 9 Feb 2012, Premi, Sanjeev wrote:

> >  /******************** Board Boot Time *******************/
> >
> > @@ -317,3 +320,30 @@ static int beagle_devices_init(void)
> >  	return 0;
> >  }
> >  device_initcall(beagle_devices_init);
> > +
> > +#ifdef CONFIG_DEFAULT_ENVIRONMENT
> > +static int beagle_env_init(void)
> > +{
> > +	struct stat s;
> > +	char *diskdev = "/dev/disk0.0";
> > +	int ret;
> > +
> > +	ret = stat(diskdev, &s);
> > +	if (ret) {
> > +		printf("no %s. using default env\n", diskdev);
> > +		return 0;
> > +	}
> > +
> > +	mkdir ("/boot", 0666);
> > +	ret = mount(diskdev, "fat", "/boot");
> > +	if (ret) {
> > +		printf("failed to mount %s\n", diskdev);
> > +		return 0;
> > +	}
> > +
> > +	default_environment_path = "/boot/bareboxenv";
> > +
> > +	return 0;
> > +}
> > +late_initcall(beagle_env_init);
> > +#endif
>
> Keeping this sequence, in init scripts makes things more & easily configurable.

  i agree, it was a bad idea of mine.  so moving it *out* of the panda
code would make sense as well, yes?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
