Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RlJjN-00037F-Sj
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 12:26:10 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 12 Jan 2012 12:26:02 +0000
Message-ID: <E28AAFD00EFAA646AE3DF9B89CD24A89317F3290@DBDE01.ent.ti.com>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
 <1326303284-14444-2-git-send-email-premi@ti.com>
 <20120112092853.GZ5446@pengutronix.de>
In-Reply-To: <20120112092853.GZ5446@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
> Sent: Thursday, January 12, 2012 2:59 PM
> To: Premi, Sanjeev
> Cc: barebox@lists.infradead.org; Jean-Christophe PLAGNIOL-VILLARD
> Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
> 
> On Wed, Jan 11, 2012 at 11:04:44PM +0530, Sanjeev Premi wrote:
> > Don't display any verbose message on the console.
> 
> We already have pr_info and friends which right now all fall
> back to printf. Instead of adding an ifdef for each conditional
> printf how about making pr_* configurable? Something like this:
> 
> #if (CONFIG_LOGLEVEL > 6)
> #define pr_info(fmt, arg...) printf(fmt, ##arg)
> #else
> #define pr_info(fmt, arg...)	do {} while(0)
> #endif
> #if (CONFIG_LOGLEVEL > 5)
> #define pr_notice(fmt, arg...)	printf(fmt, ##arg)
> #else
> #define pr_notice(fmt, arg...)    do {} while(0)
> #endif
> 
> BTW you seem to be very concerned about the codesize in the xloader

Yes. Esp. what makes the code "big" when compared to the original
x-loader for omap3. Idea was to identify portions of code that
isn't getting used - at all (or most of the time).

> environments, which I can understand. How about giving my 
> thumb2 patches
> a try?

I will. Just located the patches in my mailbox.

I return to OMAP3 and barebox in my free time - which isn't too
often; but I should be able to try these patches by end of this
week.

In fact, the code changes for this RFC were done in NOV - just
couldn't post because I couldn't write detailed changelong
explaining the motivation.

~sanjeev

> 
> panda_xload_defconfig:
> -rwxr-xr-x 1 sha ptx 41272 Jan 12 10:25 barebox.bin
> 
> panda_xload_defconfig in thumb2 mode:
> -rwxr-xr-x 1 sha ptx 30348 Jan 12 10:25 barebox.bin
> 
> To merge these I'm currently waiting for Jean-Christophes OK on
> 
> ARM: move exception vectors away from start of binary
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                  
>            |
> Industrial Linux Solutions                 | 
> http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: 
> +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   
> +49-5121-206917-5555 |
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
