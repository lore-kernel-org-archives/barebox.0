Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x230.google.com ([2a00:1450:4013:c00::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuVp0-0001nF-TV
 for barebox@lists.infradead.org; Wed, 03 Jul 2013 22:46:47 +0000
Received: by mail-ee0-f48.google.com with SMTP id b47so387717eek.35
 for <barebox@lists.infradead.org>; Wed, 03 Jul 2013 15:46:25 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Thu,  4 Jul 2013 00:46:15 +0200
Message-Id: <1372891578-1871-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/3] OF: base: fix inifinite looping in node iterators
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Node iterators imported from linux and converted to barebox struct
device_node suffer from infinite looping because of missing check for
root node. Hiroki Nishimoto already reported this for
of_find_matching_node_and_match where a separate patch has been sent.

This patch set also fixes the same issue for other node iterators.

Sebastian Hesselbarth (3):
  OF: base: fix infinite loop in of_find_node_by_name
  OF: base: fix infinite loop in of_find_compatible_node
  OF: base: fix infinite loop in of_find_node_with_property

 drivers/of/base.c |   18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)
---
Cc: barebox@lists.infradead.org
Cc: Hiroki Nishimoto <hiroki.nishimoto.if@gmail.com>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
