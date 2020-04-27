Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSynZ-0003Gn-Ju
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 08:07:30 +0000
Date: Mon, 27 Apr 2020 10:07:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200427080727.GO5877@pengutronix.de>
References: <20200427071351.467859-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427071351.467859-1-ahmad@a3f.at>
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
Subject: Re: [PATCH 1/3] ARM: i.MX: boot: correctly handle SRC_SBMR1 override
 via SRC_GPR9
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Mon, Apr 27, 2020 at 09:13:49AM +0200, Ahmad Fatoum wrote:
> `mw 0x20d8040 0x08000030; mw 0x20d8044 0x10000000; reset` issued on an
> i.MX6Q forces boot from the ecspi1. This is because the BootROM reads
> the boot mode out of SRC_GPR9 instead of SRC_SBMR1 whenever SRC_GPR10
> has its 28th bit set.

Is this documented somewhere? The reference Manual marks SRC_GPR9 and
SRC_GPR10 as

| This register is used by the ROM code and should not be used
| by application software.

And why do you depend on this behaviour?

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
