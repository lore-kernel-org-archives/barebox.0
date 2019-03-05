Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2a00:ee2:100:3a01::1] (helo=chandra.tablix.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h15tr-0007zN-MW
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 08:58:13 +0000
Received: from 77-111-10-47.ipv4.tusmobil.si ([77.111.10.47]
 helo=muffin.lju.klevio.com)
 by chandra.tablix.org with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <tomaz.solc@tablix.org>)
 id 1h15tZ-0001wT-9p
 for barebox@lists.infradead.org; Tue, 05 Mar 2019 09:57:53 +0100
From: Tomaz Solc <tomaz.solc@tablix.org>
Date: Tue,  5 Mar 2019 09:57:50 +0100
Message-Id: <20190305085752.3615-1-tomaz.solc@tablix.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/2] ARM: rpi: refactor debug UART Kconfig settings.
To: barebox@lists.infradead.org

Changes from the first patch:

 - Don't disable board builds that conflict with debug UART setting.
 - Mention in the help text that enabling DEBUG_LL limits the build to the
   selected UART.

Best regards
Tomaz

Tomaz Solc (2):
  ARM: rpi: move debug UART Kconfig settings.
  common: Kconfig: improve help text for DEBUG_LL

 arch/arm/mach-bcm283x/Kconfig                 | 20 ---------------
 arch/arm/mach-bcm283x/include/mach/debug_ll.h |  6 ++---
 common/Kconfig                                | 37 ++++++++++++++++++++++++---
 3 files changed, 36 insertions(+), 27 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
