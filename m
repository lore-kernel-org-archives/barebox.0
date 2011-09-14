Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R3sZB-0005sd-37
	for barebox@lists.infradead.org; Wed, 14 Sep 2011 16:44:06 +0000
Date: Wed, 14 Sep 2011 19:43:54 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110914164353.GA27520@sapphire.tkos.co.il>
References: <E78BBE677EB9144B8F0A0A29674CD533489C0CDC8A@SRV-VS06.TELEVIC.COM>
	<20110913114353.GA25206@sapphire.tkos.co.il>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CDCAF@SRV-VS06.TELEVIC.COM>
	<4E6F4542.70408@pengutronix.de>
	<E78BBE677EB9144B8F0A0A29674CD533489C0CE326@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD533489C0CE326@SRV-VS06.TELEVIC.COM>
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
Subject: Re: tftp to flash from linux
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Sep 14, 2011 at 05:03:07PM +0200, Vanhauwaert Wouter wrote:
> > You need a tftp client that supports writing to stdout and a nandwrite 
> > that
> > supports reading from stdin.
> > 
> > Than it's the usual
> > 
> > tftp $server $file | nandwrite /dev/mtdfoo -
> 
> I try 
> 	mx27iat# tftp -g -l /proc/self/fd/1 -r zImage_iat_3.0.11_0.02-dbg1 10.0.56.4 | nandwrite -p /dev/mtd4 -
> 
> But this doesn't work. Gives some output, from which:
> 	open input file: No such file or directory
> The same command without the pipe at the end works (output to stdout)

Try passing the data via a named pipe:

mkfifo nand_pipe
tftp -g -l nand_pipe -r zImage 10.0.56.4 &
nandwrite -p /dev/mtd4 nand_pipe

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
