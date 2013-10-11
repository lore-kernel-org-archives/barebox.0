Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VUcIT-0008HG-Oo
 for barebox@lists.infradead.org; Fri, 11 Oct 2013 12:58:26 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Fri, 11 Oct 2013 14:57:59 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F2D4435F4@SRV-VS06.TELEVIC.COM>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: bareboxenv-target and spi nor flash crc problem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi, I want to use bareboxenv-target on my operating system
My environment settings are stored on a m25p32 spi nor flash.
I can load them perfectly by issueing command:
bareboxenv-target -l /tmp/barebox /dev/mtd1 
I change something and afterwards I do: bareboxenv-target -s /tmp/barebox /dev/mtd1
No problems so far
However
If I reboot, I get a wrong crc on env superblock and default environment is loaded
My barebox is latest v2013.10.0 and my kernel is 2.6.35.3 (freescale git maintain version)
As a sidenote, I also still have problems with nand flash written with barebox, which is corrupt in linux and vica versa...

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
