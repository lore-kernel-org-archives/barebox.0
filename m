Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PpctZ-0005T1-V2
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 08:37:58 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 16 Feb 2011 09:37:53 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B007AF@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: PMIC device driver
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Up till now, I could not start up the network on my i.mx27PDK board. After measuring on the device, I could see that power was missing for the PHY. Good reason, of course, for not starting up... 
To enable the missing power, I have to adjust some registers in the PMIC device (mc13783).
If I look into the mc13783.c file, I could see that this has similarities with Linux device drivers. So, to access the PMIC, I guess I have to do an open("/dev/pmic") and then a read or write. However, when I look to the pmic_read() and pmic_write() function, they have, besides the device pointer, buffer pointer and buffer size, an offset parameter that indicate the register within the PMIC to read/write. On the other hand, the standard read and write functions only take 3 parameters (device, buffer, buffersize). How do I pass that offset to these functions ? How do I use the PMIC device driver ?
(Maybe this is a general Linux device driver question, but I'm not that familiar with device drivers, so...)

Is it the best way to do it like this (open, read, write), or do I better call those functions directly ? (I have to set the PMIC registers in the "late_init" function of the barebox startup sequence)

Filip Vanalme



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
