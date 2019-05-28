Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXbA-0001VM-V4
 for barebox@lists.infradead.org; Tue, 28 May 2019 08:36:46 +0000
Date: Tue, 28 May 2019 10:36:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190528083643.7rv3nbofwiyp7yxl@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 00/18] scripts: enable compilation on macOS
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, May 27, 2019 at 11:57:26AM +0200, Ahmad Fatoum wrote:
> With this patch series applied, imx_v7_defconfig along with the host
> tools can be built on macOS. It should also pave the way for building
> on the BSDs. Currently it still fails on NetBSD though:
> 
> 	In file included from scripts/mod/modpost.c:15:0:
> 	scripts/mod/modpost.h:16:0: warning: "Elf_Ehdr" redefined
> 	 #define Elf_Ehdr    Elf32_Ehdr
> 	 ^
> 	In file included from scripts/mod/modpost.h:10:0,
> 			 from scripts/mod/modpost.c:15:
> 	/usr/include/elf.h:1093:0: note: this is the location of the previous definition
> 	 #define Elf_Ehdr Elf64_Ehdr
> 	 ^
> 
> Issues addressed in the series can be split into three groups:
> 
> - host tools depend on glibc or Linux headers
> 	replaced where appropriate with standard ISO/POSIX functionality
> - build depends on GNU utilites:
> 	only stat(1). fixed by importing the linux patch that uses ls
> 	instead.
> - endianness helpers
> 	These aren't (yet) POSIX-standardized, so I extended compiler.h
> 	to support macOS and the BSDs.
> 
> Only thing I can't yet compile is MXS_HOSTTOOLS, which depends on
> pkg-config finding OpenSSL, but I guess that's something I need to fix
> at my side.

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
