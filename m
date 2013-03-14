Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG2hU-0007Ho-1G
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 07:35:44 +0000
Date: Thu, 14 Mar 2013 08:35:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130314073541.GC1906@pengutronix.de>
References: <514082C7.9090502@til-technologies.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <514082C7.9090502@til-technologies.fr>
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
Subject: Re: [PATCH 4/5] gadget: possible null pointer dereference fix
To: Cerrato Renaud <r.cerrato@til-technologies.fr>
Cc: barebox@lists.infradead.org

On Wed, Mar 13, 2013 at 02:44:39PM +0100, Cerrato Renaud wrote:
> This patch fix a possible null pointer dereference exception because of a missing null check on cdev->config
> 
> Signed-off-by: Cerrato Renaud <r.cerrato@til-technologies.fr>
> ---
>  drivers/usb/gadget/composite.c |   23 +++++++++++++----------
>  1 files changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
> index 9af115e..1f6c5b2 100644
> --- a/drivers/usb/gadget/composite.c
> +++ b/drivers/usb/gadget/composite.c
> @@ -777,18 +777,21 @@ unknown:
>           * recipients (endpoint, other, WUSB, ...) to the current
>           * configuration code.
>           */
> -        f = cdev->config->interface[intf];
> -        if (f && f->setup)
> -            value = f->setup(f, ctrl);
> -        else
> -            f = NULL;
> +        if(cdev->config) {

please do a:

	if (!cdev->config)
		goto out;

instead.

Your patch is whitespace damaged, I won't be able to apply it.
As Jean-Christophe mentioned, you should use git-send-mail for sending
your patches. It does things just right.

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
