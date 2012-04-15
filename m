Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPfG-0007FJ-9S
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:38:50 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3B009FF86A4
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 15:40:01 +0200 (CEST)
Date: Sun, 15 Apr 2012 15:20:44 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415132044.GK30672@game.jcrosoft.org>
References: <1334496380-4091-1-git-send-email-s.hauer@pengutronix.de>
 <1334496380-4091-4-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334496380-4091-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/6] net: add nameserver and domainname to net devices
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:26 Sun 15 Apr     , Sascha Hauer wrote:
> This adds nameserver and domainname to net devices. This may not
> be 100% correct since the nameserver and domainname are not network
> device specific. However, we currently do not have the possibility
> for global variables. DNS support depends on the nameserver/domainname
> to be set correctly. When we set both inside a script the variables
> will not be available to the parent context, so use device parameters
> which are global.

how about put it at bus level instead?

I get an issue is what happened if we have 2 ethernet?

and switch from one to the other?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
