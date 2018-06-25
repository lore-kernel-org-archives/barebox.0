Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXXgx-0007Er-Kq
 for barebox@lists.infradead.org; Mon, 25 Jun 2018 20:02:29 +0000
Date: Mon, 25 Jun 2018 22:02:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180625200214.bayezf6xzxivwfxi@pengutronix.de>
References: <20180621112120.10467-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180621112120.10467-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/2] MIPS: dts: drop skeleton.dtsi
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jun 21, 2018 at 02:21:18PM +0300, Antony Pavlov wrote:
> Changes since v1 patchseries:
> 
>   * add `device_type = "memory";` to the memory node;
>   * split patch.
> 
> Antony Pavlov (2):
>   MIPS: dts: drop skeleton.dtsi
>   MIPS: dts: fix dtc unit_address_vs_reg warning

Applied, thanks

Sascha

> 
>  arch/mips/dts/dlink-dir-320.dts |  8 +++++---
>  arch/mips/dts/img-ci20.dts      |  2 +-
>  arch/mips/dts/jz4755.dtsi       |  5 +++--
>  arch/mips/dts/jz4780.dtsi       |  5 +++--
>  arch/mips/dts/loongson-ls1b.dts |  3 ++-
>  arch/mips/dts/ls1b.dtsi         |  5 +++--
>  arch/mips/dts/qemu-malta.dts    |  8 +++++---
>  arch/mips/dts/rzx50.dts         |  3 ++-
>  arch/mips/dts/skeleton.dtsi     | 13 -------------
>  9 files changed, 24 insertions(+), 28 deletions(-)
>  delete mode 100644 arch/mips/dts/skeleton.dtsi
> 
> -- 
> 2.17.0
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
