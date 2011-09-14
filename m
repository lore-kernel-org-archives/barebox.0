Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3qzW-0003jY-CR
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 15:03:10 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 14 Sep 2011 17:03:07 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD533489C0CE326@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
	<4E6F4542.70408@pengutronix.de>
In-Reply-To: <4E6F4542.70408@pengutronix.de>
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
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> please don't reply to an existing thread if you start a new topic!
> 

Ok (did I do that?)

> You need a tftp client that supports writing to stdout and a nandwrite that
> supports reading from stdin.
> 
> Than it's the usual
> 
> tftp $server $file | nandwrite /dev/mtdfoo -
> 

I try 
	mx27iat# tftp -g -l /proc/self/fd/1 -r zImage_iat_3.0.11_0.02-dbg1 10.0.56.4 | nandwrite -p /dev/mtd4 -

But this doesn't work. Gives some output, from which:
	open input file: No such file or directory
The same command without the pipe at the end works (output to stdout)
 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
