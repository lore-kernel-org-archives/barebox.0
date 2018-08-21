Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs8SB-0002z6-Bg
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 15:20:20 +0000
Received: by mail-pf1-x42f.google.com with SMTP id j8-v6so8655397pff.6
 for <barebox@lists.infradead.org>; Tue, 21 Aug 2018 08:20:08 -0700 (PDT)
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Tue, 21 Aug 2018 17:19:57 +0200
Message-Id: <20180821152001.5747-1-aleksander@aleksander.es>
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
Subject: RATP i2c and GPIO support
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

This patch series implements support for i2c and GPIO operations via RATP.

  [PATCH 1/4] ratp: implement i2c read/write support
  [PATCH 2/4] bbremote: implement i2c read/write support
  [PATCH 3/4] ratp: implement support for GPIO commands
  [PATCH 4/4] bbremote: implement support for GPIO operations


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
