Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXFI-0008J0-1h
 for barebox@lists.infradead.org; Mon, 06 May 2019 06:37:05 +0000
Date: Mon, 6 May 2019 08:37:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190506063701.fz57ijesri4fliic@pengutronix.de>
References: <20190503155339.811-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503155339.811-1-m.tretter@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: aarch64: do not use 32bit optimized find bit
 functions
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

On Fri, May 03, 2019 at 05:53:39PM +0200, Michael Tretter wrote:
> The optimized find bit functions are only implemented for 32 bit and are
> not built on aarch64 systems. Therefore, for example bootchooser cannot
> be build for aarch64.
> =

> Select the generic find_bit implementations on aarch64.
> =

> As the decision, if lib64 or lib32 is build or not, directly depends on
> CPU_V8, the generic implementation also should be used if CPU_V8 is
> selected.
> =

> Reported-by: Thomas H=E4mmerle <Thomas.Haemmerle@wolfvision.net>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/cpu/Kconfig          | 1 +
>  arch/arm/include/asm/bitops.h | 8 ++++++++
>  2 files changed, 9 insertions(+)

Applied, thanks

Sascha


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
