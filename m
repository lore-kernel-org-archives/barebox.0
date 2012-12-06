Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgWm9-000051-3A
 for barebox@lists.infradead.org; Thu, 06 Dec 2012 08:25:46 +0000
Received: by mail-la0-f49.google.com with SMTP id r15so4584563lag.36
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2012 00:25:43 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  6 Dec 2012 12:25:34 +0400
Message-Id: <1354782336-16239-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/2] clk: pass the 'flags' parameter to clk_fixed()
To: barebox@lists.infradead.org

The 'flags' parameter make possible creation
of a 'CLK_ALWAYS_ENABLED' clock without code overhead.

So it is possible to create clock this way
 clk_fixed("main_clock", 24000000, 0);
or that way
 clk_fixed("main_clock", 24000000, CLK_ALWAYS_ENABLED);

I can't check my clk_fixed-related changes for ARM-based
boards, so please consider, do we need CLK_ALWAYS_ENABLED
in the patch '[RFC 2/2]' or we need '0'.

[RFC 1/2] clk: pass the 'flags' parameter to clk_fixed()
[RFC 2/2] ARM: pass the 'flags'=0 parameter to clk_fixed()

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
