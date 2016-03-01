Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aaiKj-0000Uq-R9
 for barebox@lists.infradead.org; Tue, 01 Mar 2016 11:19:19 +0000
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56D57A94.5040804@eurek.it>
Date: Tue, 1 Mar 2016 12:18:44 +0100
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: iMX6 second boot: from SDCard
To: barebox@lists.infradead.org

Hello everybody,
first of all, I would say a BIG thank to everybody point me out on have 
a USB-Serial Downloader working and Barebox up and running in my custom 
iMX6Q based board.

Right now I wish to know what can be done or not done to fireup the 
board from attached microSD card which is working because Barebox (from 
USB Downloader) is seeing it and find any partition scheme found on it.

If I simply write the barebox-flash-image (currently a symlink to 
image/barebox-[BOARD].img file) to a sdcard with command:

[my usb-adapter is seeing the sdcard as /dev/sdk]

dd if=barebox-flash-image of=/dev/sdk

it works, but actually I have lost all MBR partition scheme at all.

I read somewhere (https://community.freescale.com/docs/DOC-95015) that 
writing the .imx file with an offset of 1K from the beginning of the 
card it should run.

Actually it is not. :-(

Does barebox building this kinda of image? I see under the images 
folder, a file named:

start_imx6_[BOARD].pblx.imximg

but as far as I can see, this file is the same as the 
barebox-[BOARD]-imx6q.img...

The Reference Manual in the Boot Section does not explain well on HOW TO 
PREPARE a MICROSD card just to be sure the DCD and other stuff (like 
PBL) have to be written just to bootstrap from microSD/MMC...


Can anybody help me out on this?


Best Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
