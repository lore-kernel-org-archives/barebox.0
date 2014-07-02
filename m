Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X2DNx-0002vu-4h
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 05:47:13 +0000
Date: Wed, 2 Jul 2014 07:46:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140702054650.GT14257@pengutronix.de>
References: <1404248665-15430-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1404248665-15430-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] mii-tool: make the 'No MII transceiver present!' message
 more clear
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 02, 2014 at 01:04:25AM +0400, Antony Pavlov wrote:
> Suppose you have two network controllers.
> The first one is ENC28J60 (it is in low power mode
> after start) the second one is always-enabled eth1.
> 
> As ENC28J60 is in low power mode before enc28j60_eth_open()
> is called. ENC28J60's mii traceiver is in low power mode too
> so the mii traceiver's register are inaccessable.
> 
> Here is a sample log just after barebox start:
> 
>   barebox:/ miitool
>   miibus0: registered phy as /dev/phy0
>     No MII transceiver present!.
>   miibus1: registered phy as /dev/phy1
>   phy1: eth1: negotiated 100baseTx-FD, link ok
>   barebox:/ miitool
>     No MII transceiver present!.
>   phy1: eth1: negotiated 100baseTx-FD, link ok
> 
> The 'No MII transceiver present!.' message is confusing here.
> 
> This patch fixes the problem so the miitool output
> looks like this:
> 
>   barebox:/ miitool
>   phy0: spieth0:  No MII transceiver present!.
>   phy1: eth1: negotiated 100baseTx-FD, link ok
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---

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
