Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZFfi4-0002d2-QH
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 09:44:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim)
 by metis.ext.pengutronix.de with esmtps (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mol@pengutronix.de>) id 1ZFdpu-0000U2-6G
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 09:44:06 +0200
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1ZFfhe-0001vR-5h
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 11:43:42 +0200
Date: Thu, 16 Jul 2015 11:43:42 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20150716094342.GJ30135@pengutronix.de>
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
 <1437036236-19096-5-git-send-email-m.olbrich@pengutronix.de>
 <55A77AA1.4010707@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <55A77AA1.4010707@pengutronix.de>
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
Subject: Re: [PATCH 4/7] efi: add helper to get the GPT partition UUID for a
 device
To: barebox@lists.infradead.org

On Thu, Jul 16, 2015 at 11:34:25AM +0200, Marc Kleine-Budde wrote:
> On 07/16/2015 10:43 AM, Michael Olbrich wrote:
> > Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> > ---
> >  common/efi-devicepath.c | 31 +++++++++++++++++++++++++++++++
> >  include/efi.h           |  1 +
> >  2 files changed, 32 insertions(+)
> > 
> > diff --git a/common/efi-devicepath.c b/common/efi-devicepath.c
> > index a53c6d2e8b9b..fdb86afc8eca 100644
> > --- a/common/efi-devicepath.c
> > +++ b/common/efi-devicepath.c
> > @@ -1383,3 +1383,34 @@ u8 device_path_to_type(struct efi_device_path *dev_path)
> >  
> >  	return device_path_type(dev_path);
> >  }
> > +
> > +char *device_path_to_partuuid(struct efi_device_path *dev_path)
> > +{
> > +	struct efi_device_path *dev_path_node;
> > +	struct harddrive_device_path *hd;
> > +	char *str = NULL;;
> > +
> > +	dev_path = unpack_device_path(dev_path);
> > +
> > +	for (dev_path_node = dev_path; !is_device_path_end(dev_path_node);
> > +	     dev_path_node = next_device_path_node(dev_path_node)) {
> > +
> > +		if (device_path_type(dev_path_node) != MEDIA_DEVICE_PATH)
> > +			continue;
> > +
> > +		if (dev_path_node->sub_type != MEDIA_HARDDRIVE_DP)
> > +			continue;
> > +
> > +		hd = (struct harddrive_device_path *)dev_path_node;
> > +
> > +		if (hd->signature_type != SIGNATURE_TYPE_GUID)
> > +			continue;
> > +
> > +		str = malloc(sizeof("xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx")+1);
> > +		sprintf(str, "%pU)", (efi_guid_t *)&(hd->signature[0]));
> > +		break;
> asprintf()?

Good idea. And I need to add a OOM check.

Michael

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
