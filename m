Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMgB-0006CB-Ai
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 13:16:00 +0000
Date: Tue, 15 Oct 2019 15:15:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191015131556.ynrdf3pnbtrpj3c6@pengutronix.de>
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
 <20191015075549.4380-3-s.hauer@pengutronix.de>
 <2f77c25e-392c-3c4e-3298-5792d7aa072c@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f77c25e-392c-3c4e-3298-5792d7aa072c@pengutronix.de>
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
Subject: Re: [PATCH 2/5] scripts: Add rsatoc tool
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Oct 15, 2019 at 12:21:31PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 10/15/19 9:55 AM, Sascha Hauer wrote:
> > The rsatoc tool converts rsa public keys into C structs suitable to
> > compile with barebox. Most of the openssl rsa related stuff has been
> > taken from the U-Boot mkimage tool.
> 
> I don't have any FIT image or RSA options enabled, yet my build fails now with:
> 
>   RSAKEY  crypto/rsa-keys.h                                                                                     
> /bin/sh: 1: ./scripts/rsatoc: not found                           
> ./crypto/Makefile:27: recipe for target 'crypto/rsa-keys.h' failed
> make[2]: *** [crypto/rsa-keys.h] Error 127                                                                      
> ./Makefile:802: recipe for target 'crypto' failed                 
> make[1]: *** [crypto] Error 2                                                                                  

Try again.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
