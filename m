Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ptyuh-0007oE-HC
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 08:57:08 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 28 Feb 2011 09:57:04 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D61@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D51@SRV-VS06.TELEVIC.COM>
	<20110228084753.GH2667@jasper.tkos.co.il>
In-Reply-To: <20110228084753.GH2667@jasper.tkos.co.il>
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
Subject: RE: partitions
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Baruch Siach [mailto:baruch@tkos.co.il]
> Sent: maandag 28 februari 2011 9:48
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: partitions
> 
> HI Vanalme,
> 
> On Mon, Feb 28, 2011 at 09:36:14AM +0100, Vanalme Filip wrote:
> > barebox:/ erase /dev/nand0.kernel.bb
> > stat /dev/nand0.kernel.bb: No such file or directory
> > barebox:/
> >
> > and
> >
> > barebox:/ tftp zImage /dev/nand0.kernel.bb
> > open: Read-only file system
> > barebox:/
> >
> >
> > Is there any documentation that handles/describes this ? (e.g. what's the
> extension .bb ?)
> 
> The .bb extension means a bad block aware partition. Use the 'nand -a' command
> to create one from a raw NAND partition, e.g. 'nand -a /dev/nand0.kernel'.
> 
> baruch

[Filip]  Thanks !


> 
> --
>                                                      ~. .~   Tk Open Systems
> =}------------------------------------------------ooO--U--Ooo------------{=
>    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
