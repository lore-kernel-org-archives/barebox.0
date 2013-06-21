Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x233.google.com ([2a00:1450:4008:c01::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uq341-0005sc-DC
 for barebox@lists.infradead.org; Fri, 21 Jun 2013 15:15:50 +0000
Received: by mail-bk0-f51.google.com with SMTP id ji1so3435763bkc.38
 for <barebox@lists.infradead.org>; Fri, 21 Jun 2013 08:15:26 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri, 21 Jun 2013 17:15:15 +0200
Message-Id: <1371827718-7928-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/3] OF: base: cleanup and allow empty properties
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set cleans Barebox OF API with respect to properies by using
internal functions for creating/deleting properties instead of
allocating/freeing in different places.

Also, with the consolidated property handling, we can now add a bogus
property value pointer to distinguish empty/boolean properties from
non-existing properties.

The patch set is based on the latest OF API patches sent some days
ago with Sascha Hauers fixes applied.

Sebastian Hesselbarth (3):
  OF: base: add sanity checks to of_new/delete_property
  OF: base: use of_delete_property where applicable
  OF: base: add empty property value pointer

 drivers/of/base.c |  107 ++++++++++++++++++++++++-----------------------------
 1 files changed, 48 insertions(+), 59 deletions(-)

---
Cc: barebox@lists.infradead.org
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
