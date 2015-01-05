Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8543-0000Nz-TL
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 10:39:12 +0000
Date: Mon, 5 Jan 2015 11:38:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105103850.GM30369@pengutronix.de>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419358918-25569-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/9] versatilepb: switch to defaultenv-2
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 23, 2014 at 07:21:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
>  - Boot from NOR
>  - enable UBI
>  - use PBL
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/versatile/env/boot.d/001-nor       |  1 +
>  .../arm/boards/versatile/env/boot.d/101-nor-update |  1 +
>  arch/arm/boards/versatile/env/boot/nor             | 15 +++++++++
>  arch/arm/boards/versatile/env/boot/nor-update      | 14 ++++++++
>  arch/arm/boards/versatile/env/config               | 38 ----------------------
>  arch/arm/boards/versatile/env/init/automount       | 11 +++++++
>  arch/arm/boards/versatile/env/init/mtdparts-nor    | 11 +++++++
>  arch/arm/boards/versatile/env/init/ps1             |  7 ++++
>  arch/arm/boards/versatile/env/nv/boot.default      |  1 +
>  arch/arm/boards/versatile/env/nv/hostname          |  1 +
>  .../boards/versatile/env/nv/linux.bootargs.base    |  1 +
>  arch/arm/boards/versatile/versatilepb.c            |  4 +--
>  arch/arm/configs/versatilepb_defconfig             | 31 ++++++++++++++++--
>  arch/arm/mach-versatile/Kconfig                    |  1 +
>  14 files changed, 94 insertions(+), 43 deletions(-)
>  create mode 120000 arch/arm/boards/versatile/env/boot.d/001-nor
>  create mode 120000 arch/arm/boards/versatile/env/boot.d/101-nor-update
>  create mode 100644 arch/arm/boards/versatile/env/boot/nor
>  create mode 100644 arch/arm/boards/versatile/env/boot/nor-update
>  delete mode 100644 arch/arm/boards/versatile/env/config
>  create mode 100644 arch/arm/boards/versatile/env/init/automount
>  create mode 100644 arch/arm/boards/versatile/env/init/mtdparts-nor
>  create mode 100644 arch/arm/boards/versatile/env/init/ps1
>  create mode 100644 arch/arm/boards/versatile/env/nv/boot.default
>  create mode 100644 arch/arm/boards/versatile/env/nv/hostname
>  create mode 100644 arch/arm/boards/versatile/env/nv/linux.bootargs.base

Applied, thanks

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
