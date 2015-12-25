Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x230.google.com ([2a00:1450:400c:c09::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aCPVb-00029d-0R
 for barebox@lists.infradead.org; Fri, 25 Dec 2015 10:22:03 +0000
Received: by mail-wm0-x230.google.com with SMTP id l126so205065936wml.1
 for <barebox@lists.infradead.org>; Fri, 25 Dec 2015 02:21:42 -0800 (PST)
Date: Fri, 25 Dec 2015 11:21:34 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20151225102133.GA570@omega>
References: <20151223191058.4ffb07f4@berta>
 <20151223194602.GJ11966@pengutronix.de>
 <20151224134653.101687ad@berta> <20151224143513.GA3084@omega>
 <20151224191029.2d499b00@berta>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20151224191029.2d499b00@berta>
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
Subject: Re: [RFC] device probe order
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 24, 2015 at 07:10:29PM +0300, Peter Mamonov wrote:
> Let me summarize my efforts:
> 
> "Global variable" solution works fine, however it is not elegant enough:
> 
> diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> index 862444b..d06e001 100644
> --- a/drivers/usb/host/ehci-hcd.c
> +++ b/drivers/usb/host/ehci-hcd.c
> @@ -138,0 +139,2 @@ static struct descriptor {
> +int ehci_probed = 0;
> +
> @@ -1346,0 +1349,2 @@ static int ehci_probe(struct device_d *dev)
> +       ehci_probed = 1;
> +
> diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
> index 5a5314f..c99426c 100644
> --- a/drivers/usb/host/uhci-hcd.c
> +++ b/drivers/usb/host/uhci-hcd.c
> @@ -81,0 +82,2 @@
> +extern int ehci_probed;
> +
> @@ -1232,0 +1235,4 @@ static int uhci_probe(struct device_d *dev)
> +       if (!ehci_probed) {
> +               dev_err(dev, "PROBE_DEFER\n");
> +               return -EPROBE_DEFER;
> +       }
> 
> 

I think one of the big disadvantages here to this solution is that it
doesn't work when you have multiple ehci/uhci devices.

In linux it would be non-go, but barebox... don't know if barebox can
handle such setup.

> 
> "Device tree" solution doesn't work, because of_find_device_by_node()
> returns pointer to the device even though the device probe function
> wasn't called. The question is: how to tell if the device probe
> function was called?

I would say the easiest way is to check on "dev-priv", there you also
could get the "struct ehci_priv" if needed in uhci when companion is
there. The "dev->priv" will be set when running probe.

> 
> diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
> index c99426c..44eca36 100644
> --- a/drivers/usb/host/uhci-hcd.c
> +++ b/drivers/usb/host/uhci-hcd.c
> @@ -1234,0 +1235,20 @@ static int uhci_probe(struct device_d *dev)
> +       struct device_node *dn = dev->device_node, *companion;
> +
> +       if (dn) {
> +               companion = of_parse_phandle(dn, "companion", 0);
> +               if (companion && !of_find_device_by_node(companion)) {
> +                       dev_err(dev, "PROBE_DEFER\n");
> +                       return -EPROBE_DEFER;
> +               }
> +       }
> 

if (dn) {
	companion = of_parse_phandle(dn, "companion", 0);
	if (companion) {
		dev = of_find_device_by_node(companion);
		if (!dev || !dev->priv) {
			dev_err(dev, "PROBE_DEFER\n");
			return -EPROBE_DEFER;
		}
	}
}

if you need "struct ehci_priv" inside of uhci driver, then I would do
some static inline function for casting and doing:

"!ehci_get_priv(dev))" instead "dev->priv", but the access should be
then readonly only.

Don't know if this is a good and acceptable solution.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
