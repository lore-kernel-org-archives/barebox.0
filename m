Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.aruba.it ([62.149.128.203] helo=smtpw2.aruba.it)
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OR2YU-0003tI-0Q
	for barebox@lists.infradead.org; Tue, 22 Jun 2010 12:26:19 +0000
Date: Tue, 22 Jun 2010 14:26:11 +0200
Message-Id: <L4F17N$3581604971B72AFF2E4EE2E9FBF2CD32@aruba.it>
MIME-Version: 1.0
From: "Luca Ceresoli" <luca@lucaceresoli.net>
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
Subject: Regression: not booting anymore on OMAP35xx
To: barebox@lists.infradead.org

Hi,

recent versions of barebox do not boot anymore on OMAP3530 (Cortex-A8).

I build barebox with omap3530_beagle_per_uart_defconfig, and load it
using pserial from Nishanth Menon's omap-u-boot-utils
(http://github.com/nmenon/omap-u-boot-utils).

Symptoms:
pserial detects the OMAP ID, then starts sending via UART.
The transfer apparently gets completed (obvious as there is no control),
but after that the UART line to the target is totally mute.

This happens since commit:
 78104ae arm: reimplement startup code in C

And is still happening on current master:
 ea5230c i2c: fix adapter_list manipulation

This issue seems independent on another one recently discussed in ml
('OMAP 3530 arch_shutdown "undefined instruction"',
http://lists.infradead.org/pipermail/barebox/2010-May/000919.html),
for which a patch has recently been committed in:
 ce971c2 arm: use processor specififc functions to turn off MMU

Thanks,
Luca



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
