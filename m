Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XMJVE-0007sv-0Y
 for barebox@lists.infradead.org; Tue, 26 Aug 2014 16:21:49 +0000
Date: Tue, 26 Aug 2014 13:20:18 -0300
From: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Message-ID: <20140826162018.GB9245@arch.cereza>
References: <1408834420-899-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <1408834420-899-5-git-send-email-ezequiel.garcia@free-electrons.com>
 <53FC9A00.9090608@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53FC9A00.9090608@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/5] net: Add driver for Armada 370/XP 10/100/1000 Mbps
 network controller
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 26 Aug 04:30 PM, Sebastian Hesselbarth wrote:
> On 08/24/2014 12:53 AM, Ezequiel Garcia wrote:
> >This patch introduces the mvneta driver to support the network controller
> >found in Armada 370/XP SoCs.
> >
> >Signed-off-by: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
> >---
> >  drivers/net/Kconfig  |   6 +
> >  drivers/net/Makefile |   1 +
> >  drivers/net/mvneta.c | 758 +++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 765 insertions(+)
> >  create mode 100644 drivers/net/mvneta.c
> >
> >diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> >index c99fcc8..f6584d4 100644
> >--- a/drivers/net/Kconfig
> >+++ b/drivers/net/Kconfig
> >@@ -137,6 +137,12 @@ config DRIVER_NET_MPC5200
> >  	depends on ARCH_MPC5200
> >  	select PHYLIB
> >
> >+config DRIVER_NET_MVNETA
> >+	bool "Marvell NETA"
> >+	depends on ARCH_MVEBU
> =

> nit: depends on ARCH_ARMADA_370 || ARCH_ARMADA_XP ?
> =


Yeah, probably.

> I'll also give it a try later.
> =


Thanks, any additional testing is well-received.
-- =

Ezequiel Garc=EDa, Free Electrons
Embedded Linux, Kernel and Android Engineering
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
