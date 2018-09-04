Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fx4w4-00060w-U8
 for barebox@lists.infradead.org; Tue, 04 Sep 2018 06:35:38 +0000
Date: Tue, 4 Sep 2018 08:35:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180904063524.3yuvgpwvjetkx3p2@pengutronix.de>
References: <20180829072153.13428-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180829072153.13428-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] bbu: Look for default handler in
 barebox_update_handler_exists()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Aug 29, 2018 at 12:21:52AM -0700, Andrey Smirnov wrote:
> Convert barebox_update_handler_exists() to treat struct bbu_data with
> both "handler_name" and "devicefile" set to NULL as a specifier for
> default update handler in order to support such use-case for
> "barebox_update" and fix a recent regression.
> 
> This change shouldn't affect another user of
> barebox_update_handler_exists(), cb_flash() in
> drivers/usb/gadget/f_fastboot.c, since that function explicitly
> specifies "devicefile".
> 
> Fixes 0ac96ab6e ("bbu: command: Make sure specified update handler exists")

I dropped 0ac96ab6e for now, so you are free to implement a proper
solution on top of current next branch.

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
