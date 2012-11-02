Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo4.mail-out.ovh.net ([188.165.36.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUDks-0002MQ-1C
 for barebox@lists.infradead.org; Fri, 02 Nov 2012 09:41:35 +0000
Received: from mail247.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 93963104F34B
 for <barebox@lists.infradead.org>; Fri,  2 Nov 2012 10:48:42 +0100 (CET)
Date: Fri, 2 Nov 2012 10:39:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121102093923.GQ29599@game.jcrosoft.org>
References: <20121101195008.GM29599@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121101195008.GM29599@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/4 v2] at91sam9x5ek: add spi and mci support
To: barebox@lists.infradead.org

On 20:50 Thu 01 Nov     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
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

v2 rebase agains i2c patch serie v2

The following changes since commit 244b46fb5c4663cba1df182670c212b8b4b7a4b0:

  m25p80: sync flash support with the kernel (2012-11-02 02:28:41 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91sam9x5ek_mci_spi

for you to fetch changes up to 9d74c51ca7d8d9a959aa989f83bbb3e1a9e3a129:

  at91sam9x5ek: add mci support (2012-11-02 02:28:42 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9x5: add spi support
      at91sam9x5ek: add spi support
      at91sam9x5: add mci support
      at91sam9x5ek: add mci support

 arch/arm/boards/at91sam9x5ek/init.c     |   57 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9x5ek_defconfig |   10 +++++++---
 arch/arm/mach-at91/at91sam9x5.c         |    4 ++++
 arch/arm/mach-at91/at91sam9x5_devices.c |  124 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 192 insertions(+), 3 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
