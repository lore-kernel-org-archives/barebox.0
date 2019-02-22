Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gx5ej-0006lH-F4
 for barebox@lists.infradead.org; Fri, 22 Feb 2019 07:54:03 +0000
Date: Fri, 22 Feb 2019 08:53:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190222075358.2qt7cznkkajegrs4@pengutronix.de>
References: <1550751215-25530-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <1550751215-25530-2-git-send-email-thomas.haemmerle@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1550751215-25530-2-git-send-email-thomas.haemmerle@wolfvision.net>
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
Subject: Re: [PATCH v2] firmware-zynqmp: port from linux
To: Thomas =?iso-8859-15?Q?H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 21, 2019 at 12:13:50PM +0000, Thomas H=E4mmerle wrote:
> From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> =

> Port Xilinx Zynq MPSoC Firmware layer driver from linux.
> =

> Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
> ---
>  arch/arm/Kconfig                                   |   1 +
>  arch/arm/mach-zynqmp/Makefile                      |   2 +-
>  arch/arm/mach-zynqmp/firmware-zynqmp.c             | 601 +++++++++++++++=
++++++
>  .../arm/mach-zynqmp/include/mach/firmware-zynqmp.h |  66 +++
>  4 files changed, 669 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/mach-zynqmp/firmware-zynqmp.c
>  create mode 100644 arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h

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
