Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pu4en-0003Ex-8Y
	for barebox@lists.infradead.org; Mon, 28 Feb 2011 15:05:06 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Mon, 28 Feb 2011 16:05:01 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DC1@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D51@SRV-VS06.TELEVIC.COM>
	<20110228084753.GH2667@jasper.tkos.co.il>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D61@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00D61@SRV-VS06.TELEVIC.COM>
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
To: Vanalme Filip <F.Vanalme@TELEVIC.com>, Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org [mailto:barebox-
> bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> Sent: maandag 28 februari 2011 9:57
> To: Baruch Siach
> Cc: barebox@lists.infradead.org
> Subject: RE: partitions
> 
> > -----Original Message-----
> > From: Baruch Siach [mailto:baruch@tkos.co.il]
> > Sent: maandag 28 februari 2011 9:48
> > To: Vanalme Filip
> > Cc: barebox@lists.infradead.org
> > Subject: Re: partitions
> >
> > HI Vanalme,
> >
> > On Mon, Feb 28, 2011 at 09:36:14AM +0100, Vanalme Filip wrote:
> > > barebox:/ erase /dev/nand0.kernel.bb
> > > stat /dev/nand0.kernel.bb: No such file or directory
> > > barebox:/
> > >
> > > and
> > >
> > > barebox:/ tftp zImage /dev/nand0.kernel.bb
> > > open: Read-only file system
> > > barebox:/
> > >
> > >
> > > Is there any documentation that handles/describes this ? (e.g. what's the
> > extension .bb ?)
> >
> > The .bb extension means a bad block aware partition. Use the 'nand -a'
> command
> > to create one from a raw NAND partition, e.g. 'nand -a /dev/nand0.kernel'.
> >
> > baruch
> 
> [Filip]  Thanks !
> 

[Filip]  Shouldn't I have automatically /dev/mtdblock* devices, e.g. /dev/mtdblock7 for rootfs nand partition ?
> 
> >
> > --
> >                                                      ~. .~   Tk Open Systems
> > =}------------------------------------------------ooO--U--Ooo------------{=
> >    - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
