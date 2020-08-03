Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2iNA-0004Om-Di
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 21:51:58 +0000
Date: Mon, 3 Aug 2020 23:51:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200803215154.GS31536@pengutronix.de>
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
 <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
 <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
 <CAKd8=GsqcUz23Rc81ZFJ5R1TzofXcJd+HGGE0u=UZyRsvZh_-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKd8=GsqcUz23Rc81ZFJ5R1TzofXcJd+HGGE0u=UZyRsvZh_-Q@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Lars,

On Thu, Jul 30, 2020 at 12:16:14PM +0200, Lars Pedersen wrote:

> CONFIG_DEBUG_IMX_UART_PORT=1
> CONFIG_HAS_DEBUG_LL=y

This config still has CONFIG_DEBUG_IMX_UART_PORT=1. You probably sent
this before you changed it to '4', right? Otherwise this might be the
issue.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
