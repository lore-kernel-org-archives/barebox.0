Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PrRsW-0006d5-2P
	for barebox@lists.infradead.org; Mon, 21 Feb 2011 09:16:25 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 21 Feb 2011 10:16:20 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00A2F@SRV-VS06.TELEVIC.COM>
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
Subject: iMX27 NFC
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Just wanna come back once more on the iMX27 NFC bug issue.
I see that Barebox also supports other boards that have the iMX27 processor, e.g. PhyCard and Eukrea iMX27. Don't know the boards, but  I guess they all suffer from the NFC bug as they all use the i.MX27 processor. Just wondering how they solve the problem of that bug ? As a workaround (swapping Bi-byte) is not implemented in the "standard" imx nand driver, they may handle this issue differently. (maybe this is rather a  question for their mailing lists...)
I'm still struggling with the NAND issue and whether to add a patch to swap bytes, or doing a run-once swap when using the NAND for the first time so the BI byte is always in the right location for the standard driver. It feels like the latter solution is the best because one can use the drivers (Barebox and Linux kernel) as they are, without any modifications. For the Kernel, Freescale opt obviously for patches. Patches we have to port if we want to use a recent Kernel version...
Maybe there's a way to add that "run-once" piece of code to the board's start-up code. If, when booting, I could detect in some way that the "conversion" was done already, I could skip that part of the code and continue normally. (maybe I can use the oob data of the first block to add a kind of a marker - if marker not set, read the factory bad blocks and move them in flash so they match for the standard driver and set the marker. If marker set, skip moving part, and continue with normal boot code). 
Maybe people on this mailing list have other/better ideas/solutions to deal with this.




Filip


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
