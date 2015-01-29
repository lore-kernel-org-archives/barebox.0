Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGjo0-0002EN-RK
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 07:46:26 +0000
Date: Thu, 29 Jan 2015 08:46:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129074601.GR12209@pengutronix.de>
References: <1422497125-21734-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422497125-21734-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] usb: abolish wait_ms() function
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 29, 2015 at 11:05:25AM +0900, Masahiro Yamada wrote:
> This function is only used in drivers/usb/*.
> It is equivalent to mdelay().
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>

I saw this more than once but for some reason never created a patch.
Thanks for fixing this.

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
