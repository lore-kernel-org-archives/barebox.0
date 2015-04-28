Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YmzQH-0007hQ-Tg
 for barebox@lists.infradead.org; Tue, 28 Apr 2015 06:55:15 +0000
Date: Tue, 28 Apr 2015 08:54:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150428065450.GF6325@pengutronix.de>
References: <E1YmhKy-0006Jt-Op@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1YmhKy-0006Jt-Op@bombadil.infradead.org>
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
Subject: Re: [PATCH] net: usb: asix: Add D-link DUB-E100 H/W Ver C1 support
To: Mayur Nande <Mayur.Nande@medel.com>
Cc: "'barebox@lists.infradead.org'" <barebox@lists.infradead.org>

On Mon, Apr 27, 2015 at 11:36:01AM +0000, Mayur Nande wrote:
> Hello!
> 
> This patch adds support for USB ethernet adapter D-Link DUB-E100 H/W Rev C1. I tested this on
> Beagleboneblack Rev A6A and our custom h/w based on i.mx6 Phytec phycore module. More 
> information about the adapter is here: 
> http://us.dlink.com/products/connect/high-speed-usb-2-0-fast-ethernet-adapter/ 
>  
> Signed-off-by: Mayur Nande <mayur.nande@medel.com>
> ---
>  drivers/net/usb/asix.c | 4 ++++
>  1 file changed, 4 insertions(+)

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
