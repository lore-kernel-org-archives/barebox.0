Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJit2-0006uX-RC
 for barebox@lists.infradead.org; Thu, 25 Apr 2019 18:14:22 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 4so467335wmf.1
 for <barebox@lists.infradead.org>; Thu, 25 Apr 2019 11:14:17 -0700 (PDT)
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <0b4e8036-c8d2-abef-8ee7-d28994e552a8@gmail.com>
Date: Thu, 25 Apr 2019 20:14:10 +0200
MIME-Version: 1.0
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Porting Clause 45 PHY support to Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I'd like to port Clause 45 PHY support and more recent Linux phylib
extensions to Barebox. Ideally it should be possible later to apply
most Linux patches as-is on Barebox. Before I start two questions:

- Any guidelines what it typically takes to port Linux Kernel code
  to Barebox? (I suppose at least removing mutexes + spinlocks, changing
  all interrupts to polling)
- Especially regarding drivers/net/phy: any plans I should be aware of?

Heiner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
