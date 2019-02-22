Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5iK-0008Qr-1k
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:57:45 +0000
Date: Fri, 22 Feb 2019 08:57:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222075742.7hwttuneh7vjvdd3@pengutronix.de>
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
 <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221133151.apxmkxdu72glcvwa@pengutronix.de>
 <AM0PR08MB3842E348B4CD31892B48EF19EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR08MB3842E348B4CD31892B48EF19EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
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
Subject: Re: i.MX6ul USB serial downloader and Barebox
To: Patrick Schneider <patrick.schneider@bhtronik.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 21, 2019 at 02:30:36PM +0000, Patrick Schneider wrote:
> Hi Sascha,
> 
> $ otg.mode=host
> 
> Did the trick for me. Now I can flash the nand from usb-stick data on /dev/disk0.0
> Works like a charm, thanks!

Well if you like that, try otg.mode=peripheral and
https://www.barebox.org/doc/latest/user/usb.html#usb-gadget-autostart-support
With this you can bootstrap the whole device from the host with a simple
script and no further interaction.

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
