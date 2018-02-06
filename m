Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eiyzL-0003yt-QK
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 08:52:29 +0000
Date: Tue, 6 Feb 2018 09:52:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180206085215.ndvytxn4w32wvyw3@pengutronix.de>
References: <20180129163004.10512-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180129163004.10512-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 00/10] HYP mode handling and RasPi 3 support
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 29, 2018 at 05:29:54PM +0100, Lucas Stach wrote:
> Hi,
> 
> this series allows Barebox to be entered in HYP mode. As the HYP mode
> is a whole different world it just makes sure to install the hooks
> needed to get back into HYP and then switches to SVC mode as fast as
> it can. The kernel is then started in HYP mode by default.
> 
> This is needed in order to get RasPi 3 support in place, where the
> firmware opts to hand us the CPUs in HYP mode.
> 
> I've tested this series on another ARMv7 board, to make sure I didn't
> break something obvious, but I would still welcome some eyeballs on
> this code, as it touches a good deal of the lowlevel code.
>  
> Enrico Joerns (1):
>   ARM: rpi: add revision IDs for Pi 3 Model B and Pi Zero
> 
> Lucas Stach (9):
>   ARM: import opcode helpers from Linux kernel
>   ARM: safely switch from HYP to SVC mode if required
>   ARM: allow secure monitor code to be built without PSCI
>   ARM: add file for HYP mode related setup
>   ARM: don't try to install secure monitor when entered in HYP mode
>   ARM: default to starting kernel in HYP mode when entered in HYP
>   ARM: install HYP vectors at PBL and Barebox entry
>   ARM: rpi: add raspberry pi 3 support
>   ARM: rpi: autosize malloc area

I applied this series for now. Besides on the tests already done by you
I gave it a try on ARMv5 and it doesn't break anything obvious there
aswell.

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
