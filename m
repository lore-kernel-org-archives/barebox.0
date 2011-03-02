Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuhY2-0001lf-8B
	for barebox@lists.infradead.org; Wed, 02 Mar 2011 08:36:43 +0000
From: Vanalme Filip <F.Vanalme@TELEVIC.com>
Date: Wed, 2 Mar 2011 09:36:38 +0100
Message-ID: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00ED6@SRV-VS06.TELEVIC.COM>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
	<4D6BC8C7.9090309@pengutronix.de> <4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
	<4D6CFE93.40508@pengutronix.de>
In-Reply-To: <4D6CFE93.40508@pengutronix.de>
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
> From: Marc Kleine-Budde [mailto:mkl@pengutronix.de]
> Sent: dinsdag 1 maart 2011 15:12
> To: Vanalme Filip
> Cc: barebox@lists.infradead.org
> Subject: Re: scripts
> 
> On 03/01/2011 03:06 PM, Vanalme Filip wrote:
> [...]
> 
> > One more question about barebox scripts (I guess even scripts in
> > general...). This is part of a script from another board (that I took
> > over for my own board):
> 
> > #!/bin/sh
> >
> > . /env/config
> >
> > If [ x$1 = xflash ]; then
> > 	root=flash
> > 	kernel=flash
> > fi
> >
> > if [ x$1 = xnet ]; then
> > 	root=net
> > 	kernel=net
> > fi
> >
> > why the scripts are using i.e. [ x$1 = xflash ] instead of just simply [ $1 = flash ] ?
> Both are doing the same, no ?
> 
> The shell is quite old and doesn't support that. But you're right for modern shells
> like bash or dash.

[Filip] 
When I do :
barebox:/ echo "this is \"quoted text\""

I get :
barebox:/ this is \"quoted text\"

I would have expected this :
barebox:/ this is "quoted text"

It looks like the escape character is not working as expected.
When I have this in my boot script :
bootargs="$bootargs mtdparts=\"physmap-flash.0:$nor_parts;mxc_nand:$nand_parts\""

Will this work correctly ? Will the mtdparts be passed correctly to the kernel ? (I guess the escape character will remain, so I think it might be an problem, no?)

> 
> cheers, Marc
> 
> --
> Pengutronix e.K.                  | Marc Kleine-Budde           |
> Industrial Linux Solutions        | Phone: +49-231-2826-924     |
> Vertretung West/Dortmund          | Fax:   +49-5121-206917-5555 |
> Amtsgericht Hildesheim, HRA 2686  | http://www.pengutronix.de   |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
