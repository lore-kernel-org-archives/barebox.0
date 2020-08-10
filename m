Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k54NP-0003A0-Du
 for barebox@lists.infradead.org; Mon, 10 Aug 2020 09:45:56 +0000
Date: Mon, 10 Aug 2020 11:45:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200810094553.GZ31536@pengutronix.de>
References: <1596622207-286083-1-git-send-email-r.karszniewicz@phytec.de>
 <1596622207-286083-4-git-send-email-r.karszniewicz@phytec.de>
 <ca916ead-6cc1-ab54-0e9f-18c3e84e82d3@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca916ead-6cc1-ab54-0e9f-18c3e84e82d3@phytec.de>
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
Subject: Re: [RFC PATCH v2 3/3] bootm: handle global.bootm.root_dev
To: Robert Karszniewicz <r.karszniewicz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Robert,

On Wed, Aug 05, 2020 at 12:15:50PM +0200, Robert Karszniewicz wrote:
> On 8/5/20 12:10 PM, Robert Karszniewicz wrote:
> > ---
> >   common/bootm.c | 13 ++++++++++++-
> >   1 file changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/bootm.c b/common/bootm.c
> > index 73409bf9f70c..01b54ab93958 100644
> > --- a/common/bootm.c
> > +++ b/common/bootm.c
> > @@ -656,7 +656,18 @@ int bootm_boot(struct bootm_data *bootm_data)
> >   	if (bootm_data->appendroot) {
> >   		char *rootarg;
> > -		rootarg = path_get_linux_rootarg(data->os_file);
> > +		if (bootm_data->root_dev) {
> > +			const char *root_dev_name = devpath_to_name(bootm_data->root_dev);
> > +			const struct cdev *root_cdev = cdev_by_name(root_dev_name);
> > +
> > +			if (root_cdev && root_cdev->partuuid[0] != 0) {
> > +				rootarg = basprintf("root=PARTUUID=%s", root_cdev->partuuid);
> > +			} else {
> > +				rootarg = path_get_linux_rootarg("invalid");
> 
> Here I wasn't sure if I should be uniform and let the function return an
> error or just straight assign ERR_PTR(-EINVAL).

The latter looks better IMO.

You could be more verbose in the error case. Something like

		if (!root_cdev)
			pr_err("no cdev for %s found\n", root_dev_name);
		if (!root_cdev->partuuid[0])
			pr_err("%s doesn't have a PARTUUID, cannot set root= option\n",
				root_dev_name);

Otherwise the patch looks fine to me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
