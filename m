Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-v.mail.gandi.net ([217.70.178.78])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu4F2-0005en-EF
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 13:34:00 +0000
Received: from mfilter4-d.gandi.net (mfilter4-d.gandi.net [217.70.178.45])
	by relay4-v.mail.gandi.net (Postfix) with ESMTP id 21A09BA17
	for <barebox@lists.infradead.org>; Tue, 23 Mar 2010 14:33:54 +0100 (CET)
Received: from relay4-v.mail.gandi.net ([217.70.178.78])
	by mfilter4-d.gandi.net (mfilter4-d.gandi.net [217.70.178.45])
	(amavisd-new, port 10024)
	with ESMTP id c5dBi5mBO9Ll for <barebox@lists.infradead.org>;
	Tue, 23 Mar 2010 14:33:48 +0100 (CET)
Received: from d4rwin.no-ip.org (219.Red-193-152-182.dynamicIP.rima-tde.net
	[193.152.182.219]) (Authenticated sender: matthias@kaehlcke.net)
	by relay4-v.mail.gandi.net (Postfix) with ESMTP id 2418DBA34
	for <barebox@lists.infradead.org>; Tue, 23 Mar 2010 14:33:48 +0100 (CET)
Date: Tue, 23 Mar 2010 14:32:17 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100323133217.GA26177@darwin>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Barebox working on freescale-mx25-3-stack?
To: barebox@lists.infradead.org

hi,

i'm trying to run barebox on a Freescale i.MX25 3-Stack board. for
this purpose i built barebox with the freescale-mx25-3-stack
defconfig, using the toolchain provided by the Freescale BSP (i also
tried it with a custom one). i then dumped the barebox.bin on a MMC
card, plugged the card into the socket of the board and switched the
board on, but nothing happened :(

booting u-boot or redboot from MMC succeeds, so the settings of SW21
and SW22 shouldn't be the problem

is barebox supposed to work on this board or is the port still in
preliminary state?

best regards

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

            Nothing is more despicable than respect based on fear
                              (Albert Camus)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
