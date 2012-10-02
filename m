Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ3WY-0001d4-Gf
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 14:32:39 +0000
Received: from mail612.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7427FFF93C6
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 16:41:24 +0200 (CEST)
Date: Tue, 2 Oct 2012 16:30:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121002143011.GZ26553@game.jcrosoft.org>
References: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] pbl updates
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:06 Tue 02 Oct     , Sascha Hauer wrote:
> Here are two updates for the MMU code in the decompressor. The first
> one may come in handy when a JTAG debugger is connected. The second
> one is more important. It actually makes turning on the MMU in the
> decompressor useful by making map_cachable work. It turned out that
> this didn't work leaving the whole mapping uncached.
> Note that the code in current master should work, but slow. Since
> it actually does work I do not want to put this into the upcoming
> release.
As I report the current code does not work on at91sam9g45
I suspect as we boot from the second ram controler on this SoC

So please hold the release that I can try those patch on sam9g45 if they fix
the PBL they will be mandatory for it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
