Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Psy3v-0004a0-4S
	for barebox@lists.infradead.org; Fri, 25 Feb 2011 13:50:27 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Fri, 25 Feb 2011 14:50:22 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00CD1@SRV-VS06.TELEVIC.COM>
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
Subject: writing environment in NAND flash
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

I have problems to save my environment settings. Although I set e.g. the MAC address and some other values and do the saveenv command, after reset, all settings have disappeared.
In the logging on the console port, I detected this :
"wrong crc on env
no valid environment found on /dev/env0. Using default environment"

That will be, of course, the cause why the settings disappear.
Further investigation with debugging enabled in nand_imx.c showed that Barebox reads 4 pages when starting up (0x80..0x83). That looks OK, because the environment's size is 6156 bytes. So, indeen 4 pages needed. However, when saving the environment, I only see appear one page write, i.e. on page 0x80. Of course, when reading back the four pages, the 2nd, 3rd and 4th page have all FF because they have never been written (causing a wrong CRC). Any idea why I only see 1 page write when saving the environment although the size is 6156 bytes ? Any hints where to look in the sources ?

Thanks in advance !



Filip

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
