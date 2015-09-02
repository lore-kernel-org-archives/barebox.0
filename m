Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX103-0004V5-C0
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 05:54:24 +0000
Date: Wed, 2 Sep 2015 07:53:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150902055358.GG18700@pengutronix.de>
References: <1441111688-25418-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1441111688-25418-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] usb: ehci: fix include/usb/usb.h:'struct
 usb_configuration' misuse
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 01, 2015 at 03:48:07PM +0300, Antony Pavlov wrote:
> See the commit
> 
>     commit 245069bcef15ecc19db616a967501349b76c84d0
>     Author: Sascha Hauer <s.hauer@pengutronix.de>
>     Date:   Thu Jul 10 11:36:12 2014 +0200
> 
>         USB: introduce usb_interface/usb_configuration structs
> 
> On little endian systems like ARM the le16_to_cpus() macro
> is a no op, defined as:
> 
>     #define le16_to_cpus __le16_to_cpus
>     #define __le16_to_cpus(x) do {} while (0)
> 
> So struct usb_configuration field misuse was discovered
> on big-endian MIPS machine.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

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
