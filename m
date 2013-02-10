Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f174.google.com ([209.85.212.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4aFh-0008J2-Kx
 for barebox@lists.infradead.org; Sun, 10 Feb 2013 16:59:42 +0000
Received: by mail-wi0-f174.google.com with SMTP id hi8so2412396wib.7
 for <barebox@lists.infradead.org>; Sun, 10 Feb 2013 08:59:38 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Feb 2013 17:58:55 +0100
Message-Id: <1360515537-1703-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] DeviceTree: add support for initrd in the DT
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Following Jean-Christophe's recommendation the patch has been splitted in two,
supressed extra spaces and substituted a ==NULL for a !.

Regarding to the questions:
I'm not checking the return value of fdt_initrd because in case of error
 1) fdt_initrd will print a message to inform the user.
 2) it's not a blocking error (from the bootloader point-of-view), so we can still try to boot.
fdt_setprop gets a buffer of data that must be in BigEndian order to be standard compliant.
 It's defined to be BigEndian probably because it comes from PowerPC.
 I've also tested it before submitting and it works fine.

Thank you for your comments.
Regards,
  Vicente.

Vicente Bergas (2):
  DeviceTree: add support for initrd in the DT
  ArchosG9: boot linux kernel with DT

 arch/arm/boards/archosg9/env/config       |  1 +
 arch/arm/configs/archosg9_defconfig       |  4 ++
 arch/arm/configs/archosg9_xload_defconfig |  1 +
 arch/arm/lib/armlinux.c                   |  2 +
 common/oftree.c                           | 66 +++++++++++++++++++++++++++++++
 include/of.h                              |  1 +
 6 files changed, 75 insertions(+)

-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
