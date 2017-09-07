Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dptDJ-0004wC-8Z
 for barebox@lists.infradead.org; Thu, 07 Sep 2017 09:35:11 +0000
Received: by mail-lf0-x243.google.com with SMTP id c8so4172772lfe.2
 for <barebox@lists.infradead.org>; Thu, 07 Sep 2017 02:34:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Sep 2017 12:34:36 +0300
Message-Id: <20170907093438.30895-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/2] gpio: gpio-generic: add dt support
To: barebox@lists.infradead.org

Changes since v1:

  * fix 'gpio: gpio-generic: fix bgpio_map()' according to Sascha's remark
    see http://lists.infradead.org/pipermail/barebox/2017-September/031044.html for details.


Antony Pavlov (2):
  gpio: gpio-generic: fix bgpio_map()
  gpio: gpio-generic: add dt support

 drivers/gpio/gpio-generic.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
