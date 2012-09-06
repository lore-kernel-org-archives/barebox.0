Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9ZNX-00029w-BN
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 10:32:09 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 913B2FF9886
 for <barebox@lists.infradead.org>; Thu,  6 Sep 2012 12:39:43 +0200 (CEST)
Date: Thu, 6 Sep 2012 12:32:26 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120906103226.GG20330@game.jcrosoft.org>
References: <1346926816-6695-1-git-send-email-jlu@pengutronix.de>
 <1346926816-6695-2-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346926816-6695-2-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Makefile: add target to produce a SPL compatible
 uImage
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:20 Thu 06 Sep     , Jan Luebbe wrote:
> This is mostly useful during the initial port of barebox to a new
> board which is supported by u-boot. It also allows starting barebox
> from a SRAM-based u-boot SPL.
> 
> A different load address can be set like this:
> make barebox.uimage UIMAGE_BASE=0x80000000
> 
> This patch was developed together with Sascha Hauer. Thanks!
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  Makefile |   16 ++++++++++++++++
missing gitignore and clean

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
