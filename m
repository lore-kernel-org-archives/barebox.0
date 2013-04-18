Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USnUn-00049d-7X
 for barebox@lists.infradead.org; Thu, 18 Apr 2013 11:59:22 +0000
Date: Thu, 18 Apr 2013 13:59:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130418115918.GG1906@pengutronix.de>
References: <1366188021.710900767@f16.mail.ru>
 <1366201172.161158985@f388.i.mail.ru>
 <20130417122253.GT1906@pengutronix.de>
 <1366283186.701174674@f366.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366283186.701174674@f366.mail.ru>
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
Subject: Re: Boot from SD fail after 2013.02
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Apr 18, 2013 at 03:06:26PM +0400, Alexander Shiyan wrote:
> 
> So. OK, I temporary patch my board and it working now.
> Please forget about correct memory size, it is not true.
> Size is incorrect. Both banks are enabled and size detected as 512M.
> I think this size is programmed by flash_header:
>   { .ptr_type = 4, .addr = 0x83fd9000, .val = 0xb2a20000, },
>   { .ptr_type = 4, .addr = 0x83fd9008, .val = 0xb2a20000, },
> 
> After program NAND and start from NAND, size is still wrong...
> So, what we can do it this case for proper operation? Disable second bank?

When writing the autodetection code I assumed that all boards correctly
setup the SDRAM controller. Appearently I was wrong.

I suggest disabling the second chip select since it's not used on your
board. However, I begin doubting that it was the right decision to
depend on ram size detection.

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
