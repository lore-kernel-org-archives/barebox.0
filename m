Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr20085.outbound.protection.outlook.com ([40.107.2.85]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5x0-0006Sr-Ut
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 08:12:56 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Fri, 22 Feb 2019 08:12:49 +0000
Message-ID: <AM0PR08MB3842CDAAFDCF1C1EA5865F11EB7F0@AM0PR08MB3842.eurprd08.prod.outlook.com>
References: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221104117.d7hiqozklqnjzfgg@pengutronix.de>
 <AM0PR08MB3842B2EF6AB7D8EE2E009CE8EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190221133151.apxmkxdu72glcvwa@pengutronix.de>
 <AM0PR08MB3842E348B4CD31892B48EF19EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
 <20190222075742.7hwttuneh7vjvdd3@pengutronix.de>
In-Reply-To: <20190222075742.7hwttuneh7vjvdd3@pengutronix.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: AW: i.MX6ul USB serial downloader and Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi again,
thanks for that suggestion, I'll look into that, because 'no console interaction' would indeed be the preferable way to go here.
But in the production process we also need to burn some ocotp fuses (which we would do by automated console commands atm).
Is it possible to send commands over usb in gadget mode?

Regards,
Patrick

> > Hi Sascha,
> >
> > $ otg.mode=host
> >
> > Did the trick for me. Now I can flash the nand from usb-stick data on
> > /dev/disk0.0 Works like a charm, thanks!
> 
> Well if you like that, try otg.mode=peripheral and
> https://www.barebox.org/doc/latest/user/usb.html#usb-gadget-autostart-
> support
> With this you can bootstrap the whole device from the host with a simple
> script and no further interaction.
> 
> Sascha
> 
> 
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
