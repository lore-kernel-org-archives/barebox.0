Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vw0-f49.google.com ([209.85.212.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QXegs-0000pg-0E
	for barebox@lists.infradead.org; Fri, 17 Jun 2011 19:26:51 +0000
Received: by vws8 with SMTP id 8so1475649vws.36
	for <barebox@lists.infradead.org>; Fri, 17 Jun 2011 12:26:47 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 17 Jun 2011 21:26:46 +0200
Message-ID: <BANLkTi=DFpLyEQwe62KSjYUn+pGPxPe1CQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Subject: booting pandaboard rev A2 problems
To: barebox@lists.infradead.org

Hi,

I'm trying to boot barebox on Panda rev. A2.

I make panda_xload_defconfig compile and put to FAT SD card partition
ranamed barebox.bin to u-boot.bin (MLO reads u-boot.bin by default).

Barebox start but after printing revision number is stuck. I add some
printks and
seems it hang in omap_hsmmc_probe funtion after mci_register(&hsmmc->mci) call.

I try with 2 SD cards and non of them is working.

Also try to load to flash partition only barebox.bin.itf + barebox.bin
but this setup also
doesn't work. AFAIU itf add some data before barebox to be possible to
boot directly without
x-loader. When run_shell is called barebox.bin should be copied do
DDRAM and run.

Any ideas what should I check.

Thanks in advance,

marek


-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
