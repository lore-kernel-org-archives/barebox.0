Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQbko-0003Ct-L4
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 10:30:35 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 532B5FFC784
 for <barebox@lists.infradead.org>; Tue, 23 Oct 2012 12:40:15 +0200 (CEST)
Date: Tue, 23 Oct 2012 12:28:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121023102819.GJ21588@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <20121023085116.GQ27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023085116.GQ27665@pengutronix.de>
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
Subject: Re: [PATCH 0/3] introduce command abi version
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:51 Tue 23 Oct     , Sascha Hauer wrote:
> On Mon, Oct 22, 2012 at 06:03:41PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	This will allow to detect command incompability between different
> > 	version of barebox
> 
> Generally a good move. I want to it some more time to apply it though
> as this is a significant change.
> Nevertheless some comments inline.
I'm going to resend the boot sequence and want to bump the command ABI

I was think to use a major minor to report minor command udpate such as nand
test which is not critical as mount which need major bump

one a issue I get is how to describe env compatible with multiple version of
barebox and choose if env is more recent than the current barebox do not
udpate it

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
