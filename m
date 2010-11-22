Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKVVD-0000us-1e
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:28:11 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PKVVB-0000Vj-6P
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 13:28:09 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 13:27:28 +0100
References: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1290428665-23561-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201011221327.29157.jbe@pengutronix.de>
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
Subject: Re: [PATCH] i.MX23/STM: Continue improving this architecture
To: barebox@lists.infradead.org

Juergen Beisert wrote:
> Some things to improve the i.MX23 architecture and also some things to
> prepare it for i.MX28 inclusion.

Ups, forgotten:

The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:

  Merge branch 'master' into next (2010-11-19 09:35:15 +0100)

are available in the git repository at:

  http://git.pengutronix.de/git/jbe/for_barebox_next improve_imx23

Juergen Beisert (6):
      Remove variable size restrictions in i.MX23's gpio managing routines
      Simplify test for the max. possible GPIO number.
      i.MX23: Add support for the gpio commands
      i.MX23: Add pixel clock calculation routine for framebuffer support
      i.MX23: Add framebuffer device support
      Separate i.MX23 clock handling

 arch/arm/mach-stm/include/mach/clock-imx23.h |   36 +++++++++
 arch/arm/mach-stm/include/mach/clock.h       |   21 ++----
 arch/arm/mach-stm/include/mach/imx23-regs.h  |    1 +
 arch/arm/mach-stm/iomux-imx23.c              |   63 ++++++++++++++--
 arch/arm/mach-stm/speed-imx23.c              |  100 
+++++++++++++++++++++++++-
 5 files changed, 197 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/mach-stm/include/mach/clock-imx23.h

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
