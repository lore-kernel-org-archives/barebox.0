Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZICEK-0003XB-9E
 for barebox@lists.infradead.org; Thu, 23 Jul 2015 08:51:52 +0000
Date: Thu, 23 Jul 2015 10:51:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150723085128.GG18700@pengutronix.de>
References: <1437427428-24176-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437427428-24176-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] net: eth_send: Allow to use multiple network interfaces
 at once
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jul 21, 2015 at 12:23:48AM +0300, Antony Pavlov wrote:
> The commit
> 
> commit be0404c21f22da2d736168b2e56a9ae583cc3e95
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Wed May 14 16:08:04 2014 +0200
> 
>     net: Allow to use multiple network interfaces at once
> 
> changes the eth_send() function:
> 
> -       return eth_current->send(eth_current, packet, length);
> +       return edev->send(eth_current, packet, length);
> 
> But we have to change the both eth_current occurrences to edev here!
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

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
