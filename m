Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f83.mail.ru ([217.69.128.229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVgaN-0000Mz-2n
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 11:13:04 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Fri, 26 Apr 2013 15:12:56 +0400
Message-ID: <1366974776.4890563@f83.mail.ru>
In-Reply-To: <20130426104806.GR32299@pengutronix.de>
References: <1366971714-32682-1-git-send-email-shc_work@mail.ru>
 <20130426104806.GR32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtSRkMgb25seV0gQVJNOiBpLk1YOiBGaXggU0RSQU0gc2l6ZSBk?=
 =?UTF-8?B?ZXRlY3Q=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Fri, Apr 26, 2013 at 02:21:54PM +0400, Alexander Shiyan wrote:
> > This is a trying to fix problem described in:
> > http://lists.infradead.org/pipermail/barebox/2013-April/014182.html
> 
> Sorry, can you explain what the problem is and how this patch fixes
> that?
> How I understood it the problem was that your board had the second chip
> select enabled without having sdram connected there leading to a wrong
> size detection.
...
> > +	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, size);
> 
> With this patch you imply that imx_v3_sdram_size does not work which was
> never mentioned in the thread you reference.
> 
> Can you please post:
> 
> - Which values the sdram controller is programmed with
> - How much memory you really have
> - what barebox detects

Values for ESDCTL is programmed by DCD-data from flash_header.
Currently both channels are enabled and configured to 256M.
Barebox is NOT detect size of memory, it just a read back these values.
At least on every i.MX51 this is not works correctly. In any words:
How much we specify in flash_header, this is our "detected" size.
I have a two modules (256M and 512M), barebox works when I
manually disable second SDRAM bank and of course say me
256M on both modules.

In the patch I am just choose 128M as safe size, then add additional
banks. Of course this is wrong if we have repeated memory and/or
holes, but I cannot see any other way at now...

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
