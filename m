Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y86W4-0005Cx-UP
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 12:12:14 +0000
Date: Mon, 5 Jan 2015 13:11:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105121150.GC4544@pengutronix.de>
References: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
 <1420142663-6243-2-git-send-email-robert.jarzmik@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1420142663-6243-2-git-send-email-robert.jarzmik@free.fr>
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
Subject: Re: [PATCH] net: smc1111: fix memory congestions
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Jan 01, 2015 at 09:04:22PM +0100, Robert Jarzmik wrote:
> As the SMC1111 has a shared pool of 2k memory buckets for both
> transmission and reception, and as there are variants which have as few
> as 4 buckets in total, the memory pool can be hogged by unclaimed
> receptions, and impeed any further transmission.
> 
> This happens on the zylonite pxa board, where 4 packets, most probably
> icmp and arp, fill the 4 buckets, preventing any further ethernet
> transmission, and stalling the driver.
> 
> The fix is rather rough : whenever all the buckets are filled by
> reception packets, and if a transmission is required, the transmission
> code path will empty up all received packets.

I don't know the hardware (not anymore, fortunately ;), but isn't it
possible to dedicate one bucket for transmitting only, so that it will
never be occupied by a received packet?

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
