Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f49.google.com ([74.125.83.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TBW1K-00018Q-Io
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 19:21:15 +0000
Received: by eekc13 with SMTP id c13so723853eek.36
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 12:21:11 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Tue, 11 Sep 2012 21:21:00 +0200
Message-ID: <1347391260.4361.12.camel@mars>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: regression: ARM: pca100: Use _text rather than TEXT_BASE
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

your commit 244198e "ARM boards: Use _text rather than TEXT_BASE"
breaks board pca100 (phycard-i.MX27): It doesn't boot.

Revering the patch fixes the problem.

Any ideas?

 Thanks,
   -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
