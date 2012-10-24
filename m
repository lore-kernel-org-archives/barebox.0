Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQw0p-0006uN-ID
 for barebox@lists.infradead.org; Wed, 24 Oct 2012 08:08:30 +0000
Received: from mail417.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3222FFFBFEA
 for <barebox@lists.infradead.org>; Wed, 24 Oct 2012 10:18:09 +0200 (CEST)
Date: Wed, 24 Oct 2012 10:06:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121024080607.GL21588@game.jcrosoft.org>
References: <20121024074615.GU27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121024074615.GU27665@pengutronix.de>
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
Subject: Re: phylib does not wait for link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:46 Wed 24 Oct     , Sascha Hauer wrote:
> The current phylib behaviour is unusable for unattended network boot, we
> need to do something about it.
> 
> We currently have no instance that would wait until a link comes up.
> This may work for the default-3-seconds-boot-timeout which is enough for
> most phys, but fails with smaller timeouts.
> 
> There are several places in which we could wait for a link to come up, I
> have no idea which one is the best:
> 
> - eth_send
yes with timeout
> - phylib
no
> - in the protocols (dhcp, ping, ...)
no too many
> 
> Anyway, this deserves fixing before the next release.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
