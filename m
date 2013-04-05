Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UOF6C-0002pl-Fe
 for barebox@lists.infradead.org; Fri, 05 Apr 2013 22:27:09 +0000
Received: by mail-wi0-f169.google.com with SMTP id c10so2275764wiw.2
 for <barebox@lists.infradead.org>; Fri, 05 Apr 2013 15:27:03 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat,  6 Apr 2013 00:25:54 +0200
Message-Id: <1365200755-8102-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH] ArchosG9: add keyboard input and new reset menu entries (v3)
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

This is the third version of this patch series. It only includes the only
unapplied patch with all modifications from feedback, thanks Sascha.

Vicente Bergas (1):
  OMAP4: add command to select next boot device priority

 arch/arm/mach-omap/Makefile                     |  1 +
 arch/arm/mach-omap/boot_order.c                 | 83 +++++++++++++++++++++++++
 arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
 arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
 commands/Kconfig                                |  7 +++
 5 files changed, 131 insertions(+)
 create mode 100644 arch/arm/mach-omap/boot_order.c

-- 
1.8.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
