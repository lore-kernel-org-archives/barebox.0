Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve1eur03on060e.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::60e]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h044y-00066v-A5
 for barebox@lists.infradead.org; Sat, 02 Mar 2019 12:49:26 +0000
From: Patrick Schneider <patrick.schneider@bhtronik.de>
Date: Sat, 2 Mar 2019 12:49:17 +0000
Message-ID: <AM0PR08MB38426E671D56BFE16ACA65C1EB770@AM0PR08MB3842.eurprd08.prod.outlook.com>
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
Subject: Loading Barebox to RAM
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hey guys,
I have a question about a way of "emergency flashing" the device.
So I have a fully operational linux system with barebox as bootloader. In production environment I have no access to the serial console but I have a USB OTG port.
For security reasons I don't want USB active in my "normal" barebox environment, so it's off by config.
For support, to gain access to a barebox and bootloader functionality is there a way to load another barebox (with usb active) from linux userspace into RAM and start/reboot into that?
Have a nice weekend!
Regards,
Patrick

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
