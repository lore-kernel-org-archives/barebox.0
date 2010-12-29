Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out7.bezeqint.net ([192.115.188.214])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PY2kN-0003og-DQ
	for barebox@lists.infradead.org; Wed, 29 Dec 2010 20:35:52 +0000
Received: from mail.wellsense-tech.com (bzq-218-140-171.cablep.bezeqint.net
	[81.218.140.171])
	by out7.bezeqint.net (Postfix) with ESMTPA id 913785E3599
	for <barebox@lists.infradead.org>; Wed, 29 Dec 2010 22:35:29 +0200 (IST)
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Wed, 29 Dec 2010 22:35:28 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68BF775745@SBS2008.wellsense.local>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: 4096 page NAND boot support on iMX35 PDK board
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi all,

I just started using barebox on the iMX35 PDK and I have a bit of a problem.
My actual board is based on the PDK but with a slight change: the NAND chip is of newer generation and
has 4k page and 218 oob area.
I need to add support to boot from 4k pages in barebox and I can't seem to find any documentation on how to do that.
Can anyone point me in the right direction as to where to find this in the barebox code?

Thanks,

Boaz.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
