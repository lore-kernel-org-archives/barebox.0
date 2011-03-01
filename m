Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PuQRL-0002rx-HN
	for barebox@lists.infradead.org; Tue, 01 Mar 2011 14:20:41 +0000
Date: Tue, 1 Mar 2011 16:20:25 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20110301142024.GB13983@jasper.tkos.co.il>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00DD7@SRV-VS06.TELEVIC.COM>
	<4D6BC8C7.9090309@pengutronix.de> <4D6BC95B.5030505@pengutronix.de>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E08@SRV-VS06.TELEVIC.COM>
	<6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00E7D@SRV-VS06.TELEVIC.COM>
	<4D6CFE93.40508@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4D6CFE93.40508@pengutronix.de>
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
Subject: Re: scripts
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Marc,

On Tue, Mar 01, 2011 at 03:11:31PM +0100, Marc Kleine-Budde wrote:
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
> > why the scripts are using i.e. [ x$1 = xflash ] instead of just simply [ $1 = flash ] ? Both are doing the same, no ?
> 
> The shell is quite old and doesn't support that. But you're right for
> modern shells like bash or dash.

I get this under bash:

$ [ $UNDEF = test ]
bash: [: =: unary operator expected

However '[ "$UNDEF" = test ]' behaves as expected under bash (but not under 
hush, which is the shell of Barebox).

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
