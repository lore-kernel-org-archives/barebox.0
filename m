Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RhDGN-0005eQ-P8
 for barebox@lists.infradead.org; Sun, 01 Jan 2012 04:43:17 +0000
Received: from mail190.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 12944DC1A05
 for <barebox@lists.infradead.org>; Sun,  1 Jan 2012 05:44:06 +0100 (CET)
Date: Sun, 1 Jan 2012 05:37:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120101043717.GC945@game.jcrosoft.org>
References: <1324133529-2036-1-git-send-email-s.hauer@pengutronix.de>
 <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1324133529-2036-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 7/9] ARM: move exception vectors away from start of binary
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:52 Sat 17 Dec     , Sascha Hauer wrote:
> Traditionally U-Boot and barebox have the exception vectors at
> the start of the binary. There is no real reason in doing so,
> because in the majority of cases this data will not be at 0x0
> where it could be used as vectors directly anyway.
> This patch puts the vectors into a separate linker section and
> defines an head function which is placed at the start of the
> image instead. Putting this in a separate function also has
> the advantage that it can be placed at the start of images
> which require an additional header like several Freescale i.MX
> images. As the head function contains the barebox arm magic
> those images can now also be detected aas barebox images.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
I've to make it optionnal as on AT91 for boot we must have it at the bigeniing
of the binary

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
