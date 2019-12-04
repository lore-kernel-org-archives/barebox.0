Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVK1-0000sr-Q9
 for barebox@lists.infradead.org; Wed, 04 Dec 2019 14:08:06 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 9C2B61C000B
 for <barebox@lists.infradead.org>; Wed,  4 Dec 2019 14:07:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed,  4 Dec 2019 15:07:19 +0100
Message-Id: <20191204140721.20299-1-ahmad@a3f.at>
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
Subject: [PATCH 0/2] bus: efi: add basic ACPI bus infrastructure
To: barebox@lists.infradead.org

Microsoft specifies an ACPI Watchdog Action Table for its server
offerings that abstracts away hardware-specifics of watchdog devices.
This can be an alternative to implementing many different watchdog
driver in barebox for x86 H/W, as the driver is implemented in the
BIOS and barebox would only need to implement the H/W.

Unfortunately, I don't H/W handy that provides the WDAT table.
I've implemented the ACPI bus nevertheless, so here's the patch.

I haven't found anything else I'd like to do with ACPI, so I wrote a
sample driver to test the API. Not sure if it should go into the tree,
but I'd be in favor of adding it till there is a real user of the ACPI
bus (besides devinfo).

Cheers
Ahmad

Ahmad Fatoum (2):
  bus: efi: add basic ACPI bus infrastructure
  misc: add ACPI test driver

 drivers/bus/Kconfig      |   8 ++
 drivers/bus/Makefile     |   1 +
 drivers/bus/acpi.c       | 255 +++++++++++++++++++++++++++++++++++++++
 drivers/misc/Kconfig     |   6 +
 drivers/misc/Makefile    |   1 +
 drivers/misc/acpi-test.c |  61 ++++++++++
 include/acpi.h           |  73 +++++++++++
 7 files changed, 405 insertions(+)
 create mode 100644 drivers/bus/acpi.c
 create mode 100644 drivers/misc/acpi-test.c
 create mode 100644 include/acpi.h

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
