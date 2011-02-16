Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail12.tpgi.com.au ([203.12.160.162])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Ppo4U-0002jE-Go
	for barebox@lists.infradead.org; Wed, 16 Feb 2011 20:33:59 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Thu, 17 Feb 2011 07:34:34 +1100
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00817@SRV-VS06.TELEVIC.COM>
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9017FF3B00817@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Message-Id: <201102170734.34357.marc@cpdesign.com.au>
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
Subject: Re: PMIC device driver
To: barebox@lists.infradead.org
Cc: Vanalme Filip <F.Vanalme@televic.com>


Hi,

> > indicate the register within the PMIC to read/write. On the other hand,
> > the standard read and write functions only take 3 parameters (device,
> > buffer, buffersize). How do I pass that offset to these functions ? How
> > do I use the PMIC device driver ?
> > (Maybe this is a general Linux device driver question, but I'm not that
> > familiar with device drivers, so...)

I'd be using the pmic_read_reg and pmic_write_reg functions (they should be 
renamed and exported first though.)

Have a look at the mc13892 driver ..

> > 
> > Is it the best way to do it like this (open, read, write), or do I better
> > call those functions directly ? (I have to set the PMIC registers in the
> > "late_init" function of the barebox startup sequence)

... and the freescale-mx35-3stack for example.


> 
> [Filip] Think I found how it works. I have to use the normal read, write
> and lseek functions to read/write PMIC registers. 

As I said above, I reckon your board code will be cleaner if you skip the file 
I/O and use the _read_reg and _write_reg functions directly.


> The 'offset' and 'flag'
> parameters in read and write functions are for internal use only. Correct.
> When reading, an internal index is incremented. A following read starts
> where the previous ended. With lseek, one can move that index to address
> the correct register. Right ?
In general, yes.


HTH,

Cheers
Marc


> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
