Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYwRo-0008GY-0r
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 10:13:24 +0000
Received: from mail629.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 3D19BFFB3E2
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2012 11:21:03 +0100 (CET)
Date: Thu, 15 Nov 2012 11:11:22 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121115101122.GE31820@game.jcrosoft.org>
References: <20121103113406.GX29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121103113406.GX29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4 v3] at91sam9x5ek: add spi and mci support
To: barebox@lists.infradead.org

ping
On 12:34 Sat 03 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 	v3: rebase on the v3 of at91sam9xek i2c support
> 
> 	with this +1 patch serie the support of the at91sam9x5ek is mostly
> 	complete
> 
> 	This will add spi and mci0 support as spi0 and mci0 conflict
> 
> 	We are still missing framebuffer, usb host and device and hardware i2c support
> 	but this wil be added later
> 
> 	This patch serie depedsn on the at91sam9x5ek i2c and m25p80 patcheries
> 
> 	the correct version
> 
> 	this one work but brake the etherent as it mux the 4 cs as gpio and we
> 	use them on the eth0
> 
> The following changes since commit b3a0963d358e14180e9bbde68ab78fdebae071b7:
> 
>   m25p80: sync flash support with the kernel (2012-11-03 04:23:15 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_mci_spi
> 
> for you to fetch changes up to dc7e1ce2a4ca879d07ba5786cfaa84f54d2ee763:
> 
>   at91sam9x5ek: add mci support (2012-11-03 04:23:48 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (4):
>       at91sam9x5: add spi support
>       at91sam9x5ek: add spi support
>       at91sam9x5: add mci support
>       at91sam9x5ek: add mci support
> 
>  arch/arm/boards/at91sam9x5ek/init.c     |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9x5ek_defconfig |   10 +++++++---
>  arch/arm/mach-at91/at91sam9x5.c         |    4 ++++
>  arch/arm/mach-at91/at91sam9x5_devices.c |  124 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 192 insertions(+), 3 deletions(-)
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
