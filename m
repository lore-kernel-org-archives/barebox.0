Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h05l3-00050W-5m
 for barebox@lists.infradead.org; Sat, 02 Mar 2019 14:36:58 +0000
References: <AM0PR08MB38426E671D56BFE16ACA65C1EB770@AM0PR08MB3842.eurprd08.prod.outlook.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <3429d555-f746-f248-af2f-7e41022cf055@rempel-privat.de>
Date: Sat, 2 Mar 2019 15:36:51 +0100
MIME-Version: 1.0
In-Reply-To: <AM0PR08MB38426E671D56BFE16ACA65C1EB770@AM0PR08MB3842.eurprd08.prod.outlook.com>
Content-Language: en-GB
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
Subject: Re: Loading Barebox to RAM
To: Patrick Schneider <patrick.schneider@bhtronik.de>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

Am 02.03.19 um 13:49 schrieb Patrick Schneider:
> Hey guys,
> I have a question about a way of "emergency flashing" the device.
> So I have a fully operational linux system with barebox as bootloader. In production environment I have no access to the serial console but I have a USB OTG port.
> For security reasons I don't want USB active in my "normal" barebox environment, so it's off by config.
> For support, to gain access to a barebox and bootloader functionality is there a way to load another barebox (with usb active) from linux userspace into RAM and start/reboot into that?
> Have a nice weekend!

Let me rephrase: you disabled every thing in a bootloader which can be
accessed only locally and provided functional to nuke complete system
from linux which can be accessed locally and remotely?
I assume, it would make sense to review the thread model of this project.

Any way. "is it possible to run barebox from linux", the answer would
be: theoretically it should be possible to do it from kexec. I never
tried it before.
-- 
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
