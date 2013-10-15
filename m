Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VW7OK-0005ee-Br
 for barebox@lists.infradead.org; Tue, 15 Oct 2013 16:22:41 +0000
Received: by mail-ee0-f42.google.com with SMTP id b45so4116517eek.15
 for <barebox@lists.infradead.org>; Tue, 15 Oct 2013 09:22:18 -0700 (PDT)
Date: Tue, 15 Oct 2013 18:22:09 +0200
From: Andre Heider <a.heider@gmail.com>
Message-ID: <20131015162209.GA41640@gmail.com>
References: <1381834214-12603-1-git-send-email-s.hauer@pengutronix.de>
 <20131015115448.GA41386@gmail.com>
 <20131015125312.GJ30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131015125312.GJ30088@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2013 at 02:53:12PM +0200, Sascha Hauer wrote:
> On Tue, Oct 15, 2013 at 01:54:50PM +0200, Andre Heider wrote:
> > Hi,
> > 
> > > +static int rpi_env_init(void)
> > > +{
> > > +	struct stat s;
> > > +	const char *diskdev = "/dev/disk0.0";
> > > +	int ret;
> > > +
> > > +	device_detect_by_name("mci0");
> > > +
> > > +	ret = stat(diskdev, &s);
> > > +	if (ret) {
> > > +		printf("no %s. using default env\n", diskdev);
> > > +		return 0;
> > > +	}
> > > +
> > > +	mkdir("/boot", 0666);
> > > +	ret = mount(diskdev, "fat", "/boot");
> > > +	if (ret) {
> > > +		printf("failed to mount %s\n", diskdev);
> > > +		return 0;
> > > +	}
> > > +
> > > +	default_environment_path = "/boot/barebox.env";
> > > +
> > > +	return 0;
> > > +}
> > 
> > I was solving the same thing just yesterday ;)
> > 
> > What I did was to create a env/init/automount script, what's the advantage of this approach?
> 
> This approach also sets default_environment_path to /boot/barebox.env so
> that loadenv/saveenv works and barebox comes up with the saved
> environment.
> 
> You could probably do similar with scripts doing something like:
> 
> automount -d /boot "detect mci0 && mount /dev/disk0.0 /boot"
> loadenv -s /boot/barebox.env /env
> /env/bin/init
> 
> However, I made the experience that in scripts proper error checking is
> hard to archieve and therefore often skipped. Also with C Code a single
> git commitish makes the system behaviour clear. When instead scripts are
> used which might have been modified by a user, or which might come from
> an older barebox version the situation gets much more complex.
> 
> I generally try to reduce the usage (or better: necessity) of scripts.
> They pretend a high level of flexibility but this comes at the cost of
> reduced consistency across different boards (or even different instances
> of the same board)
> 

Alright, thanks!

Regards,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
