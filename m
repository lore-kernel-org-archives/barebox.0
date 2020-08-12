Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5pvZ-0000qN-OF
 for barebox@lists.infradead.org; Wed, 12 Aug 2020 12:32:23 +0000
Date: Wed, 12 Aug 2020 14:32:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200812123220.GU9475@pengutronix.de>
References: <7600f760-0533-a0e6-6075-834b064fb998@embedded-brains.de>
 <20200812100812.GT9475@pengutronix.de>
 <21ed352b-21e4-dd34-1fd9-d0aec60e8576@embedded-brains.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <21ed352b-21e4-dd34-1fd9-d0aec60e8576@embedded-brains.de>
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
Subject: Re: [PATCH v5] FIT: Parse `load` and `entry` addresses.
To: Christian Mauderer <christian.mauderer@embedded-brains.de>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Wed, Aug 12, 2020 at 01:01:31PM +0200, Christian Mauderer wrote:
> Hello Sascha,
> 
> On 12/08/2020 12:08, Sascha Hauer wrote:
> > On Wed, Aug 12, 2020 at 08:47:47AM +0200, Christian Mauderer wrote:
> >> Hello Sascha,
> >>
> >> thanks for the review.
> >>
> >> On 11/08/2020 09:57, Sascha Hauer wrote:
> >>> Hi Christian,
> >>>
> >>> On Wed, Jul 15, 2020 at 11:26:56AM +0200, Christian Mauderer wrote:
> >>>> According to the U-Boot documentation for the FIT file format, the load
> >>>> and entry have to be allways defined for a "kernel" or "standalone".
> >>>> But Barebox ignored the parameters. That changes with this patch.
> >>>>
> >>>> For backward compatibility the default address is still used for images
> >>>> without `load` or `entry`.
> >>>>
> >>>> Signed-off-by: Christian Mauderer <christian.mauderer@embedded-brains.de>
> >>>> ---
> >>>>  common/blspec.c     |  1 +
> >>>>  common/boot.c       |  1 +
> >>>>  common/bootm.c      | 24 ++++++++++-
> >>>>  common/image-fit.c  | 97 ++++++++++++++++++++++++++++++++++++++-------
> >>>>  include/image-fit.h |  3 ++
> >>>>  5 files changed, 110 insertions(+), 16 deletions(-)
> >>>>
> >>>> diff --git a/common/blspec.c b/common/blspec.c
> >>>> index 7fb62d310..050aed26a 100644
> >>>> --- a/common/blspec.c
> >>>> +++ b/common/blspec.c
> >>>> @@ -142,6 +142,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
> >>>>  	globalvar_set_match("bootm.initrd", "");
> >>>>  
> >>>>  	bootm_data_init_defaults(&data);
> >>>> +	data.os_entry = 0;
> >>>
> >>> You set data.os_entry explicitly to 0 here...
> >>>
> >>>>  
> >>>>  	devicetree = blspec_entry_var_get(entry, "devicetree");
> >>>>  	initrd = blspec_entry_var_get(entry, "initrd");
> >>>> diff --git a/common/boot.c b/common/boot.c
> >>>> index dcbe5cc2e..93ac1612d 100644
> >>>> --- a/common/boot.c
> >>>> +++ b/common/boot.c
> >>>> @@ -104,6 +104,7 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
> >>>>  
> >>>>  	bootm_data_init_defaults(&data);
> >>>>  
> >>>> +	data.os_entry = 0;
> >>>
> >>> ...and here. Why is this done? I think these should be left to the
> >>> default UIMAGE_SOME_ADDRESS. In the end the kernels bootet from blspec
> >>> or a boot script could be a FIT image as well.
> >>>
> >>
> >> You maybe noted that I added the default of UIMAGE_SOME_ADDRESS to
> >> bootm_data_init_defaults. I think that it is a sensible default and it
> >> was useful for adding the command.
> > 
> > Yes.
> > 
> >>
> >> Before I did that, in these two cases the value for os_entry was
> >> initialized with 0. With setting it explicitly to 0 I wanted to make
> >> sure that the behavior doesn't change.
> >>
> >> But you are right: I added a check for that in bootm_boot later. I just
> >> checked again: There is no case where the os_entry is used in between.
> >> So these two should be not unnecessary.
> >>
> >> I'll remove it in a v6 of the patch.
> > 
> > Ok, thanks
> > 
> >>
> >>>> +int fit_get_image_address(struct fit_handle *handle, void *configuration,
> >>>> +			  const char *name, const char *property,
> >>>> +			  unsigned long *address)
> >>>> +{
> >>>> +	struct device_node *image;
> >>>> +	const char *unit = name;
> >>>> +	int ret;
> >>>> +
> >>>> +	if (!address || !property || !name)
> >>>> +		return -EINVAL;
> >>>> +
> >>>> +	ret = fit_get_image(handle, configuration, &unit, &image);
> >>>> +	if (ret)
> >>>> +		return ret;
> >>>> +
> >>>> +	pr_info("%s/%s: ", image->full_name, property);
> >>>> +
> >>>> +	ret = fit_get_address(image, property, address);
> >>>> +	if (ret < 0)
> >>>> +		pr_cont("<not found>\n");
> >>>> +	else
> >>>> +		pr_cont("0x%lx\n", *address);
> >>>
> >>> pr_cont() doesn't work well in barebox and should be avoided.
> >>
> >> I wasn't aware of that. In one of the earlier versions of the patch it
> >> was suggested to print that info. I'll find another solution or remove it.
> >>
> >>>
> >>> Also I think this function shouldn't print anything, the caller should
> >>> if it wishes to.
> >>
> >> I had the impression that most of the functions print the information
> >> themselves. For example fit_open_image prints a lot of information about
> >> the image. fit_find_compatible_unit (which is used in
> >> fit_open_configuration) prints that it found a matching unit.
> >>
> >> It is a bit unclear when it would be OK for a function to print anything
> >> and when not.
> > 
> > Indeed it is unclear :)
> > 
> > Generally it's nice when a function prints some information, but here I
> > had the feeling that this function might get called in places where we
> > don't want to print anything. It doesn't matter much at the moment since
> > this function is called in this single place only anyway.
> > 
> >> But I can move the print to bootm_boot where the function
> >> is called. Or would you prefer that it is removed completely? I'm not
> >> sure whether bootm_boot prints that information later?
> > 
> > bootm will print later where it puts the kernel, but not where it got
> > the address from, so I think printing it here is valuable.
> > 
> > I just noticed that with your patch bootm refuses to boot FIT images
> > that don't have load and entry address explicitly given, right? That
> > shouldn't be the case.
> 
> Also according to the spec for a FIT image the load and entry are
> mandatory

barebox deliberately ignores this. Background is that a ARM zImage
compiled with CONFIG_AUTO_ZRELADDR enabled can be placed anywhere in the
first 128MiB from start of memory. This means we can build a kernel
image that runs on various architectures which have their memory at
different locations. Forcing the entry to a single address limits the
kernel image to machines which have a common memory start address.

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
