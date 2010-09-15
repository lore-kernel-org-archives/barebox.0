Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vms173019pub.verizon.net ([206.46.173.19])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Ovif3-0004Xq-MQ
	for barebox@lists.infradead.org; Wed, 15 Sep 2010 03:27:54 +0000
Received: from [127.0.0.1] ([unknown] [74.106.17.249])
	by vms173019.mailsrvcs.net
	(Sun Java(tm) System Messaging Server 7u2-7.02 32bit (built Apr 16
	2009)) with ESMTPA id <0L8R0022EQXTHM5F@vms173019.mailsrvcs.net> for
	barebox@lists.infradead.org; Tue, 14 Sep 2010 22:27:30 -0500 (CDT)
Message-id: <4C903D22.6040900@verizon.net>
Date: Tue, 14 Sep 2010 23:27:30 -0400
From: James Robinson <jmrobinson3@verizon.net>
MIME-version: 1.0
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
Subject: WATCHDOG question
To: barebox@lists.infradead.org

  Hello,
I have created my own port of our i.MX27 board and it is running great. 
One of the final things I need to get working is my external watchdog 
code. I added the code to my board's wamce.c (my boards main "C" file) 
and CONFIG_WATCHDOG=1 in config.h. I see that it is in-fact getting 
called from the device drivers. But.... when I break into the shell, I 
don't see it being called. I found that the simple shell has a watchdog 
kick in the readline function, but has anyone implemented the watchdog 
with the hush shell?

I have gotten the following to work and would like to thank the group 
for making it REALLY easy to get it working...
1) NAND flash
2) ethernet.
3) i2c - I can see my 2 i2c buses and also talk to my SM buss controller.
4) GPIO for fan,leds, and power button.
5) HS usb host. (still need to get FS host to work) I can see our hub's 
and touch controller.

Thanks,
James


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
