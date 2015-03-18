Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YYAlf-0006a8-5Z
 for barebox@lists.infradead.org; Wed, 18 Mar 2015 10:00:04 +0000
Received: from mail613.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 5D9A5FFA924
 for <barebox@lists.infradead.org>; Wed, 18 Mar 2015 10:59:39 +0100 (CET)
Date: Wed, 18 Mar 2015 10:59:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150318095930.GT26127@ns203013.ovh.net>
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
Subject: [RFC] Keystore design
To: barebox@lists.infradead.org

Hi,

	I'm curently looking the implementation for the PKI keystore

	I was thinking to simply do a FS

	The idea is this one

	we will use envfs as storing format.

	Contraint:

	 - Multiple RO env
	 - one RW env
	 - as less as possible API to add a key

	1) Builtin

	 We will allow to have multiple keystore for boards
	 we need to be hanble to drop a keystore if not valid for this board
	 we need to be able to have global keystore

	2) SoC Keytore
	 - RO

	3) RW

	 a key will be store in the keystore on if valid (signed by a master
	 key or CA)

	We will use the fs api

	to put a key a simple cp will be enough

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
