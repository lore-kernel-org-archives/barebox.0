Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail13.tpgi.com.au ([203.12.160.181])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P32DU-00013I-Ui
	for barebox@lists.infradead.org; Tue, 05 Oct 2010 07:45:42 +0000
Received: from dev1.localnet (220-244-174-13.static.tpgi.com.au
	[220.244.174.13]) (authenticated bits=0)
	by mail13.tpgi.com.au (envelope-from marc@cpdesign.com.au)
	(8.14.3/8.14.3) with ESMTP id o957jUZX007264
	for <barebox@lists.infradead.org>; Tue, 5 Oct 2010 18:45:34 +1100
From: Marc Reilly <marc@cpdesign.com.au>
Date: Tue, 5 Oct 2010 18:44:37 +1100
MIME-Version: 1.0
Message-Id: <201010051844.37189.marc@cpdesign.com.au>
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
Subject: SD/MMC driver for imx
To: barebox@lists.infradead.org

Hi,

Does anybody happen to be working on a driver for mmc/sd cards for imx(35)?

All I'm really looking for is something simple that can read a kernel image 
off a card, no file system need be involved.

Otherwise, any tips for a good starting point would be appreciated. I was 
thinking of using the uboot driver as a starting point.

Cheers,
Marc

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
