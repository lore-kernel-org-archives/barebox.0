Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rql4i-0001ht-24
 for barebox@lists.infradead.org; Fri, 27 Jan 2012 12:38:41 +0000
Date: Fri, 27 Jan 2012 13:38:32 +0100
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20120127123832.GG5446@pengutronix.de>
References: <4F229A11.8020102@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4F229A11.8020102@pengutronix.de>
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
Subject: Re: mx35-3stack 124MiByte RAM
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox mailing list <barebox@lists.infradead.org>

On Fri, Jan 27, 2012 at 01:35:29PM +0100, Marc Kleine-Budde wrote:
> >  
> > -	register_device(&sdram_dev);
> > +	sdram_dev = add_mem_device("ram0", IMX_SDRAM_CS0, 124 * 1024 * 1024,
>                                                           ^^^
> 
> What happened to the upper 4 MiByte?

This was changed in a unrelated patch. Probably a type. This is fixed in
-next since:

commit fc3a2cdcabbbd57c5b1aa018368efd1905256dc1
Author: Roman Fietze <roman.fietze@telemotive.de>
Date:   Wed Apr 27 10:38:46 2011 +0200

    ARM i.MX freescale-mx35-3-stack: support 256 MiB RAM
    
    Extend DCD table and low level init routines. Add barebox SDRAM
    device. Also, fix the memory size for bank 0 to 128MB. It was
    accidently changed to 124MB here:
    
    commit f928efa818adfe56a08350569a9b0f3c2fb791d2
    Author: Sascha Hauer <s.hauer@pengutronix.de>
    Date:   Tue Jul 19 09:58:32 2011 +0200
    
        add a add_mem_device function
    
        Add a helper function for boards to register their memory
        devices. This makes the board code smaller and also helps
        getting rid of map_base and struct memory_platform_data.
    
        And switch all of the memory to it
    
    Signed-off-by: Roman Fietze <roman.fietze@telemotive.de>
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
