Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo1.mail-out.ovh.net ([188.165.38.232]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RXaCf-0007eu-LP
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 15:11:38 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9F658FFB8A4
 for <barebox@lists.infradead.org>; Mon,  5 Dec 2011 16:11:41 +0100 (CET)
Date: Mon, 5 Dec 2011 16:07:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111205150758.GB9192@game.jcrosoft.org>
References: <1322891084-446-1-git-send-email-plagnioj@jcrosoft.com>
 <20111205084846.GZ27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111205084846.GZ27267@pengutronix.de>
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
Subject: Re: [PATCH 1/2] use format(__printf__, a, b) instead of
 formart(printf, a, b)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:48 Mon 05 Dec     , Sascha Hauer wrote:
> On Sat, Dec 03, 2011 at 06:44:43AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > to fix warning 'barebox_printf' is an unrecognized format function type
> 
> Where do you see this warning? I do not get it anymore since Loic fixed
> it.
__printf is the right way to fix it so use it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
