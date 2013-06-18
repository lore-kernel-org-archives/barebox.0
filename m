Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uovl5-00006L-A5
 for barebox@lists.infradead.org; Tue, 18 Jun 2013 13:15:40 +0000
Message-ID: <1371561189.10579.3.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jun 2013 15:13:09 +0200
In-Reply-To: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
References: <E78BBE677EB9144B8F0A0A29674CD5338ED01639D6@SRV-VS06.TELEVIC.COM>
Mime-Version: 1.0
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
Subject: Re: Barebox fails to boot 1/40 boots...
To: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Dienstag, den 18.06.2013, 14:59 +0200 schrieb Vanhauwaert Wouter:
> Hello all,
> 
> I have this issue with our custom design (IMX53, NAND, DDR3)
> 
> Everything goes well most of the time, but now and then  the system does not boot and halts during initialization... 
> To be more specific, the function on which the system blocks is 'setup_c()' in arch/arm/cpu/start-pbl.c
> 
> What can I do more to debug this? This function is completely in assembler...
> 
> Grtz,
> Wouter
> 

First of all: what barebox version are you running?

System crash in setup_c() smells suspiciously like the unclean cache
issue which was fixed with the 2013.05.1 release.

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
