Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RYeZp-0001LV-Ql
 for barebox@lists.infradead.org; Thu, 08 Dec 2011 14:03:58 +0000
Received: by bkcje16 with SMTP id je16so2142926bkc.36
 for <barebox@lists.infradead.org>; Thu, 08 Dec 2011 06:03:56 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  8 Dec 2011 18:03:46 +0400
Message-Id: <1323353029-17281-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC PATCH 0/3] add tlsf memory allocator
To: barebox@lists.infradead.org

This patch series adds the tlsf memory allocator to barebox.

TLSF: Two Level Segregated Fit memory allocator implementation.
Written by Matthew Conte (matt@baisoku.org).
Public Domain, no restrictions.

[RFC PATCH 1/3] import TLSF 2.0
[RFC PATCH 2/3] adapt tlsf for barebox
[RFC PATCH 3/3] add tlsf-based malloc implementation

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
