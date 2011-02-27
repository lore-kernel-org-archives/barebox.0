Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out7.bezeqint.net ([192.115.188.214])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PtZyi-0000GD-Sj
	for barebox@lists.infradead.org; Sun, 27 Feb 2011 06:19:38 +0000
Received: from remotel.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out7.bezeqint.net (Postfix) with ESMTPA id 836615E23DC
	for <barebox@lists.infradead.org>; Sun, 27 Feb 2011 08:19:17 +0200 (IST)
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Sun, 27 Feb 2011 08:19:06 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F893@SBS2008.wellsense.local>
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
Subject: Fallback environment in barebox
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Itai Raab <itai.raab@wellsense-tech.com>

Hi,

We want to implement a mechanism in barebox to use two environment
partitions.
i.e. when barebox boots it will go to the first by default and try to
use it. If for some reason it fails
it will boot with the second one.

What is the best way to implement this in barebox and did anyone do it
already?

Thanks,

Boaz.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
