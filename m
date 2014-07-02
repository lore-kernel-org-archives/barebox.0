Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2DPO-00033L-Lg
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 05:48:43 +0000
Date: Wed, 2 Jul 2014 07:48:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702054820.GU14257@pengutronix.de>
References: <1404248604-15368-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404248604-15368-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 0/2] net: add ENC28J60 support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 02, 2014 at 01:03:22AM +0400, Antony Pavlov wrote:
> Changes since RFC v2:
> 
>   * drop netif_msg_*() debug level checking and packet dump;
>   * invoke eth_register() before enc28j60_hw_init()
>     so dev_dbg() in enc28j60_hw_init() works properly;
>   * free allocated resources on errors in enc28j60_probe()
> 
> 
> Antony Pavlov (2):
>   net.h: add ETH_ALEN constant; fix whitespaces
>   net: add ENC28J60 support

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
