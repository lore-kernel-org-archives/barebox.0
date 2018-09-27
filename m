Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5Nf4-0007xn-DZ
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 04:12:26 +0000
Received: by mail-pf1-x443.google.com with SMTP id j26-v6so871484pfi.10
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2018 21:11:51 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Sep 2018 21:11:26 -0700
Message-Id: <20180927041129.29584-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/3] Additional error checking for barebox_update 
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a follow up to discussion [1]. Hopefull all of the patches are
self-explanatory enough.

Feedback is welcome!

Thanks,
Andrey Smirnov

[1] http://lists.infradead.org/pipermail/barebox/2018-August/034573.html

Andrey Smirnov (3):
  bbu: Expose bbu_find_handler_by_*() functions
  bbu: command: Make sure specified update handler exists
  bbu: Simplify bbu_find_handler_by_device()

 commands/barebox-update.c       | 36 +++++++++++++++++++++++++++++--
 common/bbu.c                    | 38 +++++++++------------------------
 drivers/usb/gadget/f_fastboot.c |  2 +-
 include/bbu.h                   |  3 ++-
 4 files changed, 47 insertions(+), 32 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
