Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TADmq-0001Kp-Hz
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 05:40:56 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BF8F5FF8BF5
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 07:48:37 +0200 (CEST)
Date: Sat, 8 Sep 2012 07:41:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120908054116.GU20330@game.jcrosoft.org>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
 <1346848107-4664-3-git-send-email-plagnioj@jcrosoft.com>
 <20120907174805.GX26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120907174805.GX26594@pengutronix.de>
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
Subject: Re: [PATCH 3/7] defaultenv-2: boot use global.linux.bootargs.dyn
 for dynamic globarvar
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 19:48 Fri 07 Sep     , Sascha Hauer wrote:
> On Wed, Sep 05, 2012 at 02:28:23PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > linux.bootargs.dyn.* will be clearer at the beginning of boot
> 
> By 'clearer' do you mean 'cleared'? If yes, I maybe understand the
> intention of this patch.
yes

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
