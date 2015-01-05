Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y85vc-000742-KN
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 11:34:33 +0000
Date: Mon, 5 Jan 2015 12:34:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105113410.GT30369@pengutronix.de>
References: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/6] ARM: introduce debug_ll_pl011.h
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 27, 2014 at 02:56:23AM +0300, Antony Pavlov wrote:
> Antony Pavlov (6):
>   ARM: introduce debug_ll_pl011.h
>   ARM: vexpress: debug_ll.h: switch to debug_ll_pl011.h
>   ARM: highbank: debug_ll.h: switch to debug_ll_pl011.h
>   ARM: versatile: enable missed HAS_DEBUG_LL
>   ARM: versatile: debug_ll.h: switch to debug_ll_pl011.h
>   ARM: bcm2835: add DEBUG_LL support

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
