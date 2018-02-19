Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1enevw-0007z8-Hi
 for barebox@lists.infradead.org; Mon, 19 Feb 2018 06:28:18 +0000
Date: Mon, 19 Feb 2018 07:28:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180219062804.wc4yrbeimberen23@pengutronix.de>
References: <ba32e817-48b6-9266-ffd7-d2397d103f7a@arcor.de>
 <20180216075158.srw63pfrlby67oub@pengutronix.de>
 <618668933.3467.1518772537197@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <618668933.3467.1518772537197@mail.vodafone.de>
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
Subject: Re: barebox for a ti am335x based board
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 16, 2018 at 10:15:37AM +0100, Giorgio Dal Molin wrote:
> Hi,
> 
> thank you for the answer, meanwhile I also found the bootinfo
> details in the ~5000 pages am335x datasheet.
> 
> Starting the second stage bootloader (barebox.bin file on the mmc)
> from the MLO also works ('out of the box' actually).

Nice ;) That's the way it should be.

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
