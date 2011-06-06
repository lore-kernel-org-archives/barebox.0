Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 97.mail-out.ovh.net ([91.121.185.90])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTW8B-0008WP-9H
	for barebox@lists.infradead.org; Mon, 06 Jun 2011 09:29:55 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 63121421775
	for <barebox@lists.infradead.org>;
	Mon,  6 Jun 2011 11:30:11 +0200 (CEST)
Date: Mon, 6 Jun 2011 11:16:51 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110606091651.GD11298@game.jcrosoft.org>
References: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
	<20110606062214.GT23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110606062214.GT23771@pengutronix.de>
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
Subject: Re: [PATCH] import linux __iowrite32/64_copy support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:22 Mon 06 Jun     , Sascha Hauer wrote:
> Hi J,
> 
> On Thu, Jun 02, 2011 at 05:51:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  include/linux/io.h |   27 ++++++++++++++++++++
> >  lib/Makefile       |    1 +
> >  lib/iomap_copy.c   |   70 ++++++++++++++++++++++++++++++++++++++++++++++++++++
> 
> No general obejctions, but without users this is quite uninteresting.
> Please repost this along with the first user.
the mci support for atmel we will speed to memcpy

I'll use it also on the framebuffer console support later

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
