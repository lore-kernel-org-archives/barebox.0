Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aY7dP-0002Gj-Hn
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 07:43:52 +0000
Date: Tue, 23 Feb 2016 08:43:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160223074329.GV3939@pengutronix.de>
References: <1455890482-28261-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1455890482-28261-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: Update USB fastboot section
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 19, 2016 at 03:01:22PM +0100, Markus Pargmann wrote:
> Add some documentation about fastboot 'flash' command and some useful
> example how to use it to boot an initrd.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  Documentation/user/usb.rst | 52 ++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)

Applied, thanks.

> 
> diff --git a/Documentation/user/usb.rst b/Documentation/user/usb.rst
> index 9eb1437135a2..24bb8d8b1fb9 100644
> --- a/Documentation/user/usb.rst
> +++ b/Documentation/user/usb.rst
> @@ -113,6 +113,11 @@ The Fastboot gadget supports the following commands:
>  **NOTE** ``fastboot erase`` is not yet implemented. This means flashing MTD partitions
>  does not yet work.

While at it removed this sentence as it's not true.

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
