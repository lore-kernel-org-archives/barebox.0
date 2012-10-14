Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TNL00-0005pr-Sm
 for barebox@lists.infradead.org; Sun, 14 Oct 2012 10:00:45 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 33F38FF878B
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2012 12:10:01 +0200 (CEST)
Date: Sun, 14 Oct 2012 11:58:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121014095822.GQ13639@game.jcrosoft.org>
References: <1350205567-24425-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350205567-24425-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM AT91: remove unnecessary 128m defconfigs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:06 Sun 14 Oct     , Sascha Hauer wrote:
> These configs are present in two variants with the
> only different in SDRAM size. Since the SDRAM size is
> autodetected now, these are pure duplicates. Remove
> them and the unused AT91_HAVE_SRAM_128M option.
keep it I'm adding the nand boot I do need it to setup the sdram correctly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
