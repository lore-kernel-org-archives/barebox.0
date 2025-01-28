Delivery-date: Tue, 28 Jan 2025 12:29:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcjmh-005V4d-2J
	for lore@lore.pengutronix.de;
	Tue, 28 Jan 2025 12:29:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tcjmh-00057G-K7
	for lore@pengutronix.de; Tue, 28 Jan 2025 12:29:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j+f+gslpTXhyeI0cBO2ieb7k4uDf+710b/BRAY6wgiw=; b=E8QdSgevocGoQTaL+tNqG7cwxY
	ulv7glug1pEvDDYq1ysJAEOumHZef9dqH9p4mRGLTRx9Xm4OpWafZzTU54gwdL0YqvekhME0GbDf4
	J5J3a9eDZ+QBL/KFPYYEHE4tzSlmWz3SFK9It4D571EhBzWTqRa87/Yd2MVYf3Ipikd2FrXiXdRRB
	XdfO2hWyCgDMiYjGOJY0mZrA9NpcXBy4q4wWIzyTotatuo/zae0N1qUrsUgmRf1Did/50wNm5DOx6
	bM35WtbnRQbbXI+z2QoWARXOkI23cU5LGcmKe7Y7NliyokzUbzkRq7srSYTe7bCtgPz/YDTXc5NqZ
	C5ruxdXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcjm9-00000004mlZ-0KGA;
	Tue, 28 Jan 2025 11:29:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcjlz-00000004mks-0m9T
	for barebox@lists.infradead.org;
	Tue, 28 Jan 2025 11:28:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1tcjlw-0004xp-0I; Tue, 28 Jan 2025 12:28:48 +0100
Message-ID: <fec4d58723108da9cfa93d4f74c5de78b5543beb.camel@pengutronix.de>
From: Enrico =?ISO-8859-1?Q?J=F6rns?= <ejo@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Cc: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Jan 2025 12:28:47 +0100
In-Reply-To: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
References: <20250127195109.3928003-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_032851_226226_DBFF2879 
X-CRM114-Status: GOOD (  15.52  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH RFT v3] scripts: define _GNU_SOURCE for all source files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Am Montag, dem 27.01.2025 um 20:51 +0100 schrieb Ahmad Fatoum:
> musl doesn't define loff_t, unless _GNU_SOURCE is defined, which
> we don't do everywhere and glibc didn't mind.
>=20
> This led to build errors with musl when code makes it into
> scripts/ that uses loff_t. This was already fixed once e.g. in commit
> c0d065fb0aa0 ("scripts: bareboximd: remove usage of loff_t").
>=20
> To fix this issue for good, let's define _GNU_SOURCE globally for all fil=
es.
>=20
> Link:
> https://lore.kernel.org/all/CAMKF1sqX7gFCEH78fHS+jkUSieL5crAU_RwAUO-daJL0=
u+fj0g@mail.gmail.com/
> Fixes: 5171f4d0696f ("scripts: implement read_fd and pread_full for tools=
")
> Suggested-by: Khem Raj <raj.khem@gmail.com>
> Reported-by: Enrico J=C3=B6rns <ejo@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> @Enrico, please give this a test. I only tested against glibc.

thank you for reworking the patch (again)!

Unfortunately, my OE musl build of the 'barebox-tools' recipe (with the pat=
ch applied on top of
barebox 2025.01) still fails with:

> common.h:9:48: error: unknown type name 'loff_t'; did you mean 'off_t'?

for imx/imx-usb-loader-target.c and omap3-usb-loader-target.c.


Regards, Enrico

> v2 -> v3:
> =C2=A0 - set _GNU_SOURCE instead of defining loff_t (Khem)
> v1 -> v2:
> =C2=A0 - include <linux/types.h> from scripts/common.h (Enrico)
> v2 was here:
> =C2=A0 https://lore.barebox.org/barebox/20250127143146.2965544-1-a.fatoum=
@pengutronix.de/T/#u
> ---
> =C2=A0scripts/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | =
4 ++++
> =C2=A0scripts/imx/imx-image.c=C2=A0 | 1 -
> =C2=A0scripts/imx/imx.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
> =C2=A0scripts/imx9image.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
> =C2=A0scripts/kernel-install.c | 1 -
> =C2=A0scripts/keytoc.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | =
1 -
> =C2=A0scripts/kwbimage.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 1 -
> =C2=A07 files changed, 4 insertions(+), 6 deletions(-)
>=20
> diff --git a/scripts/Makefile b/scripts/Makefile
> index a780f05bd90f..c1a5b4b74775 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -60,6 +60,10 @@ rk-usb-loader-target-userldlibs +=3D `$(CROSS_PKG_CONF=
IG) --libs libusb-1.0`
> =C2=A0
> =C2=A0userccflags +=3D -I $(srctree)/$(src)/include -isystem $(srctree)/s=
cripts/include
> =C2=A0
> +# We need to explicitly set the macro to empty, otherwise it's defined t=
o =3D1
> +userccflags +=3D -D_GNU_SOURCE=3D""
> +KBUILD_HOSTCFLAGS +=3D -D_GNU_SOURCE=3D""
> +
> =C2=A0subdir-y=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0+=3D mod
> =C2=A0subdir-y=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0+=3D imx
> =C2=A0subdir-$(CONFIG_DTC)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0+=3D dtc
> diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
> index 9ba60dbc5b4c..a8ac34091fc0 100644
> --- a/scripts/imx/imx-image.c
> +++ b/scripts/imx/imx-image.c
> @@ -1,7 +1,6 @@
> =C2=A0// SPDX-License-Identifier: GPL-2.0-or-later
> =C2=A0// SPDX-FileCopyrightText: 2013 Sascha Hauer, Pengutronix
> =C2=A0
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <unistd.h>
> =C2=A0#include <getopt.h>
> diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> index 5ccc116cfe3c..26027f0f3548 100644
> --- a/scripts/imx/imx.c
> +++ b/scripts/imx/imx.c
> @@ -1,7 +1,6 @@
> =C2=A0// SPDX-License-Identifier: GPL-2.0-or-later
> =C2=A0// SPDX-FileCopyrightText: 2016 Sascha Hauer, Pengutronix
> =C2=A0
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <stdlib.h>
> =C2=A0#include <string.h>
> diff --git a/scripts/imx9image.c b/scripts/imx9image.c
> index 53fb879882e8..61b7cc943f00 100644
> --- a/scripts/imx9image.c
> +++ b/scripts/imx9image.c
> @@ -8,7 +8,6 @@
> =C2=A0 *
> =C2=A0 */
> =C2=A0
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <string.h>
> =C2=A0#include <stdlib.h>
> diff --git a/scripts/kernel-install.c b/scripts/kernel-install.c
> index d943f0288f39..240122f2d224 100644
> --- a/scripts/kernel-install.c
> +++ b/scripts/kernel-install.c
> @@ -72,7 +72,6 @@
> =C2=A0 *
> =C2=A0 */
> =C2=A0
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <string.h>
> =C2=A0#include <stdlib.h>
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index c60df8a5f017..2a0d7c415bf0 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -9,7 +9,6 @@
> =C2=A0 *
> =C2=A0 */
> =C2=A0#pragma GCC diagnostic ignored "-Wdeprecated-declarations"
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <string.h>
> =C2=A0#include <time.h>
> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> index 370c54c983b5..c58c80e5415f 100644
> --- a/scripts/kwbimage.c
> +++ b/scripts/kwbimage.c
> @@ -30,7 +30,6 @@
> =C2=A0 * headers in v1 images
> =C2=A0 */
> =C2=A0
> -#define _GNU_SOURCE
> =C2=A0#include <stdio.h>
> =C2=A0#include <stdint.h>
> =C2=A0#include <sys/types.h>

--=20
Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Enrico J=C3=B6rns=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|
Embedded Linux Consulting & Support=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| https://www.pengutronix.de/ |
Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| Phone: +49-5121-206917-180=C2=A0=C2=A0|
31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Fax:=C2=A0=C2=
=A0=C2=A0+49-5121-206917-9=C2=A0=C2=A0=C2=A0=C2=A0|


