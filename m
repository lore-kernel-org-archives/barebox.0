Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFYmu-0003iP-Gu
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 07:11:07 +0000
Date: Wed, 2 Oct 2019 09:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191002071102.awxxqsbjbvgkskmc@pengutronix.de>
References: <20191001081800.19128-1-primoz.fiser@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001081800.19128-1-primoz.fiser@norik.com>
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
Subject: Re: [PATCH 0/3] usb: Reduce USB scanning time
To: Primoz Fiser <primoz.fiser@norik.com>
Cc: barebox@lists.infradead.org

Hi Primoz,

On Tue, Oct 01, 2019 at 10:17:57AM +0200, Primoz Fiser wrote:
> Hello, 
> 
> Recently we came across an embedded platform which has a very complex           
> USB infrastructure. In total, 17 USB devices are connected over various         
> USB hubs. Initial USB scanning on this platform takes an incredible             
> amounts of time ~22 seconds. This huge delay is unacceptable if we are          
> required to boot from USB and need to perform scanning on each boot-up.         
>                                                                                 
> However this huge USB scanning delay is only apparent in Barebox as             
> subsequent Linux drivers don't take as much time to enumerate the bus.          
> Thus we decided to investigate and try to optimize USB scanning time as         
> much as possible without loosing any functionality & retain stability.          
>                                                                                 
> Code analysis of USB hub driver revealed many calls to mdelay(). Some of         
> them unnecessary and some even longer than 1 second per port, statically           
> placed without any checks if required at all. These delays significantly           
> degrade USB scanning performance and must be reworked.                             
>                                                                                    
> Investigation lead us also to U-boot which was already tested by us on             
> the same i.MX6 platform and didn't show such poor USB performance. We              
> found out U-boot already implements quasi parallel USB scanning                    
> strategy and thus we decided to port this functionality to Barebox.                
>                                                                                    
> We took great deal of ideas and code from U-boot patch series by Stefan            
> Roese: https://lists.denx.de/pipermail/u-boot/2016-March/248493.html               
>                                                                                    
> Although we didn't achieve the same level of delay reduction as reported           
> by Mr. Roese (28.4 to 1.8 seconds), USB scanning in our case now takes             
> around 4.5 seconds (21.7 to 4.5 seconds) which is a significant                    
> improvement!                                                                       
>                                                                                    
> We could take this patch series a step further by also porting patch 3/4           
> "usb: Don't reset the USB hub a 2nd time" from U-boot. But according to            
> comment in Barebox code: "This is a Windows scheme of initialization               
> sequence, with double reset of the device (Linux uses the same                     
> sequence)" we wanted to be safe and left the double device reset                   
> functionality intact for the sake of retaining stability over speed                
> performance.
> 
> All further details on changes are described in each patch description.

This is great stuff! I gave it a shot on an i.MX53 board with a 7port
USB hub and some devices connected. The probing time decreased from 9s
to 2s which is really a great improvement. Even without the hub and only
one device connected the time decreased from 2s to 800ms.

I looked at the patches and they look good to me, so I applied them.
Anyway, it's USB, so I'd be surprised if there are no regressions ;)
So please guys, test the result. And as usual, Other feedback to this
series is still appreciated and it's not too late to fix it up shall
we need to.

Thanks
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
