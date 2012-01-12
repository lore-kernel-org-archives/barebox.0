Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlIIU-0007AA-RY
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 10:54:19 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BBAAEFFB8D5
 for <barebox@lists.infradead.org>; Thu, 12 Jan 2012 11:55:38 +0100 (CET)
Date: Thu, 12 Jan 2012 11:54:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120112105413.GB13145@game.jcrosoft.org>
References: <1326303284-14444-1-git-send-email-premi@ti.com>
 <1326303284-14444-2-git-send-email-premi@ti.com>
 <20120112092853.GZ5446@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120112092853.GZ5446@pengutronix.de>
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
Subject: Re: [RFC 2/2] ARM omap: Add CONFIG_SILENT
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:28 Thu 12 Jan     , Sascha Hauer wrote:
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
> environments, which I can understand. How about giving my thumb2 patches
> a try?
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
does not work on at91 yet

I'm working on the modification to make it work


I'll send a first version of the at91 bootstrap soon without this modifcation
and then fix it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
