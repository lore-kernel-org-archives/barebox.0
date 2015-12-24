Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aC8Ql-0005yJ-Ak
 for barebox@lists.infradead.org; Thu, 24 Dec 2015 16:07:57 +0000
Received: by mail-lb0-x234.google.com with SMTP id pv2so76374538lbb.1
 for <barebox@lists.infradead.org>; Thu, 24 Dec 2015 08:07:34 -0800 (PST)
Date: Thu, 24 Dec 2015 19:10:29 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20151224191029.2d499b00@berta>
In-Reply-To: <20151224143513.GA3084@omega>
References: <20151223191058.4ffb07f4@berta>
 <20151223194602.GJ11966@pengutronix.de>
 <20151224134653.101687ad@berta> <20151224143513.GA3084@omega>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] device probe order
To: Alexander Aring <alex.aring@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Let me summarize my efforts:

"Global variable" solution works fine, however it is not elegant enough:

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 862444b..d06e001 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -138,0 +139,2 @@ static struct descriptor {
+int ehci_probed = 0;
+
@@ -1346,0 +1349,2 @@ static int ehci_probe(struct device_d *dev)
+       ehci_probed = 1;
+
diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
index 5a5314f..c99426c 100644
--- a/drivers/usb/host/uhci-hcd.c
+++ b/drivers/usb/host/uhci-hcd.c
@@ -81,0 +82,2 @@
+extern int ehci_probed;
+
@@ -1232,0 +1235,4 @@ static int uhci_probe(struct device_d *dev)
+       if (!ehci_probed) {
+               dev_err(dev, "PROBE_DEFER\n");
+               return -EPROBE_DEFER;
+       }



"Device tree" solution doesn't work, because of_find_device_by_node()
returns pointer to the device even though the device probe function
wasn't called. The question is: how to tell if the device probe
function was called?

diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
index c99426c..44eca36 100644
--- a/drivers/usb/host/uhci-hcd.c
+++ b/drivers/usb/host/uhci-hcd.c
@@ -1234,0 +1235,20 @@ static int uhci_probe(struct device_d *dev)
+       struct device_node *dn = dev->device_node, *companion;
+
+       if (dn) {
+               companion = of_parse_phandle(dn, "companion", 0);
+               if (companion && !of_find_device_by_node(companion)) {
+                       dev_err(dev, "PROBE_DEFER\n");
+                       return -EPROBE_DEFER;
+               }
+       }


On Thu, 24 Dec 2015 15:35:15 +0100
Alexander Aring <alex.aring@gmail.com> wrote:

> On Thu, Dec 24, 2015 at 01:46:53PM +0300, Peter Mamonov wrote:
> > On Wed, 23 Dec 2015 20:46:02 +0100
> > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > > Hi Peter,
> > > 
> > > On Wed, Dec 23, 2015 at 07:10:58PM +0300, Peter Mamonov wrote:
> > > > Dear All,
> > > > 
> > > > I've ported an UHCI driver from the u-boot to the barebox
> > > > (WIP). To interoperate with the EHCI driver, the UHCI driver
> > > > should be probed ater the EHCI driver. Both drivers are binded
> > > > via the device tree mechanism. How can i achieve the correct
> > > > probe order?
> > > 
> > > Do you have an example binding to look at? Normally I would assume
> > > that the binding makes sure somehow that the uhci driver has to be
> > > probed.
> > 
> > 
> > At the moment the binding is quite straightforward:
> > 
> > 		ehci: ehci@1ba00200 {
> > 			compatible = "generic-ehci";
> > 			reg = <0x00000000 0x20 0x00000000 0x100>;
> > 			status = "disabled";
> > 		};
> > 
> > 		uhci: uhci@1ba00000 {
> > 			compatible = "generic-uhci";
> > 			reg = <0x00000000 0x200>;
> > 			status = "disabled";
> > 		};
> > 
> > Probably, we can add "companion = <&ehci>;" into the uhci node and
> > check if the ehci has been probed by calling
> > of_find_device_by_node(), as  Alexander Aring proposed.
> > 
> 
> I mentioned the -EPROBE_DEFER because we do the same way at handling
> rpi power domains, which requires the firmware module at first. See
> [0].
> 
> There we use:
> 
> fw_np = of_parse_phandle(pdev->dev.of_node, "firmware", 0);
> 
> in you case it would be:
> 
> ehci_np = of_parse_phandle(pdev->dev.of_node, "companion", 0);
> where "pdev->dev.of_node" is uhci device node.
> 
> If this fails then we return -ENODEV, but you better don't do nothing
> then because "companion" is optional then.
> 
> Back to Linux solution at [0]:
> 
> After that function "rpi_firmware_get" tries to get some driver data
> and this driver data is available only when the firmware is
> successful probed. Means: return -EPROBE_DEFER when function
> "rpi_firmware_get" returns NULL, otherwise you can be sure that ehci
> is probed.
> 
> Note:
> This is the linux way and I don't know if this works under
> barebox. :-) Maybe there exists a better way, what Sascha said, that
> the device-tree will do low-level handling of -EPROBE_DEFER somehow.
> I know that some subsystems e.g. power domains will do that somehow
> in special power-domain device-tree handling and magic handle the
> device probing in the correct order (but at the end it's really some
> handling with -EPROBE_DEFER).
> 
> - Alex
> 
> [0]
> https://github.com/anholt/linux/blob/b936d16077b18a575c5b892c8fe21a6ca67fc31a/arch/arm/mach-bcm/raspberrypi-power.c#L175
> [1]
> https://github.com/anholt/linux/blob/rpi-4.2.y/drivers/firmware/raspberrypi.c#L251


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
