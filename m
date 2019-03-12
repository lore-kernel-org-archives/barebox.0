Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3c6S-0001zW-4I
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:45:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id n74so1198911pfi.9
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:45:36 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:45:22 -0700
Message-Id: <20190312074525.6153-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] Earlycon command line option support
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This small series is something I came up with to avoid having to look
up the syntax and manually specify earlycon kernel command line option
every time I needed it. The series is purely optional in case I am not
the only one who thinks this is useful.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (3):
  console: Add plumbing to expose earlycon/bootconsole parameter
  serial: i.MX: Add code to export "earlycon" setting
  serial: lpuart: Add code to export "earlycon" setting

 Documentation/user/variables.rst |  1 +
 common/console.c                 | 25 +++++++++++++++++++++++++
 drivers/serial/serial_imx.c      |  3 +++
 drivers/serial/serial_lpuart.c   |  1 +
 include/console.h                |  1 +
 5 files changed, 31 insertions(+)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
