Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OQawF-0004ge-Fa
	for barebox@lists.infradead.org; Mon, 21 Jun 2010 06:57:00 +0000
Date: Mon, 21 Jun 2010 08:56:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100621065657.GE12115@pengutronix.de>
References: <AANLkTilzfYtRwI1kdFG0O53fRz9NApQnW0P98dZEK-Yo@mail.gmail.com>
	<20100621063247.GB12115@pengutronix.de>
	<AANLkTimItYRXe7D_cBHDCmyVwFQsg7FEoEnsZK_D3N9A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimItYRXe7D_cBHDCmyVwFQsg7FEoEnsZK_D3N9A@mail.gmail.com>
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
Subject: Re: Fat32 support
To: Jose Luis Zabalza <jlz.3008@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 21, 2010 at 08:43:15AM +0200, Jose Luis Zabalza wrote:
> 
> Thanks Sascha. But cp command didn't run on NOR flash . unprotect and
> erase run ok so I thought cp command is not a good command to write on
> NOR flash. I must revise NOR device code when I have time.

It's supposed to run, otherwise it's a bug.

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
