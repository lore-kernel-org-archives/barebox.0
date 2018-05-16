Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJ2t8-0008Bu-5L
 for barebox@lists.infradead.org; Wed, 16 May 2018 20:19:08 +0000
Received: by mail-pg0-x242.google.com with SMTP id a13-v6so766960pgu.4
 for <barebox@lists.infradead.org>; Wed, 16 May 2018 13:18:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 16 May 2018 13:18:23 -0700
Message-Id: <20180516201827.6430-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 0/4] Pass reset and boot sources via /chosen node
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

The following patches are really usefull for Linux userspace
applications that need to know the details about reset and boot
sources.

Feedback is welcome!

Changes since [v1]:

	- Series reworked to pass bootsource as a pointer to a
          devicetree node corresponding to detected bootsource

[v1] http://lists.infradead.org/pipermail/barebox/2018-May/032814.html

Andrey Smirnov (4):
  of: Make of_property_get_value() public
  bootsource: Add bootsource alias name API
  common: oftree: Pass bootsource and bootsource instance to kernel
  common: oftree: Pass reset source and reset source instance to kernel

 common/bootsource.c  | 74 ++++++++++++++++++++++++++++++++++++++++++++
 common/oftree.c      | 51 +++++++++++++++++++++++++++++-
 drivers/of/base.c    |  5 ---
 include/bootsource.h |  2 ++
 include/of.h         |  6 ++++
 5 files changed, 132 insertions(+), 6 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
