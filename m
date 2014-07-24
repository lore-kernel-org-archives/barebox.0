Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x231.google.com ([2a00:1450:400c:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAJMR-0006EN-LI
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 13:47:09 +0000
Received: by mail-we0-f177.google.com with SMTP id w62so2803172wes.36
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 06:46:41 -0700 (PDT)
Message-ID: <53D10E3D.1030908@gmail.com>
Date: Thu, 24 Jul 2014 15:46:37 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1406208526-24261-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406208526-24261-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406208526-24261-6-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 5/6] USB: host: add xHCI HCD, Hub, and platform driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/24/2014 03:28 PM, Sebastian Hesselbarth wrote:
> This adds support for xHCI USB 3.0 host controllers found on various
> SoCs and PCI devices. Currently, the driver only supports the virtual
> USB 2.0 ports of the host controller, so if you plan to use USB 3.0
> devices, put a USB 2.0 cable in between.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
[...]
> diff --git a/drivers/usb/host/xhci-hub.c b/drivers/usb/host/xhci-hub.c
> new file mode 100644
> index 000000000000..64d39dd53e5a
> --- /dev/null
> +++ b/drivers/usb/host/xhci-hub.c
> @@ -0,0 +1,699 @@
[...]
> +static void xhci_setup_common_hub_descriptor(struct xhci_hcd *xhci,
> +				     struct usb_hub_descriptor *desc, int ports)
> +{
> +	u16 val;
> +
> +	/* xhci section 5.4.9 says 20ms max */
> +	desc->bPwrOn2PwrGood = 10;
> +	desc->bHubContrCurrent = 0;
> +
> +//	desc->bNbrPorts = ports;
> +	desc->bNbrPorts = xhci->num_usb3_ports + xhci->num_usb2_ports;

Dammit. The commented line is correct, the one below is a left-over
from USB 3.0 testing.

Either fix it up or request a v2 please.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
