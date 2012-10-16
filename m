Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO2qZ-00082k-K5
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 08:49:56 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9E8E9104F663
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 10:56:31 +0200 (CEST)
Date: Tue, 16 Oct 2012 10:47:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016084734.GI5803@game.jcrosoft.org>
References: <1350328918-15383-1-git-send-email-s.hauer@pengutronix.de>
 <20121016072248.GE5803@game.jcrosoft.org>
 <20121016073052.GV27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121016073052.GV27665@pengutronix.de>
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
Subject: Re: [PATCH] ARM bootz: use request_sdram_region
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:30 Tue 16 Oct     , Sascha Hauer wrote:
> On Tue, Oct 16, 2012 at 09:22:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 21:21 Mon 15 Oct     , Sascha Hauer wrote:
> > > We now have request_sdram_region to request a region. Use
> > > it instead of a comparison with MALLOC_BASE.
> > > 
> > do we really need to keep bootz??
> 
> As long as it does not cause a real maintenance burden we can keep it.
bootm do the same job

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
