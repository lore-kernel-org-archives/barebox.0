Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f171.google.com ([209.85.215.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0rbj-0007yf-95
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 10:43:03 +0000
Received: by mail-ea0-f171.google.com with SMTP id c13so1170335eaa.16
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 02:43:00 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Thu, 31 Jan 2013 11:42:54 +0100
Message-Id: <1359628977-20069-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH 0/3] at91sam9260/9g20ek: some cleanup
To: barebox@lists.infradead.org

I used some cleanup already done for the evk-pro3 board.

Tested on atsam9260ek.

Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Fabio Porcedda (3):
  at91sam9260/9g20ek: cleanup coding style
  at91sam9260/9g20ek: move sam9_smc_config modification inside
    definition
  at91sam9260/9g20ek: enable clock via clock framework

 arch/arm/boards/at91sam9260ek/init.c | 67 ++++++++++++++++--------------------
 1 file changed, 30 insertions(+), 37 deletions(-)

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
