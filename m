Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z81Bv-0003qf-E5
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 07:03:20 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Thu, 25 Jun 2015 09:06:05 +0200
References: <1434969204-11433-1-git-send-email-jbe@pengutronix.de>
 <1434969204-11433-4-git-send-email-jbe@pengutronix.de>
 <20150624183440.GT26575@pengutronix.de>
In-Reply-To: <20150624183440.GT26575@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201506250906.06141.jbe@pengutronix.de>
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
To: barebox@lists.infradead.org

Hi Sascha,

On Wednesday 24 June 2015 20:34:40 Sascha Hauer wrote:
> On Mon, Jun 22, 2015 at 12:33:21PM +0200, Juergen Borleis wrote:
> > Some systems have more than one feature to restart it. Maybe these
> > restarts features are all equal or it is very important which restart
> > feauture is used to restart the system in a reliable manner. For example
> > if external devices must be reset in conjunction with the SoC some SoC's
> > internal restart features cannot be used. Then an external restart
> > feature must be forced instead by using the restart feature with the
> > wider scope.
>
> It seems this patch misses several conversions from reset_cpu to
> restart_machine:
>
> ./arch/mips/lib/bootm.c:23:     reset_cpu(0);
> ./arch/ppc/lib/ppclinux.c:90:   reset_cpu(0);
> ./arch/sandbox/os/common.c:144:                 reset_cpu(0);
> ./arch/sandbox/os/common.c:152:                 reset_cpu(0);
> ./arch/arm/mach-at91/bootstrap.c:148:   reset_cpu(0);
> ./arch/arm/mach-tegra/tegra20-pmc.c:221:        reset_cpu(0);
> ./arch/blackfin/lib/traps.c:94: reset_cpu(0);
> ./arch/blackfin/lib/traps.c:104:        reset_cpu(0);

Hmm, interesting. I did a sed replacement in the whole source tree. Don't k=
now =

why they slipped through.

> ./arch/arm/mach-at91/at91sam9g45_reset.S
> ./arch/arm/mach-at91/at91sam9_reset.S

Ups, assembler...

Regards,
Juergen

-- =

Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| Juergen Borleis =A0 =A0 =A0 =A0 =A0 =A0 |
Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| http://=
www.pengutronix.de/ =A0|

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
