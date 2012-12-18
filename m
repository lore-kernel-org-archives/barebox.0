Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tl10y-0006Ir-7L
 for barebox@lists.infradead.org; Tue, 18 Dec 2012 17:31:37 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8CC79FF97EE
 for <barebox@lists.infradead.org>; Tue, 18 Dec 2012 18:43:48 +0100 (CET)
Date: Tue, 18 Dec 2012 18:29:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121218172953.GF26483@game.jcrosoft.org>
References: <1355840005-11408-1-git-send-email-t.gamez@phytec.de>
 <1355840005-11408-5-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355840005-11408-5-git-send-email-t.gamez@phytec.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/7] ARM OMAP: Create device file
To: Teresa =?iso-8859-1?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On 15:13 Tue 18 Dec     , Teresa G=E1mez wrote:
> Created wrapper to add omap devices.
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  arch/arm/mach-omap/Makefile                      |    4 +-
>  arch/arm/mach-omap/devices.c                     |   69 ++++++++++++++++=
+++
>  arch/arm/mach-omap/include/mach/am33xx-devices.h |   36 ++++++++++
>  arch/arm/mach-omap/include/mach/devices.h        |   27 ++++++++
>  arch/arm/mach-omap/include/mach/omap3-devices.h  |   60 ++++++++++++++++-
>  arch/arm/mach-omap/include/mach/omap4-devices.h  |   77 ++++++++++++++++=
++++++
>  6 files changed, 269 insertions(+), 4 deletions(-)
>  create mode 100644 arch/arm/mach-omap/devices.c
>  create mode 100644 arch/arm/mach-omap/include/mach/am33xx-devices.h
>  create mode 100644 arch/arm/mach-omap/include/mach/devices.h
>  create mode 100644 arch/arm/mach-omap/include/mach/omap4-devices.h
> =

> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 1536744..494da4e 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -15,8 +15,8 @@
>  # GNU General Public License for more details.
>  #
>  #
> -obj-$(CONFIG_ARCH_OMAP) +=3D syslib.o
> -pbl-$(CONFIG_ARCH_OMAP) +=3D syslib.o
> +obj-$(CONFIG_ARCH_OMAP) +=3D syslib.o devices.o
> +pbl-$(CONFIG_ARCH_OMAP) +=3D syslib.o devices.o
why in the pbl?

the pbl does not need ot add devices

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
