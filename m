Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailgate.pixel-group.de ([145.253.133.146])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hBJNa-0001vt-C3
 for barebox@lists.infradead.org; Tue, 02 Apr 2019 13:23:08 +0000
Received: from mail.pixel.de (unknown [10.63.25.81])
 by mailgate.pixel-group.de (Postfix) with ESMTP id 533635E41E
 for <barebox@lists.infradead.org>; Tue,  2 Apr 2019 15:22:56 +0200 (CEST)
Received: from tragicomix (localhost [127.0.0.1])
 by mail.pixel.de (Postfix) with ESMTP id 2D0981A1A4
 for <barebox@lists.infradead.org>; Tue,  2 Apr 2019 15:22:56 +0200 (CEST)
From: Kai Che <Kai.Che@mixed-mode.de>
Date: Tue, 2 Apr 2019 13:22:55 +0000
Message-ID: <1554211376557.9520@mixed-mode.de>
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
Subject: Issues with SPI on iMX7 Sabre Board
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I'm trying to communicate with SPI in barebox on the MC iMX7 Sabre Board.

I added the options in my barebox config:

CONFIG_SPI=y
CONFIG_CMD_SPI=y

But there is no SPI bus when I try to communicate with:

barebox@Freescale i.MX7 SabreSD Board:/ spi 0x1
spi bus 0 not found
spi: No such device
   
Could someone please tell me if a SPI driver exists for the iMX7 Sabre Board?

Thanks a lot,

Kai
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
