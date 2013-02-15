Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Izv-0001sW-8q
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 10:58:32 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so1690319eek.9
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 02:58:29 -0800 (PST)
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Fri, 15 Feb 2013 11:58:24 +0100
Message-Id: <1360925906-18475-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: [PATCH v2 0/2]  at91sam9260/9g20ek: cleanup and optimization
To: barebox@lists.infradead.org

Some cleanup and optimization removing #if/#ifdef and using IS_ENABLED.

Best regards

v2:
 - fixed the first patch by removing the #ifdef inside nand_pdata definition.


Fabio Porcedda (2):
  at91sam9260/9g20ek: use IS_ENABLED instead of #if/#ifdef
  at91sam9260/9g20ek: remove #ifdef for ek_usb_add_device_mci()

 arch/arm/boards/at91sam9260ek/init.c | 28 ++++++++++------------------
 1 file changed, 10 insertions(+), 18 deletions(-)

-- 
1.8.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
