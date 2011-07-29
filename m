Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmna7-0003Oj-3E
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 13:58:27 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 30F53FFAB54
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 15:59:15 +0200 (CEST)
Date: Fri, 29 Jul 2011 15:40:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729134046.GE25658@game.jcrosoft.org>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
	<20110729105740.GC20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110729105740.GC20587@pengutronix.de>
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
Subject: Re: [PATCH 1/7] generic_memmap_ro/rw: switch to resource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:57 Fri 29 Jul     , Sascha Hauer wrote:
> Hi J,
> 
> Apart from the few comments this looks good and seems to work. Can
> you rebase on current next? You'll notice that I alreasy introduced
> a helper to register a 16550 serial device.
Hi rewrite ns16550 too to drop the read and write except for x86

now we just have to have to specify the memory tipe 8/16/32 bits

and the driver manage

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
