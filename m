Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgcJ-0004CP-U6
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:56:24 +0000
Date: Thu, 5 Apr 2012 08:56:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120405065619.GX3852@pengutronix.de>
References: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH 0/6] net: minor cleanups & avoid endless retries
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 04, 2012 at 06:04:38PM +0200, Wolfram Sang wrote:
> For scripted update scenarios, endless retries on commands like ping or tftp is
> unwanted. Use a retry now and timeout. Apply minor cleanups found on the way.
> 
> Wolfram Sang (6):
>   net: ping: send PING packets with 1-second interval
>   net: ping: remove unneeded initialization
>   net: tftp: check for error when retrying
>   net: arp_request: do not retry endlessly
>   net: tftp: do not retry endlessly
>   net: ping: do not retry endlessly

Applied, thanks.

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
