Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZABzK-0004gt-Be
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 06:59:19 +0000
Date: Wed, 1 Jul 2015 08:58:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150701065856.GD18611@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
 <1434613424-19989-7-git-send-email-s.hauer@pengutronix.de>
 <559244C2.80500@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <559244C2.80500@pengutronix.de>
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
Subject: Re: [PATCH 6/6] blspec: Automatically append rootarg
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jun 30, 2015 at 09:26:58AM +0200, Marc Kleine-Budde wrote:
> On 06/18/2015 09:43 AM, Sascha Hauer wrote:
> > This patch makes it possible to automatically add a suitable root= option
> > for booting Linux from the same filesystem on which the bootspec entry
> > has been found. This adds an additional 'linux-appendroot' option to
> > bootspec which if set to 'true' will cause barebox to automatically
> > add a root= option. This currently works for NFS, UBIFS and regular
> > block devices like ATA, SD/MMC using the root=PARTUUID= mechanism.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  Documentation/user/booting-linux.rst |  7 +++++++
> >  common/blspec.c                      | 29 ++++++++++++++++++++++++++++-
> >  2 files changed, 35 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> > index 6e7d155..39084e5 100644
> > --- a/Documentation/user/booting-linux.rst
> > +++ b/Documentation/user/booting-linux.rst
> > @@ -205,6 +205,13 @@ compatible NFS URI string must be passed to the boot command:
> >  
> >    boot nfs://nfshost//path/
> >  
> > +Additionally to the options defined in the original spec barebox understands the
> > +``linux-appendroot`` option. This is a boolean value and if set to ``true`` barebox
> > +will automatically append a ``root=`` string to the Linux commandline based on the
> > +device where the entry is found on. This makes it possible to use the same rootfs
> > +image on different devices without having to specify a different root= option each
> > +time.
> > +
> >  Network boot
> >  ------------
> >  
> > diff --git a/common/blspec.c b/common/blspec.c
> > index 3506388..742065e 100644
> > --- a/common/blspec.c
> > +++ b/common/blspec.c
> > @@ -601,6 +601,29 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
> >  	return blspec_scan_device(blspec, dev);
> >  }
> >  
> > +static int blspec_append_root(struct blspec_entry *entry)
> > +{
> > +	const char *appendroot;
> > +	char *rootarg;
> > +
> > +	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
> > +	if (!appendroot || strcmp(appendroot, "true"))
> > +		return 0;
> > +
> 
> Can you move the following into a separate function outside of blspec.c
> so that it can be used somewhere else, too?
> 
> > +	rootarg = path_get_linux_rootarg(entry->rootpath);
> > +	if (IS_ERR(rootarg)) {
> > +		pr_err("Getting root argument for %s failed with: %s\n",
> > +				entry->rootpath, strerror(-PTR_ERR(rootarg)));
> > +		return PTR_ERR(rootarg);
> > +	}
> > +
> > +	globalvar_add_simple("linux.bootargs.dyn.blspec.appendroot", rootarg);
> > +
> > +	free(rootarg);
> > +
> > +	return 0;
> > +}

You mean the combination of path_get_linux_rootarg() and globalvar_add_simple()
should be a separate function? I'm not sure. Once we see a usecase for
this we can do this.

Hm, just thinking. We could create a barebox command which takes a
barebox device as argument and sets a linux.bootargs.* variable to the
corresponding root= snippet. This might be useful.

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
