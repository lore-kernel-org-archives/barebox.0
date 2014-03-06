Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WLXIU-0005h1-Tx
 for barebox@lists.infradead.org; Thu, 06 Mar 2014 12:21:11 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Thu, 6 Mar 2014 13:20:47 +0100
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D94D@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D2DF@SRV-VS06.TELEVIC.COM>
 <20140306095541.GY17250@pengutronix.de>
 <E78BBE677EB9144B8F0A0A29674CD5338F93D8D897@SRV-VS06.TELEVIC.COM>
 <20140306101826.GA17250@pengutronix.de>
 <E78BBE677EB9144B8F0A0A29674CD5338F93D8D937@SRV-VS06.TELEVIC.COM>
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338F93D8D937@SRV-VS06.TELEVIC.COM>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: at91sam9260-ek ...
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> Vanhauwaert Wouter
> Sent: donderdag 6 maart 2014 13:04
> To: Sascha Hauer
> Cc: barebox@lists.infradead.org
> Subject: RE: at91sam9260-ek ...
> 
> 
> > I'd probably start at somewhere near:
> >
> > ecdb717 at91/boards: switch to software ecc as in linux kernel
> >
> > But I don't know if that version really works.
> >
> > (If you don't know already, you can always start barebox second stage from an
> > already running barebox, normally you shouldn't have to reflash for each
> > bisecting step. Something like "tftp barebox.bin /dev/ram0; go /dev/ram0"
> > should work.)
> >
> 
> I did some tests and seems that it worked ok until version release 2013.08.0,
> from 2013.09.0 on it gives me these errors...
> 

Between 2013.09.0 and 2013.08.0 there's much changed in the mtd driver... Also in atmel_nand.c, 2 parameters (int oob_required, int page) are added to the page operations.
Although nothing is done with it. I don't know what's going on further. I'll just stick with 2013.08.0 for now, I think it'll just fit my needs. Maybe somebody who knows what's going on can take a look at it?

Grtz,
Wouter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
