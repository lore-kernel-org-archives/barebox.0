Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.aruba.it ([62.149.128.201] helo=smtp1.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NXugx-00031T-Pl
	for barebox@lists.infradead.org; Thu, 21 Jan 2010 10:55:16 +0000
Date: Thu, 21 Jan 2010 11:55:00 +0100
Message-Id: <KWLFNO$562DC6F7DC09B93F03CC58E59048B3DD@aruba.it>
MIME-Version: 1.0
From: "Luca Ceresoli" <list@lucaceresoli.net>
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
Subject: Current status of barebox for OMAP3530/beagle
To: barebox@lists.infradead.org

Hi all,

after reading the docs and searching the list, it is still not clear to me how much barebox currently supports OMAP3530 (BeagleBoard in particular).

The omap3530_beagle_per_uart_defconfig is working great as a first stage UART loader, as well as adding a few commands. But I failed to go much further, i.e. to enable NAND support.

Is it expected to be working (and thus worth reporting problems), or is it just like "not done, and not expected to be there anytime soon"?

Thanks,
Luca



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
