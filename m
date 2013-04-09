Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPgPp-0005oU-BJ
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 21:49:22 +0000
Received: by mail-wi0-f173.google.com with SMTP id ez12so4203481wid.0
 for <barebox@lists.infradead.org>; Tue, 09 Apr 2013 14:49:19 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Tue,  9 Apr 2013 23:48:18 +0200
Message-Id: <1365544099-1336-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] ArchosG9: add keyboard input and new reset menu entries (v4)
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

Same as v3, but_boot order command is now wholly contained in arch/arm/mach-omap

Vicente Bergas (1):
  OMAP4: add command to select next boot device priority

 arch/arm/mach-omap/Kconfig                      |  7 +++
 arch/arm/mach-omap/Makefile                     |  1 +
 arch/arm/mach-omap/boot_order.c                 | 83 +++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
 arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
 5 files changed, 131 insertions(+)
 create mode 100644 arch/arm/mach-omap/boot_order.c

-- 
1.8.2.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
