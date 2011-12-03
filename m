Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RWufQ-0007cZ-9G
 for barebox@lists.infradead.org; Sat, 03 Dec 2011 18:50:33 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 0C0E51004613
 for <barebox@lists.infradead.org>; Sat,  3 Dec 2011 19:50:33 +0100 (CET)
Date: Sat, 3 Dec 2011 19:47:04 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111203184704.GP18533@game.jcrosoft.org>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
 <1322518209-2965-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1322518209-2965-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 07/16] remove old zlib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 23:10 Mon 28 Nov     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/zlib.h |  434 ------------
>  lib/gunzip.c   |   85 ---
>  lib/zlib.c     | 2158 --------------------------------------------------------
>  3 files changed, 0 insertions(+), 2677 deletions(-)
>  delete mode 100644 include/zlib.h
>  delete mode 100644 lib/gunzip.c
>  delete mode 100644 lib/zlib.c
cramfs support is broken :(

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
