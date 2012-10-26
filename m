Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRcwi-0008PQ-9p
 for barebox@lists.infradead.org; Fri, 26 Oct 2012 05:59:04 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so2151175lag.36
 for <barebox@lists.infradead.org>; Thu, 25 Oct 2012 22:59:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 26 Oct 2012 09:58:52 +0400
Message-Id: <1351231135-17324-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 0/3] readline: add ctrl-w handling (cut-the-last-word)
To: barebox@lists.infradead.org

The popular 'bash' command interpreter has the ctrl-w keystroke for
cutting the last word in the command line. This keystroke is
very handy for me and I really miss it in barebox.

This patch series adds ctrl-w support to barebox's readline
and in addition fixes a typo.

[RFC 1/3] readline: move backspace key handling to the DO_BACKSPACE
[RFC 2/3] readline: add ctrl-w handling (cut-the-last-word)
[RFC 3/3] readline: fix the 'new blank line at EOF' typo

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
