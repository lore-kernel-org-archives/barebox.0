Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f51.google.com ([74.125.82.51])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tw0oN-0001YC-L9
 for barebox@lists.infradead.org; Fri, 18 Jan 2013 01:32:04 +0000
Received: by mail-wg0-f51.google.com with SMTP id 8so217298wgl.6
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 17:32:01 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 18 Jan 2013 02:31:21 +0100
Message-Id: <1358472682-14333-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] feature_list: a way to pass hardware info to the kernel
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

The feature list is a non-standard alternative to the device tree
to pass the hardware description to the kernel.
This is the way used by Archos on it's android kernel, so it's required
to boot such a kernel.

This patch is submitted with two intentions:
 1) receive feedback
 2) request for inclusion
The feedback is always appreciated.
Regarding inclusion, I know this is a very Archos specific patch, so I'll
understand if it's rejected.

Vicente Bergas (1):
  feature_list: a way to pass hardware info to the kernel

 arch/arm/Kconfig                           |  12 +
 arch/arm/boards/archosg9/Makefile          |   1 +
 arch/arm/boards/archosg9/archos_features.c | 196 ++++++++++++++++
 arch/arm/boards/archosg9/archos_features.h |   6 +
 arch/arm/boards/archosg9/board.c           |   2 +
 arch/arm/configs/archosg9_defconfig        |   1 +
 arch/arm/include/asm/armlinux.h            |   9 +
 arch/arm/include/asm/feature_list.h        | 346 +++++++++++++++++++++++++++++
 arch/arm/include/asm/setup.h               |  23 +-
 arch/arm/lib/armlinux.c                    |  38 +++-
 10 files changed, 627 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/archos_features.c
 create mode 100644 arch/arm/boards/archosg9/archos_features.h
 create mode 100644 arch/arm/include/asm/feature_list.h

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
