Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuQDV-0002gA-HT
	for barebox@lists.infradead.org; Tue, 01 Mar 2011 14:06:25 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Tue, 1 Mar 2011 15:06:19 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
	<4D6BC8C7.9090309@pengutronix.de> <4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
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
Subject: RE: scripts
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox-bounces@lists.infradead.org [mailto:barebox-
> bounces@lists.infradead.org] On Behalf Of Vanalme Filip
> Sent: dinsdag 1 maart 2011 9:02
> To: Marc Kleine-Budde
> Cc: barebox@lists.infradead.org
> Subject: RE: scripts
> 
> > -----Original Message-----
> > From: Marc Kleine-Budde [mailto:mkl@pengutronix.de]
> > Sent: maandag 28 februari 2011 17:12
> > To: Vanalme Filip
> > Cc: barebox@lists.infradead.org
> > Subject: Re: scripts
> >
> > On 02/28/2011 05:09 PM, Marc Kleine-Budde wrote:
> > > On 02/28/2011 05:03 PM, Vanalme Filip wrote:
> > >> I'm currently studying some Barebox scripts (i.e. init, boot) and I have noticed
> > something strange with scripts :
> > >>
> > >> barebox:/env/bin echo $bootfile
> > >> zImage
> > >> barebox:/env/bin echo $eth0.serverip
> > >> 10.0.48.80
> > >> barebox:/env/bin cat test
> > >> #!/bin/sh
> > >>
> > >> echo --$eth0.serverip--
> > >> echo --$bootfile--
> > >
> > > try:
> > >
> > > echo --${bootfile}--
> >
> > If that doesn't make a difference, try to "source" the config file in your script, e.g.:
> >
> > source /env/config
> 
> [Filip]
> That's it. I forgot to source the config file. Thanks!
> 

[Filip] 
One more question about barebox scripts (I guess even scripts in general...). This is part of a script from another board (that I took over for my own board):

#!/bin/sh

. /env/config

If [ x$1 = xflash ]; then
	root=flash
	kernel=flash
fi

if [ x$1 = xnet ]; then
	root=net
	kernel=net
fi

why the scripts are using i.e. [ x$1 = xflash ] instead of just simply [ $1 = flash ] ? Both are doing the same, no ?

> >
> > cheers, Marc
> > --
> > Pengutronix e.K.                  | Marc Kleine-Budde           |
> > Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> > Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> > Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
