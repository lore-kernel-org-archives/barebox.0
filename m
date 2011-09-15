Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R48Qv-0008DZ-9U
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 09:40:37 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 15 Sep 2011 11:40:32 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD533489C0CE5F5@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
	<4E6F4542.70408@pengutronix.de>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CE326@SRV-VS06.TELEVIC.COM>
	<20110914164353.GA27520@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CE54B@SRV-VS06.TELEVIC.COM>
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD533489C0CE54B@SRV-VS06.TELEVIC.COM>
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
Subject: RE: tftp to flash from linux
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>, Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> Doesn't work:
> 
> mx27iat# mkfifo nand_pipe
> mx27iat# tftp -g -l nand_pipe -r output 10.56.114 | nandwrite -p /dev/mtd4
> nand_pipe
> tftp: using blksize 512MTD_open
> MTD_ioctl

I did some further testing, and apparantly, the nandwrite closes after writing 1 buffer
Did the test with one console "nandwrite -p /dev/mtd4 nand_pipe" and from another echo this is a test > nand_pipe:

mx27iat# nandwrite -p /dev/mtd4 nand_pipe
MTD_open
MTD_ioctl
Writing data to block 0MTD_ioctl

MTD_write
MTD_close

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
