Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jImwT-0005VS-LU
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 05:26:35 +0000
Date: Mon, 30 Mar 2020 07:26:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200330052629.GT27288@pengutronix.de>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
 <20200326183304.16531-5-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326183304.16531-5-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v2 4/4] usb: gadget: dfu: Fix DFU mode interface descriptor
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Jules,

On Thu, Mar 26, 2020 at 07:33:04PM +0100, Jules Maselbas wrote:
> The gadget driver set the bInterfaceProtocol value to 1 in the DFU
> interface descriptor. However this value is used to indicate that the
> gadget is in run-time mode and not ready for DFU. When ready for DFU
> operation the bInterfaceProtocol value must be set to 2 (DFU mode).
> 
> From the DFU 1.1 specification, the value of bInterfaceProtocol select:
>  - 1: Runtime protocol  (see Table 4.1)
>  - 2: DFU mode protocol (see Table 4.4)
> 
> This patch change the bInterfaceProtocol value from 1 to 2. As this
> DFU gadget driver is always ready for DFU operation (DFU mode) and
> doesn't require a USB reset.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>

DFU stopped working for me quite a while ago and I tracked it down to
this dfu-util commit:

| commit 377f6f136d3369529f44578acaeee82d7c7d7af9
| Author: Paul Fertser <fercerpav@gmail.com>
| Date:   Sun Aug 10 14:26:05 2014 +0400
| 
|     dfu_util: Ignore alt_index/alt_name specification in runtime mode
|     
|     When the device is in runtime mode it needs to be reset first into DFU
|     mode for the list of alternate settings to appear, so unless it is
|     already in the right mode, matching on alt setting number or name
|     should be skipped.
|     
|     Fixes regression on OpenMoko Freerunner.
|     
|     Signed-off-by: Paul Fertser <fercerpav@gmail.com>

Are you using a recent dfu-util version? Is your patch the fix for this
commit?

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
