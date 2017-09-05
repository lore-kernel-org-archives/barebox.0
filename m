Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x230.google.com ([2a00:1450:4010:c07::230])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp8CO-0006mO-1W
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 07:23:06 +0000
Received: by mail-lf0-x230.google.com with SMTP id 80so3278836lfy.4
 for <barebox@lists.infradead.org>; Tue, 05 Sep 2017 00:22:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Sep 2017 10:22:35 +0300
Message-Id: <20170905072237.2268-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] gpio: gpio-generic: add dt support
To: barebox@lists.infradead.org

Antony Pavlov (2):
  gpio: gpio-generic: fix bgpio_map()
  gpio: gpio-generic: add dt support

 drivers/gpio/gpio-generic.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
