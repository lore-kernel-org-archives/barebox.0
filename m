Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x236.google.com ([2a00:1450:400c:c09::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a3mpR-0004GB-CU
 for barebox@lists.infradead.org; Tue, 01 Dec 2015 15:26:54 +0000
Received: by wmuu63 with SMTP id u63so177690951wmu.0
 for <barebox@lists.infradead.org>; Tue, 01 Dec 2015 07:26:31 -0800 (PST)
From: Florian Vallee <fvallee@eukrea.fr>
Date: Tue,  1 Dec 2015 16:26:22 +0100
Message-Id: <1448983584-14939-1-git-send-email-fvallee@eukrea.fr>
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
Subject: [RFC 0/2] imx_adc command for barebox
To: barebox@lists.infradead.org
Cc: Florian Vallee <fvallee@eukrea.fr>

The two following patches import the out-of-tree imx_adc driver from Freescale
in barebox.

The original driver was interfaced with userspace through IOCTLs, this simple
port exposes a barebox command "imx_adc" which returns converted values in mV.
As such it's more a command since it doesn't register itself anywhere and is
accessed that way only.

There doesn't seem to be any ADC driver in barebox right now, Is there any
interest in cleaning this up for inclusion ?

Florian Vallee (2):
  drivers: imx_adc: import and adapt imx_adc from linux
  drivers: imx_adc: repurpose driver as pure ADC

 arch/arm/mach-imx/include/mach/imx25-regs.h |   1 +
 drivers/misc/Kconfig                        |   4 +
 drivers/misc/Makefile                       |   1 +
 drivers/misc/imx_adc.c                      | 248 ++++++++++++++++++++++++++++
 drivers/misc/imx_adc.h                      | 112 +++++++++++++
 drivers/misc/imx_adc_reg.h                  | 247 +++++++++++++++++++++++++++
 6 files changed, 613 insertions(+)
 create mode 100644 drivers/misc/imx_adc.c
 create mode 100644 drivers/misc/imx_adc.h
 create mode 100644 drivers/misc/imx_adc_reg.h

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
