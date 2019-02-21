Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr60086.outbound.protection.outlook.com ([40.107.6.86]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwlAc-0006Sr-HB
 for barebox@lists.infradead.org; Thu, 21 Feb 2019 10:01:41 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Thu, 21 Feb 2019 10:01:27 +0000
Message-ID: <AM0PR08MB384249D802EC267A6302BAE7EB7E0@AM0PR08MB3842.eurprd08.prod.outlook.com>
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
Subject: i.MX6ul USB serial downloader and Barebox
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi guys,
I'm trying to find out if the following is possible:
In a production environment, there is only the USB connection present, no console access to the device. 
The USB serial downloader mode starts and I am able to load a barebox image to the i.MX6ul RAM. That works either with MFGTools or uuu.
But how to proceed from there? Is there any way to really flash the barebox image and also the rootFS into a onboard NAND over the USB serial downloader mode with barebox in RAM?
All examples, guides and tutorials use u-boot so I'm kinda stuck here.

Thanks and regards,
Patrick

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
