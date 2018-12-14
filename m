Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXpOu-0008W9-7o
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 15:29:17 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1gXpOg-0003I8-Tz
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:29:02 +0100
References: <20181214152305.30412-1-a.fatoum@pengutronix.de>
 <20181214152305.30412-2-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ef23a991-be38-c018-3bf6-1940de7a3e6c@pengutronix.de>
Date: Fri, 14 Dec 2018 16:29:02 +0100
MIME-Version: 1.0
In-Reply-To: <20181214152305.30412-2-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/2] net: fec_imx: fix timeout off by *1000 error
To: barebox@lists.infradead.org

Hello,

I didn't change read*_poll_timeout to take nanoseconds because it is copied
over from Linux.

On 14/12/18 16:23, Ahmad Fatoum wrote:
> read*_poll_timeout's final timeout parameter is in microseconds,
> but the supplied arguments in fec_imx.c were in nanoseconds,
> which might lead to barebox getting seemingly stuck in fec_halt
> (loops for a thousand seconds instead of one).

So, how about dropping the (U|M|)SECOND defines in include/clock.h and replace
them across the tree by the corresponding NSEC_PER_(U|M|)SEC?

I find them more readable and they would avoid such mistakes in future.

Cheers
Ahmad

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
