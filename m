Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22c.google.com ([2a00:1450:4008:c01::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UG784-0007cJ-W3
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 12:19:33 +0000
Received: by mail-bk0-f44.google.com with SMTP id j4so969440bkw.3
 for <barebox@lists.infradead.org>; Thu, 14 Mar 2013 05:19:26 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Thu, 14 Mar 2013 13:19:21 +0100
Message-ID: <1363263561.4022.37.camel@mars>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Omap4 DSS clocks
To: barebox@lists.infradead.org

Hi,

 Barebox crashes while reading a DSS register:

  $ md 0x48040000
  unable to handle paging request at address 0x48040000

I suppose this is due to a turned off clock.

Any hints?


Thanks
 -- Christoph


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
