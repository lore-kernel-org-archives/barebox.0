Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailex.mailcore.me ([94.136.40.146])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2zx-0005U1-AB
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 09:14:18 +0000
Received: from [87.75.44.8] (helo=DELL7710)
 by smtp04.mailcore.me with esmtpa (Exim 4.92.3)
 (envelope-from <andrew@mobius-embedded-systems.co.uk>)
 id 1jg2zt-0002pd-W6
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 10:14:15 +0100
From: "john@mobius-embedded-systems.co.uk"
 <andrew@mobius-embedded-systems.co.uk>
Date: Tue, 2 Jun 2020 10:14:12 +0100
Message-ID: <00a601d638be$2f10f330$8d32d990$@mobius-embedded-systems.co.uk>
MIME-Version: 1.0
Content-Language: en-gb
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
Subject: Mini UART support for Raspberry Pi CM3 ?
To: barebox@lists.infradead.org

Hi

I have been trying to get the mini UART (UART1) to work in Barebox on the
RPI Compute Module 3+.  I already have the changes made in config.txt and
this works fine when I boot into the main Linux code.  However, in Barebox,
the output always comes out on the main UART (UART0) and that is wired to
the Bluetooth module on my platform.  I have tried modifying the device
trees and cannot seem to get any output.   I also ensured that I added the
RPI CM3 output target as a config in rpi_defconfig.   

I've tried turning off the PL011 config option and also changing the device
tree to reference UART1 and set the chosen stdout-path to point to this
UART, but when I do this I just get a lack of any serial output.

I am also wanting to use the alternate pins (32 & 33) for UART1, so I am
thinking that something else needs to be changed.  Has anyone managed to get
this to work?

Regards

John


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
