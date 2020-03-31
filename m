Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ9D4-0005R8-1i
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 05:13:11 +0000
Date: Tue, 31 Mar 2020 07:13:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200331051307.GC27288@pengutronix.de>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: Re: [PATCH v2 0/4] usb: gadget: dfu: Fix timeout on erase when using
 big partition
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org

On Thu, Mar 26, 2020 at 07:33:00PM +0100, Jules Maselbas wrote:
> Hi,
> 
> The two first patch are focused on two fixes for an issue I encountered
> when trying to use the DFU gadget on big flash partition (2MB).
> 
> You can find more information in each patch, but here is a short summary
> of the issue:
> 
> When downloading a firmware into a big flash partition the erase
> operation can take a long time to be complete from few seconds to
> minutes in extreme cases. During the erase the DFU gadget does not
> respond to any USB setup request, the host only see a stalled USB
> endpoint and cannot get responses from DFU_GETSTATE nor DFU_GETSTATUS.
> 
> 
> The last patch is a small fix that allow to use the dfu gadget after
> being unbind, such as:
>   barebox:/ usbgadget -D /foo(foo)
>   barebox:/ usbgadget -d
>   barebox:/ usbgadget -D /bar(bar)
> 
> 
> Best regards,
> Jules
> 
> change in v2:
>  - reorder commits
>  - reset global variables for progressive erase in dfu_cleanup
>    this is to allow multi partition update without restart
>  - add missing error check on erase and remove erase on non mtd device
>  - add a new commit that fix a bug when exposing multiple partitions at once

Applied, thanks

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
