Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POA1V-0001mo-OI
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 14:20:39 +0000
Message-ID: <4CF7AB25.3010604@flatfrog.com>
Date: Thu, 2 Dec 2010 15:20:21 +0100
From: Orjan Friberg <of@flatfrog.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox on a 3730
To: barebox@lists.infradead.org

Hi,

We have successfully used Barebox as bootloader on one of our own boards 
with an OMAP 3530.  Same board, but with a 3730 instead (and a few 
auxiliary components changed) I'm getting completely garbled output on 
the serial port.  I tried changing the baud rate from 115200 to 38400 
and 19200 to no avail.

Anyone here rambooted a 3730 with barebox?  (Just to rule out that I 
need to do any software changes.)

When setting the board in boot mode "60" is printed on the serial port 
by the boot ROM, the same way "40W" was printed by the 3530 so it's not 
like the serial port isn't working at all.  I can bootstrap via either 
USB or serial port.  We're using the omap3530_beagle_per_uart_defconfig.


Thanks,
Orjan

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
