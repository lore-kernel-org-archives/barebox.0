Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.97.mail-out.ovh.net ([178.32.122.10] helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUvzC-0001oo-P2
	for barebox@lists.infradead.org; Fri, 10 Jun 2011 07:18:31 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 1C7E84A7D1D
	for <barebox@lists.infradead.org>;
	Fri, 10 Jun 2011 09:19:07 +0200 (CEST)
Date: Fri, 10 Jun 2011 09:05:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610070507.GQ17584@game.jcrosoft.org>
References: <1307642584-23695-1-git-send-email-plagnioj@jcrosoft.com>
	<20110610070447.GP23771@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110610070447.GP23771@pengutronix.de>
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
Subject: Re: [RFC PATCH] cammand/gpio: switch to getopt
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:04 Fri 10 Jun     , Sascha Hauer wrote:
> On Thu, Jun 09, 2011 at 08:03:04PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this will simplify the implementation and save 296 bytes
> 
> This is both true. Still I like the old syntax of the commands very
> much. Actually the commands have the same name as in the kernel and
> it feels just good to type.
maybe we can drop the command
and add a devfs entry

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
