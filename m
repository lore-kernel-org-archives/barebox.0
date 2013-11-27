Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from post.merula.co.uk ([217.146.97.9])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VldIr-0008JZ-2h
 for barebox@lists.infradead.org; Wed, 27 Nov 2013 11:29:09 +0000
Received: from remote.lucyautomation.co.uk (unknown [62.6.155.233])
 by post.merula.co.uk (Postfix) with ESMTPSA id 2F39E84506
 for <barebox@lists.infradead.org>; Wed, 27 Nov 2013 11:27:30 +0000 (GMT)
From: John Parker <John.Parker@lucyautomation.co.uk>
Date: Wed, 27 Nov 2013 11:28:42 +0000
Message-ID: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: FW: Barebox on Karo TX25
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all

I've spent a day trying to get barebox onto a Karo TX25. I've trawled the lists and documentation but seem to be missing something fundamental.

I need to replace Redboot with barebox and I know that barebox will need 512k (256k + 2 more blocks for env) rather than the 256k partition that Redboot has.

Redboot is version "Ka-Ro 2009-06-10" as supplied with the TX25.

The problem is that when I try to delete and recreate the Redboot partition, Redboot says no becays it is reserved, even though I'm running in ROMRAM mode.

I know the tx25 is a supported configuration because there is a defconfig for it.

Is it documented anywhere exactly how to replace redboot with barebox?

What magic am I missing?

Thanks

John

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
