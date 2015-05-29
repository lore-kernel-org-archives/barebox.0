Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YyEdN-0007hZ-Ua
 for barebox@lists.infradead.org; Fri, 29 May 2015 07:23:14 +0000
Date: Fri, 29 May 2015 09:22:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150529072250.GB6325@pengutronix.de>
References: <1432194109-4340-1-git-send-email-s.christ@phytec.de>
 <20150522065037.GT6325@pengutronix.de>
 <20150522115515.GB5384@lws-christ>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150522115515.GB5384@lws-christ>
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
Subject: Re: [PATCH] barebox update: add note after successful update
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 22, 2015 at 01:55:16PM +0200, Stefan Christ wrote:
> On Fri, May 22, 2015 at 08:50:37AM +0200, Sascha Hauer wrote:
> > On Thu, May 21, 2015 at 09:41:49AM +0200, Stefan Christ wrote:
> > > Some users of the barebox_update command forget to erase the external
> > > barebox environment after updating the barebox. Using an old barebox
> > > environment leads to various problems if there were major changes.
> > > 
> > > So add a gentle reminder after the successful update.
> > > 
> > > Signed-off-by: Stefan Christ <s.christ@phytec.de>
> > > ---
> > >  common/bbu.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/common/bbu.c b/common/bbu.c
> > > index 7fb154a..1b125e9 100644
> > > --- a/common/bbu.c
> > > +++ b/common/bbu.c
> > > @@ -113,8 +113,11 @@ int barebox_update(struct bbu_data *data)
> > >  	if (ret == -EINTR)
> > >  		printf("update aborted\n");
> > >  
> > > -	if (!ret)
> > > +	if (!ret) {
> > >  		printf("update succeeded\n");
> > > +		if (IS_ENABLED(CONFIG_ENV_HANDLING))
> > > +			printf("You maybe want to erase the barebox environment.\n");
> > 
> > How about adding a hint ...using saveenv -z?
> 
> Oh, I didn't know that the "-z" argument exits. Nice.
> 
> Ok, but what about the situation when a user boots the barebox from sdcard and
> uses the barebox_update handler to flash a barebox to NAND. In such case
> 'saveenv -z' overwrites the environment on the sdcard.

I still have no good answer to this :/

I may also happen that the updated barebox comes with a different
partition layout so that you can't properly erase the environment from
the currently running barebox. At some point we thought about adding
some version counter to the environment so that the updated barebox
could either issue a warning when an outdated environment is detected
or ignore it completely. This would of course mean we must not forget to
increase the version when we do an incompatible change.

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
