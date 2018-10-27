Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDT9-00016d-38
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:33:26 +0000
Received: by mail-pl1-x641.google.com with SMTP id p7-v6so1254663plk.5
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:40 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:32:24 -0700
Message-Id: <20181027013230.24387-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] Refactor driver resource allocation code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This series is my attempt to minimzie amount of repeating code in
various resource allocating function in drivers/base/driver.c. All
patches are optional, so if some/all changes don't seem like an
improvement, I am more than happy to drop them.

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  drivers: base: Simplify generic_memmap_ro()
  drivers: base: Drop dev_get_mem_region_by_name()
  drivers: base: Share implementations for dev_get_resource*()
  drivers: base: Simplify dev_request_mem_region_err_null()
  drivers: base: Share code for dev_request_mem_region*()
  drivers: base: Share code for getting and then requesting a region

 drivers/base/driver.c | 120 +++++++++++++++++++-----------------------
 include/driver.h      |   4 --
 2 files changed, 55 insertions(+), 69 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
