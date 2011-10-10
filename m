Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RDKgb-0006fq-L8
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 18:34:50 +0000
Received: from mail423.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 17224FFADE0
	for <barebox@lists.infradead.org>;
	Mon, 10 Oct 2011 20:35:58 +0200 (CEST)
Date: Mon, 10 Oct 2011 20:10:45 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111010181045.GA18064@game.jcrosoft.org>
References: <1318084919-3984-1-git-send-email-plagnioj@jcrosoft.com>
	<1318084919-3984-3-git-send-email-plagnioj@jcrosoft.com>
	<20111009093850.GO31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111009093850.GO31404@pengutronix.de>
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
Subject: Re: [PATCH 3/5] sha1: drop never used sha1_hmac
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:38 Sun 09 Oct     , Sascha Hauer wrote:
> On Sat, Oct 08, 2011 at 04:41:57PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  crypto/sha1.c |   39 ---------------------------------------
> >  1 files changed, 0 insertions(+), 39 deletions(-)
> 
> This one does not apply. We do not have a crypto/ dir in the tree.
the frist patch do the move it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
