Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeoHE-0008JG-HC
 for barebox@lists.infradead.org; Tue, 21 May 2013 15:15:01 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E7D601018085
 for <barebox@lists.infradead.org>; Tue, 21 May 2013 17:14:35 +0200 (CEST)
Date: Tue, 21 May 2013 17:10:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130521151022.GC27130@game.jcrosoft.org>
References: <1368603809-5476-1-git-send-email-eric@eukrea.com>
 <20130517054349.GQ32299@pengutronix.de>
 <F6661D01-12A7-4ED2-A277-CF829AE802CD@jcrosoft.com>
 <20130521064117.GH32299@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130521064117.GH32299@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] nand_base: sync flash detection functions with
 linux 3.9's code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:41 Tue 21 May     , Sascha Hauer wrote:
> On Fri, May 17, 2013 at 07:15:12PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	can we have stable release as this patch fix the band support as it's broken since
> > 	4c2bdc8728016b3412523e3264651651fe752860
> 
> Said commit is not in 2013.05.0
wired git refs give

Refs: v2013.04.0-188-g4c2bdc8

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
