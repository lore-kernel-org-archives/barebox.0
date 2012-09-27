Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THJtB-0002OE-3a
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 19:36:50 +0000
Received: from mail436.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 8869ADC12ED
 for <barebox@lists.infradead.org>; Thu, 27 Sep 2012 21:42:44 +0200 (CEST)
Date: Thu, 27 Sep 2012 21:34:12 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120927193412.GE26553@game.jcrosoft.org>
References: <1348766546-21547-1-git-send-email-s.hauer@pengutronix.de>
 <1348766546-21547-2-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348766546-21547-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/3] net: Add tftp command which uses the new tftp code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:22 Thu 27 Sep     , Sascha Hauer wrote:
> Traditionally tftp is a command of its own. Since we can
> mount tftp as a filesystem we have duplicated the tftp code, the old
> code is used by the tftp command, the new by the filesystem support.
> This adds a tftp command based on the filesystem support to preserve
> backward compatibility. This allows us to remove the old tftp support
> in the next step.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/Kconfig  |    8 +++++
>  commands/Makefile |    1 +
>  commands/tftp.c   |  103 +++++++++++++++++++++++++++++++++++++++++++++++++++++
why this is c code?

why not simply do it via script

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
