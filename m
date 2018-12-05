Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailgate.pixel-group.de ([145.253.133.146])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUZ0t-0000RQ-MZ
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 15:23:02 +0000
Received: from mail.pixel.de (unknown [10.63.25.81])
 by mailgate.pixel-group.de (Postfix) with ESMTP id 00FBF5E117
 for <barebox@lists.infradead.org>; Wed,  5 Dec 2018 16:22:41 +0100 (CET)
Received: from tragicomix (localhost [127.0.0.1])
 by mail.pixel.de (Postfix) with ESMTP id BAC701A0B9
 for <barebox@lists.infradead.org>; Wed,  5 Dec 2018 16:22:40 +0100 (CET)
From: Kai Che <Kai.Che@mixed-mode.de>
Date: Wed, 5 Dec 2018 15:22:40 +0000
Message-ID: <1544023361576.94285@mixed-mode.de>
Content-Language: de-DE
MIME-Version: 1.0
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
Subject: issues communicating with SPI on Raspberry Pi 3
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I'm trying to communicate with a TPM 2.0 (infineon,slb9670) over SPI on a Raspberry Pi 3 in barebox.

CONFIG_SPI=y
CONFIG_DRIVER_SPI_GPIO=y
CONFIG_CMD_SPI=y

are set in the barebox configuration and

dtparam=spi=on

is set in the /boot/config.txt on the raspberry pi.

But when checking /dev/ on barebox, there is nothing related to spi except cs0.

I would have expected something similiar to /dev/spidev0.0 showing up.

Did I miss any configurations?

Best Regrds,

Kai Che
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
