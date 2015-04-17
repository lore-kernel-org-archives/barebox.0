Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiyqV-0006g1-Kx
 for barebox@lists.infradead.org; Fri, 17 Apr 2015 05:29:44 +0000
Date: Fri, 17 Apr 2015 07:29:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150417052919.GE6325@pengutronix.de>
References: <1429210845-5402-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429210845-5402-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] i2c: mv64xxx: continue probe when clock-frequency is
 missing
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Apr 16, 2015 at 10:00:45PM +0300, Antony Pavlov wrote:
> Based on this linux kernel commit:
> 
>     commit 0ce4bc1dbdd911ae1763e2d4ff36bd1b214a59f7
>     Author: Chen-Yu Tsai <wens@csie.org>
>     Date:   Mon Sep 1 22:28:13 2014 +0800
> 
>         i2c: mv64xxx: continue probe when clock-frequency is missing
> 
>         The "clock-frequency" DT property is listed as optional, However,
>         the current code stores the return value of of_property_read_u32 in
>         the return code of mv64xxx_of_config, but then forgets to clear it
>         after setting the default value of "clock-frequency". It is then
>         passed out to the main probe function, resulting in a probe failure
>         when "clock-frequency" is missing.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/i2c/busses/i2c-mv64xxx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

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
