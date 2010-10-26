Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAfiA-0000mL-6y
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 09:20:55 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 26 Oct 2010 11:20:30 +0200
References: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287753331-7696-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010261120.30875.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: more patches for next
To: barebox@lists.infradead.org

Some of these changes lead into:

[...]
  CC      drivers/serial/serial_imx.o
In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/imx27-regs.h:222:1: warning: "ESDMISC_RST" redefined
In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
                 from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/esdctl.h:37:1: warning: this is the location of the previous definition
In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/imx27-regs.h:224:1: warning: "ESDMISC_MDDR_DL_RST" redefined
In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
                 from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/esdctl.h:40:1: warning: this is the location of the previous definition
In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/imx27-regs.h:225:1: warning: "ESDMISC_MDDR_MDIS" redefined
In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
                 from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/esdctl.h:41:1: warning: this is the location of the previous definition
In file included from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/imx27-regs.h:226:1: warning: "ESDMISC_LHD" redefined
In file included from arch/arm/mach-imx/include/mach/imx27-regs.h:83,
                 from arch/arm/mach-imx/include/mach/imx-regs.h:47,
                 from drivers/serial/serial_imx.c:21:
arch/arm/mach-imx/include/mach/esdctl.h:42:1: warning: this is the location of the previous definition
[...]

Tested with the "pcm038_defconfig".

BTW: When building the "pcm043_defconfig" I get the following warnings
multiple times:

[...]
 CC      commands/mem.o
{standard input}: Assembler messages:
{standard input}:908: rdhi, rdlo and rm must all be different
{standard input}:934: rdhi, rdlo and rm must all be different
{standard input}:976: rdhi, rdlo and rm must all be different
[...]


-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
