Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OtI1C-0005Aw-Sl
	for barebox@lists.infradead.org; Wed, 08 Sep 2010 10:36:43 +0000
Received: by wwb24 with SMTP id 24so8535481wwb.18
	for <barebox@lists.infradead.org>; Wed, 08 Sep 2010 03:36:41 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <AANLkTinY-pU+97DMxkFddz6qj+ayQh=5nC1Or++A1qfh@mail.gmail.com>
	<20100908094706.GA2847@game.jcrosoft.org>
	<201009081201.01622.jbe@pengutronix.de>
Date: Wed, 08 Sep 2010 12:36:30 +0200
In-Reply-To: <201009081201.01622.jbe@pengutronix.de> (Juergen Beisert's
	message of "Wed, 8 Sep 2010 12:01:01 +0200")
Message-ID: <87sk1kcyj5.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] mach-s3c24xx: Fix compilation problem when make a9m2410
	or a9m2440 defconfig.
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org, Marek Belisko <marek.belisko@open-nandra.com>

>>>>> "Juergen" == Juergen Beisert <jbe@pengutronix.de> writes:

Hi,

 >> >  	prompt "Booting from NAND"
 >> > -	select NAND_S3C24X0
 >> > +	select MTD
 >> > +	select NAND
 >> > +	select NAND_S3C24X0
 >> 
 >> you should be able to boot from nand only if you enable the NAND and not
 >> the invert

 Juergen> Hmm, you can enable NAND support, but you may do not want to
 Juergen> boot from it.  IMHO its correct in this way.

Yes, but you cannot boot from nand unless you have nand support - So I
agree, depends makes more sense.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
