Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WnMEq-0006k2-1Z
 for barebox@lists.infradead.org; Thu, 22 May 2014 06:12:24 +0000
Date: Thu, 22 May 2014 08:12:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140522061202.GA15686@pengutronix.de>
References: <1400735952-6424-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400735952-6424-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] usb: remove unimplemented usb_get_dev_index()
 declaration
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, May 22, 2014 at 09:19:11AM +0400, Antony Pavlov wrote:
> We do not have usb_get_dev_index() function, so remove this declaration.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  include/usb/usb.h | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/include/usb/usb.h b/include/usb/usb.h
> index 9319f2e..b4ac4ba 100644
> --- a/include/usb/usb.h
> +++ b/include/usb/usb.h
> @@ -226,7 +226,6 @@ int usb_host_detect(struct usb_host *host, int force);
>  int usb_set_protocol(struct usb_device *dev, int ifnum, int protocol);
>  int usb_set_idle(struct usb_device *dev, int ifnum, int duration,
>  			int report_id);
> -struct usb_device *usb_get_dev_index(int index);
>  int usb_control_msg(struct usb_device *dev, unsigned int pipe,
>  			unsigned char request, unsigned char requesttype,
>  			unsigned short value, unsigned short index,
> -- 
> 1.9.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
