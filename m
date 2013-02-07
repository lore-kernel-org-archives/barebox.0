Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f180.google.com ([209.85.215.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Shg-0005OT-NY
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 14:43:57 +0000
Received: by mail-ea0-f180.google.com with SMTP id c1so1107939eaa.11
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 06:43:54 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu,  7 Feb 2013 15:43:49 +0100
Message-Id: <1360248231-31561-1-git-send-email-fabio.porcedda@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/2] at91sam9260/9g20ek: some cleanup
To: barebox@lists.infradead.org

I used some cleanup already done for the evk-pro3 board.

Tested on atsam9260ek.

Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

v2:
 - removed some parts in patch 1/3 as asked by Jean-Christophe
 - removed patch 2/3 as asked by Jean-Christophe


Fabio Porcedda (2):
  at91sam9260/9g20ek: cleanup coding style
  at91sam9260/9g20ek: enable clock via clock framework

 arch/arm/boards/at91sam9260ek/init.c | 31 +++++++++++--------------------
 1 file changed, 11 insertions(+), 20 deletions(-)

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
