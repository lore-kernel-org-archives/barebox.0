Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x230.google.com ([2607:f8b0:400e:c01::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8Qi-0001jl-TQ
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:18:50 +0000
Received: by mail-pl0-x230.google.com with SMTP id w14-v6so8957823plp.6
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:18:38 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:18:24 +0200
Message-Id: <20180821151826.5011-1-aleksander@aleksander.es>
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
Subject: i2c master send/receive mode
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

The i2c master send support was already implemented in the i2c_write command, but it was not properly documented. The first patch in the series addresses that.

In the second patch, the i2c master receive mode is implemented in the i2c_read command.

 [PATCH 1/2] i2c_write: document master send mode
 [PATCH 2/2] i2c_read: implement support for master receive mode


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
