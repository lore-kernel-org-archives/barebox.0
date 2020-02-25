Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6V5E-0000ys-DO
 for barebox@lists.infradead.org; Tue, 25 Feb 2020 07:56:50 +0000
Date: Tue, 25 Feb 2020 08:56:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200225075646.GI3335@pengutronix.de>
References: <20200221101111.14668-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221101111.14668-1-ceggers@arri.de>
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
Subject: Re: [PATCH] usb: rename "struct usb_configuration" to "struct
 usb_config"
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 21, 2020 at 11:11:11AM +0100, Christian Eggers wrote:
> struct usb_configuration in usb.h conflicts with struct
> usb_configuration in usb/composite.h
> 
> The version in usb/composite.h is also defined in Linux, so rename the
> other one.
> 
> Signed-off-by: Christian Eggers <ceggers@arri.de>
> ---
>  include/usb/usb.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

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
