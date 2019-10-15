Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKMk6-0006ox-L3
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 13:20:04 +0000
References: <20191015075549.4380-1-s.hauer@pengutronix.de>
 <20191015075549.4380-3-s.hauer@pengutronix.de>
 <2f77c25e-392c-3c4e-3298-5792d7aa072c@pengutronix.de>
 <20191015131556.ynrdf3pnbtrpj3c6@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <054f6407-206e-bb74-fe97-0023a2577554@pengutronix.de>
Date: Tue, 15 Oct 2019 15:19:59 +0200
MIME-Version: 1.0
In-Reply-To: <20191015131556.ynrdf3pnbtrpj3c6@pengutronix.de>
Content-Language: en-US
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10/15/19 3:15 PM, Sascha Hauer wrote:
> On Tue, Oct 15, 2019 at 12:21:31PM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 10/15/19 9:55 AM, Sascha Hauer wrote:
>>> The rsatoc tool converts rsa public keys into C structs suitable to
>>> compile with barebox. Most of the openssl rsa related stuff has been
>>> taken from the U-Boot mkimage tool.
>>
>> I don't have any FIT image or RSA options enabled, yet my build fails now with:
>>
>>   RSAKEY  crypto/rsa-keys.h                                                                                     
>> /bin/sh: 1: ./scripts/rsatoc: not found                           
>> ./crypto/Makefile:27: recipe for target 'crypto/rsa-keys.h' failed
>> make[2]: *** [crypto/rsa-keys.h] Error 127                                                                      
>> ./Makefile:802: recipe for target 'crypto' failed                 
>> make[1]: *** [crypto] Error 2                                                                                  
> 
> Try again.

Works, thanks.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
