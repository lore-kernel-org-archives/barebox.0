Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R47SP-0007Ag-RU
	for barebox@lists.infradead.org; Thu, 15 Sep 2011 08:38:06 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 15 Sep 2011 10:38:02 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD533489C0CE54B@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
	<4E6F4542.70408@pengutronix.de>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CE326@SRV-VS06.TELEVIC.COM>
	<20110914164353.GA27520@sapphire.tkos.co.il>
In-Reply-To: <20110914164353.GA27520@sapphire.tkos.co.il>
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
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> > I try
> > 	mx27iat# tftp -g -l /proc/self/fd/1 -r zImage_iat_3.0.11_0.02-dbg1
> > 10.0.56.4 | nandwrite -p /dev/mtd4 -
> >
> > But this doesn't work. Gives some output, from which:
> > 	open input file: No such file or directory The same command without
> > the pipe at the end works (output to stdout)
> 
> Try passing the data via a named pipe:
> 
> mkfifo nand_pipe
> tftp -g -l nand_pipe -r zImage 10.0.56.4 & nandwrite -p /dev/mtd4 nand_pipe
> 


Doesn't work:

mx27iat# mkfifo nand_pipe
mx27iat# tftp -g -l nand_pipe -r output 10.56.114 | nandwrite -p /dev/mtd4 nand_pipe
tftp: using blksize 512MTD_open
MTD_ioctl

using server '10.0.56.114:69', rMTD_ioctl
emote_file 'output', local_file MTD_write
'nand_pipe'
sending 15 bytes
00 01 6f 75 74 70 75 74 00 6f 63 MTD_close
74 65 74 00
Writing data to block 0
sending 15 bytes
00 01 6f 75 74 70 75 74 00 6f 63 74 65 74 00
received 516 bytes: 0003 0001

End then it quits, no error, no warning, but file should be 128kB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
