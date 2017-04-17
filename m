Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d047A-0005LY-VM
 for barebox@lists.infradead.org; Mon, 17 Apr 2017 10:42:38 +0000
Received: by mail-lf0-x244.google.com with SMTP id x72so15533921lfb.1
 for <barebox@lists.infradead.org>; Mon, 17 Apr 2017 03:42:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Apr 2017 13:42:08 +0300
Message-Id: <20170417104210.8196-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] of: base: some simplifications
To: barebox@lists.infradead.org

Antony Pavlov (2):
  of: base: exclude memcpy-like code from of_property_write_u8_array()
  of: base: of_new_property(): use xstrdup() instead of strdup()

 drivers/of/base.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
