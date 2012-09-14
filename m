Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCV89-00044H-Kz
 for barebox@lists.infradead.org; Fri, 14 Sep 2012 12:36:23 +0000
Message-ID: <1347626180.3037.18.camel@lws-weitzel>
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Fri, 14 Sep 2012 14:36:20 +0200
In-Reply-To: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
References: <1347608713-10133-1-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
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
Subject: Re: [RFC, PATCH] barebox-update command support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Freitag, den 14.09.2012, 09:45 +0200 schrieb Sascha Hauer:
> Hi All,
> 
> The following adds barebox-update command support. This command is
> supposed to provide a dedicated command for updating barebox.
On OMAP we have MLO and barebox. Should we use the command only for MLO?
The barebox didn't need special handling. Whats about kernel image and
rootfs? 
Jan 

> The rationale behind this is:
> 
> - We can add additional generic, SoC specific, board specific sanity
>   checks (Is this really a barebox image? Does the image fit into the
>   device?)
> - Sometimes SoC or board specific fixups are necessary. For example,
>   with Omap Nand boot we have to switch the Nand driver into a different
>   ECC mode before flashing barebox. With i.MX MMC card boot we want
>   to preserve the partition table. On i.MX28 Nand boot we have to create
>   a Boot Control Block. The list does not end here...
> 
> The current idea is:
> 
> A board can register one or multiple update handlers. The update handlers
> themselves are registered by a board because only the board knows where
> it actually can boot from. Nevertheless there might be generic handlers
> available, the most simple one being: Check image header, check size, write
> to device.
> 
> This is in an early state, right now there are only dummy handlers, hence the
> RFC state.
> 
> Sascha
> 
> ----------------------------------------------------------------
> Sascha Hauer (3):
>       Add barebox update infrastructure
>       ARM: Add dummy update handler
>       ARM pcm038: register nor update handler
> 
>  arch/arm/boards/pcm038/pcm038.c |    7 +++
>  arch/arm/lib/Makefile           |    1 +
>  arch/arm/lib/bbu.c              |   56 ++++++++++++++++++++
>  commands/Kconfig                |    5 ++
>  commands/Makefile               |    1 +
>  commands/barebox-update.c       |   80 ++++++++++++++++++++++++++++
>  common/Kconfig                  |    3 ++
>  common/Makefile                 |    1 +
>  common/bbu.c                    |  110 +++++++++++++++++++++++++++++++++++++++
>  include/bbu.h                   |   40 ++++++++++++++
>  10 files changed, 304 insertions(+)
>  create mode 100644 arch/arm/lib/bbu.c
>  create mode 100644 commands/barebox-update.c
>  create mode 100644 common/bbu.c
>  create mode 100644 include/bbu.h
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
