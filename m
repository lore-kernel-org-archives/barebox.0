Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z7pVo-0006ko-4A
 for barebox@lists.infradead.org; Wed, 24 Jun 2015 18:35:05 +0000
Date: Wed, 24 Jun 2015 20:34:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150624183440.GT26575@pengutronix.de>
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
 <1434969204-11433-4-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1434969204-11433-4-git-send-email-jbe@pengutronix.de>
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
Subject: Re: [PATCH 3/6] System restart: add a scope value to the system
 restart feature
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi J=FCrgen,

On Mon, Jun 22, 2015 at 12:33:21PM +0200, Juergen Borleis wrote:
> Some systems have more than one feature to restart it. Maybe these restar=
ts
> features are all equal or it is very important which restart feauture is =
used
> to restart the system in a reliable manner. For example if external
> devices must be reset in conjunction with the SoC some SoC's internal
> restart features cannot be used. Then an external restart feature must
> be forced instead by using the restart feature with the wider scope.
> =


It seems this patch misses several conversions from reset_cpu to
restart_machine:

./arch/mips/lib/bootm.c:23:     reset_cpu(0);
./arch/ppc/lib/ppclinux.c:90:   reset_cpu(0);
./arch/sandbox/os/common.c:144:                 reset_cpu(0);
./arch/sandbox/os/common.c:152:                         reset_cpu(0);
./arch/arm/mach-at91/bootstrap.c:148:   reset_cpu(0);
./arch/arm/mach-at91/at91sam9g45_reset.S:20:                    .globl rese=
t_cpu
./arch/arm/mach-at91/at91sam9g45_reset.S:22:reset_cpu:          ldr r0, .at=
91_va_base_sdramc        @ preload constants
./arch/arm/mach-at91/at91sam9_reset.S:23:                       .globl rese=
t_cpu
./arch/arm/mach-at91/at91sam9_reset.S:25:reset_cpu:             ldr r0, .at=
91_va_base_sdramc                        @ preload constants
./arch/arm/mach-tegra/tegra20-pmc.c:221:        reset_cpu(0);
./arch/blackfin/lib/traps.c:94: reset_cpu(0);
./arch/blackfin/lib/traps.c:104:        reset_cpu(0);

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
