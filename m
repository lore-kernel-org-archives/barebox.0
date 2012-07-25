Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo1.mail-out.ovh.net ([178.33.253.128]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwVl-0003hy-GH
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:00:03 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id EA767FF940A
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:05:30 +0200 (CEST)
Date: Wed, 25 Jul 2012 10:00:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120725080023.GU22657@game.jcrosoft.org>
References: <1343202453-16279-1-git-send-email-plagnioj@jcrosoft.com>
 <20120725075337.GM30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120725075337.GM30009@pengutronix.de>
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
Subject: Re: [PATCH 1/4] vsprintf: fix EXPORT_SYMBOL typo on simple_strtoull
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:53 Wed 25 Jul     , Sascha Hauer wrote:
> On Wed, Jul 25, 2012 at 09:47:30AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> I had the same patches locally already, but didn't come along posting
> them. Applied all.
> 
> btw you'll need the following for using modules with data cache enabled.
> I haven't posted it yet because using dma_* functions doesn't look right.
> Maybe we need some flush_dcache_range and flush_icache_range functions
so far I test them without MMU enable

I take a look and I agree

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
