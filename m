Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo3.mail-out.ovh.net ([46.105.57.200]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqKDF-0001SW-KP
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 07:25:26 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 29E01FFB426
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 09:25:26 +0200 (CEST)
Date: Mon, 8 Aug 2011 09:06:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110808070650.GA22017@game.jcrosoft.org>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: ARM: use high vectors if possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:46 Mon 08 Aug     , Sascha Hauer wrote:
> Created this series to get high vector support. Using high vectors
> at 0xffff0000 allow us to map in a faulting page at 0x0 with which
> we can catch NULL pointer dereferences. The other patches are only
> some cleanups around exceptions which I came along the way.
be careful on ixp4xx (which I work on 0x0 is the nor flash address)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
