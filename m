Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f45.google.com ([74.125.83.45])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6IjE-0000ot-2r
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:41:16 +0000
Received: by mail-ee0-f45.google.com with SMTP id b57so1660164eek.4
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:41:13 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:41:08 +0100
Message-Id: <1360924870-13979-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH 0/2] at91sam9260/9g20ek: cleanup and optimization
To: barebox@lists.infradead.org

Some cleanup and optimization removing #if/#ifdef and using IS_ENABLED.

Best regards

Fabio Porcedda (2):
  at91sam9260/9g20ek: use IS_ENABLED instead of #if/#ifdef
  at91sam9260/9g20ek: remove #ifdef for ek_usb_add_device_mci()

 arch/arm/boards/at91sam9260ek/init.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
