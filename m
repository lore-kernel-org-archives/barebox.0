Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWMef-0004rf-IX
 for barebox@lists.infradead.org; Mon, 21 May 2012 07:03:46 +0000
Date: Mon, 21 May 2012 09:03:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521070341.GX30400@pengutronix.de>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH V5 0/9] MPC85xx support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

Hi Renaud,

On Thu, May 17, 2012 at 05:49:42PM +0100, Renaud Barbier wrote:
> This patchset splits the bigger patch [V4 2/4] to make it easier to read.
> 
> It includes the base MPC85xx infrastructure required for a minimal
> boot target in 32 bit addressing mode using an e500v2 core.
> 
> Also support is added for a minimal Freescale P2020RDB platform with
> driver support currently limited to NOR and serial port only.

There are still many cleanups possible, for example parts of traps.c
look suspiciously similar between mpc85xx and mpc52xx. With several
things in the early init code it's questionable whether this has to
be run that early or if we could do it later in regular initcalls.
However, I don't know much about powerpc and the mpc5200 support still
compiles, so I merged this series.

Thanks
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
