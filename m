Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STcXM-0001gX-FM
 for barebox@lists.infradead.org; Sun, 13 May 2012 17:24:53 +0000
Received: by lbbgg6 with SMTP id gg6so3587169lbb.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 10:24:50 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 13 May 2012 21:24:41 +0400
Message-Id: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/3] MIPS: add the initial support for lowlevel init
To: barebox@lists.infradead.org

This patch series introduce the initial support for lowlevel init
for the MIPS boards.

In the future low level initialization will be used
for cache initialization.

[RFC 1/3] MIPS: move start.S code to .text_entry section
[RFC 2/3] MIPS: add the initial support for lowlevel init
[RFC 3/3] MIPS: malta: add bogus lowlevel init

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
