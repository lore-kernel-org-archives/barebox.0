Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uovq5-0000ME-C2
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 13:20:49 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Tue, 18 Jun 2013 15:20:27 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338ED0163A0C@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
 <1371561189.10579.3.camel@weser.hi.pengutronix.de>
In-Reply-To: <1371561189.10579.3.camel@weser.hi.pengutronix.de>
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
Subject: RE: Barebox fails to boot 1/40 boots...
To: Lucas Stach <l.stach@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

>  -----Original Message-----
> From: Lucas Stach [mailto:l.stach@pengutronix.de]
> Sent: dinsdag 18 juni 2013 15:13
> To: Vanhauwaert Wouter
> Cc: barebox@lists.infradead.org
> Subject: Re: Barebox fails to boot 1/40 boots...
> 
> Am Dienstag, den 18.06.2013, 14:59 +0200 schrieb Vanhauwaert Wouter:
> > Hello all,
> >
> > I have this issue with our custom design (IMX53, NAND, DDR3)
> >
> > Everything goes well most of the time, but now and then  the system does not
> boot and halts during initialization...
> > To be more specific, the function on which the system blocks is
> > 'setup_c()' in arch/arm/cpu/start-pbl.c
> >
> > What can I do more to debug this? This function is completely in assembler...
> >
> > Grtz,
> > Wouter
> >
> 
> First of all: what barebox version are you running?
> 
> System crash in setup_c() smells suspiciously like the unclean cache issue which
> was fixed with the 2013.05.1 release.
> 

I'm using stable/v2013.05

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
