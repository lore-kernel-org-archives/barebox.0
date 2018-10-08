Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P8j-0005xQ-9d
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:35:54 +0000
Received: by mail-pf1-x444.google.com with SMTP id f29-v6so5006547pff.5
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:14 -0700
Message-Id: <20181008063518.18164-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/4] Additional error checking for barebox_update
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is a follow up to discussion [1]. Hopefull all of the patches are
self-explanatory enough.

Feedback is welcome!

Changes since [v1]:

    - Move handler lookup out of barebox_update() in order to avoid
      making calls to bbu_handler_by_*() twice

Thanks,
Andrey Smirnov

[v1] http://lists.infradead.org/pipermail/barebox/2018-September/034865.html
[1] http://lists.infradead.org/pipermail/barebox/2018-August/034573.html

Andrey Smirnov (4):
  bbu: Expose bbu_find_handler_by_*() functions
  bbu: Add "handler" parameter to barebox_update()
  bbu: command: Make sure specified update handler exists
  bbu: Simplify bbu_find_handler_by_device()

 commands/barebox-update.c       | 41 +++++++++++++++++++++++++---
 common/bbu.c                    | 47 +++++++--------------------------
 drivers/usb/gadget/f_fastboot.c |  6 +++--
 include/bbu.h                   |  5 ++--
 4 files changed, 55 insertions(+), 44 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
