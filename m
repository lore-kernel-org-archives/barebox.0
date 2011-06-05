Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out3.bezeqint.net ([192.115.188.209])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QTBqr-0006xX-MG
	for barebox@lists.infradead.org; Sun, 05 Jun 2011 11:50:42 +0000
Received: from remote.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out3.bezeqint.net (Postfix) with ESMTPA id 0E88F5E4517
	for <barebox@lists.infradead.org>; Sun,  5 Jun 2011 14:50:17 +0300 (IDT)
Message-ID: <4DEB6D69.5030003@wellsense-tech.com>
Date: Sun, 5 Jun 2011 14:50:01 +0300
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: protecting env partitions from bad blocks
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I want to protect the env partition on my device from bad blocks 
(created during operation or already there out of the factory).
Couldn't find any good documentation regarding this issue, so I have 
some questions:

1. Exactly what capabilities the bb devices in Barebox give me?
2. I was thinking of somehow assigning the env partition larger than 
required in order to later
handle bad blocks by moving the block currenly being used to be the 
first good block.
Is this a good approach or maybe there is something already ready and I 
shouldn't bother because I am totally missing the point?

Thanks,

Boaz.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
