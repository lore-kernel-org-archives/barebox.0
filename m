Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zp8hK-00010o-RV
 for barebox@lists.infradead.org; Thu, 22 Oct 2015 05:45:59 +0000
Received: by lfaz124 with SMTP id z124so35400702lfa.1
 for <barebox@lists.infradead.org>; Wed, 21 Oct 2015 22:45:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 22 Oct 2015 08:45:24 +0300
Message-Id: <1445492727-905-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] misc clk-related changes
To: barebox@lists.infradead.org

Antony Pavlov (3):
  commands: add clk_get_rate command
  clock.h: include <types.h> under guard macro
  commands: clk_dump: use COMMAND_SUCCESS instead of 0 return code

 commands/clk.c  | 57 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/clock.h |  3 +--
 2 files changed, 57 insertions(+), 3 deletions(-)

-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
