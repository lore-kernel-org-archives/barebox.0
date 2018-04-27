Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fBwGp-0006rG-SE
 for barebox@lists.infradead.org; Fri, 27 Apr 2018 05:50:13 +0000
Received: by mail-pg0-x241.google.com with SMTP id l2-v6so701277pgc.7
 for <barebox@lists.infradead.org>; Thu, 26 Apr 2018 22:50:01 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 26 Apr 2018 22:49:40 -0700
Message-Id: <20180427054946.11687-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] i.MX51, 53 reset reason detection support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This patchset is a followup to "i.MX reset reason detection support"
series I submited a couple of days ago. Mostly bits and pieces needed
for i.MX51 and i.MX53 integration with the rest of reset reason code.

Feedback is wellcome!

Sascha:

Let me know if you want me to squash these patches back into original
"i.MX reset reason detection support" series and re-submit it.

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  ARM: i.MX51: Replace expicit casts with IOMEM
  ARM: i.MX: Fix incorrect IMX_SRC_SRSR_CSU_RESET
  ARM: i.MX: Make imx6_reset_reasons global
  ARM: i.MX: Introduce IMX_SRC_SRSR
  ARM: i.MX53: Record reset reason as a part of startup
  ARM: i.MX51: Record reset reason as a part of startup

 arch/arm/mach-imx/imx.c                       |  9 +++++++++
 arch/arm/mach-imx/imx51.c                     | 20 ++++++++++++--------
 arch/arm/mach-imx/imx53.c                     |  4 ++++
 arch/arm/mach-imx/imx6.c                      | 11 +----------
 arch/arm/mach-imx/include/mach/reset-reason.h |  8 ++++----
 arch/arm/mach-imx/vf610.c                     |  2 +-
 6 files changed, 31 insertions(+), 23 deletions(-)

-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
