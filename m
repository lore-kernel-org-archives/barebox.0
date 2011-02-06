Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from out1.bezeqint.net ([192.115.188.207])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pm5GY-0008UV-2j
	for barebox@lists.infradead.org; Sun, 06 Feb 2011 14:07:03 +0000
Received: from remotel.wellsense-tech.com (bzq-218-57-225.cablep.bezeqint.net
	[81.218.57.225])
	by out1.bezeqint.net (Postfix) with ESMTPA id 79DB5BA7FDB
	for <barebox@lists.infradead.org>; Sun,  6 Feb 2011 16:06:57 +0200 (IST)
From: Boaz Ben-David <boaz.bd@wellsense-tech.com>
Date: Sun, 6 Feb 2011 16:06:56 +0200
Message-ID: <39A4B204C321D34DA3490E3B119D5A6C68C006F854@SBS2008.wellsense.local>
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
Subject: Manipulating boot environment from user-space
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi,

Is there a way to change values in the environment used by barebox
after booting? e.g. already in the linux user space of device booted?

Thanks,

Boaz.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
