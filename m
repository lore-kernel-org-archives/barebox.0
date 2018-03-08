Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1etxYF-0001Dr-Ve
 for barebox@lists.infradead.org; Thu, 08 Mar 2018 15:34:00 +0000
Message-ID: <1520523219.31759.140.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 08 Mar 2018 16:33:39 +0100
In-Reply-To: <cd46083c-123e-8ec9-015b-cd121c87434b@gmx.net>
References: <20180308110515.29574-1-o.rempel@pengutronix.de>
 <20180308110515.29574-6-o.rempel@pengutronix.de>
 <1520516969.31759.115.camel@pengutronix.de>
 <cd46083c-123e-8ec9-015b-cd121c87434b@gmx.net>
Mime-Version: 1.0
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
Subject: Re: [PATCH v1 6/6] watchdog: add watchdog poller
To: Oleksij Rempel <fishor@gmx.net>, Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

Hi Oleksij,

On Thu, 2018-03-08 at 15:16 +0100, Oleksij Rempel wrote:
> > Also, it should be documented explicitly, that this will cause barebox
> > to keep triggering the watchdog, even when it drops to the shell after
> > a boot error. This makes it unsuitable for unattended use.
> 
> I would prefer to use controlled reboot over uncontrolled watchdog reset.
> For example it would be better to have boot and fail strategy. In case
> of network boot, it would be better to retry download in some time and
> not cause watchdog reset. If retry count exceeded then some thing should
> be done. It can be power off, reboot, fall back to CLI.

In my experience, the watchdog is used as a last resort to handle any
*unanticipated* problems. So, by definition, there isn't any code to
handle these problems. The way to do this is that the watchdog is only
triggered when the boot process has made actual progress towards a
running system. For example:
- once barebox probes the watchdog driver
- from the shell init scripts
- after loading the kernel, just before jumping to the kernel

This way, there is no possible way which could cause barebox to just
wait on the prompt: an idle or hung system will always be restarted via
the watchdog.

> The reason for controlled reboot is the fact that the reset impact (or
> Reset Sensitivity) is different for every product and source of reset.
> 
> This example is take from MiniRISC EZ4021-FC documentation:
> 				Soft				TAP Ctrl
> Module		Reset	Reset	PrRst	ERst	TRST	Reset
> CPU			yes	yes	yes	no	no	no
> CP0			yes	yes	yes	no	no	no
> ICCi			yes	yes	yes	no	no	no
> DCC			yes	yes	yes	no	no	no
> BIU			yes	yes	yes	no	no	no
> MMU			yes	no	no	no	no	no
> MDU			yes	yes	yes	no	no	no
> EJTAG iface:
> - DMA/CPU Acc		yes	yes	yes	yes	yes	yes
>   logic	
> - Protocol engine	yes	no	no	yes	yes	yes
> - Breakpoint		yes	no	no	yes	no	no
> - PC trace yes no no yes no no

It is not clear to me from this table which reset is triggered by the
hardware watchdog. I would expect that it is the first column, which
resets everything.

> Most Atheros/QCA WiSoCs will not reset complete SoC even with watchdog
> triggered reset.

If you can't be sure that the watchdog resets enough to recover from
any transient problem, you cannot rely on it at all (and should
possibly use an external watchdog).

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
