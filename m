Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7HYA-0004Vw-0B
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 06:19:14 +0000
Date: Tue, 23 Jun 2015 08:18:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150623061851.GM6325@pengutronix.de>
References: <20150623000655.25856fe2af2a3143d164cf14@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150623000655.25856fe2af2a3143d164cf14@gmail.com>
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
Subject: Re: Fw: [Qemu-devel] [PATCH v7 0/4] i.MX: Add i.MX25 support through
 the 3DS evaluation board.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Tue, Jun 23, 2015 at 12:06:55AM +0300, Antony Pavlov wrote:
> Hi Sascha!
> 
> AFAIR i.MX chips are your favorite chips.
> 
> There is the qemu i.MX25 support proposal.
> 
> Can we run barebox on this emulated board?

Yes, we have board support for this board. This hasn't been actively
touched for a long time though, so it's quite outdated. Might be worth
giving a try on Qemu. Unfortunately we broke our board a few years ago,
so there's no way for me to test on real hardware anymore.

Sascha

> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
