Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo68.mail-out.ovh.net ([46.105.59.63])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4RZ8-0000pZ-IC
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 09:52:16 +0000
Received: from mail96.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 270A8FFA5CE
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 10:51:46 +0100 (CET)
Date: Fri, 26 Dec 2014 10:51:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20141226095143.GB15818@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [REGRESSION BUG] at91 is broken on barebox
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

HI,

	since the switch to ERR_PTR & co

	for dev_get_resource_by_name & others the at91 is broken

	as on barebox we use a 1:1 mapping and the check of the IS_ERR is
	((unsigned long)-MAX_ERRNO)

	but on at91 the PIT and so on are at 0xfffffd30 so on always seen as
	an error

	so can we revert the commit on 

	ommit 92cc1b1f9e3363046583962859a3a8c054f4b94d

	& co

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
