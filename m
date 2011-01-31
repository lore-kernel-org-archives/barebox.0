Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 30.mail-out.ovh.net ([213.186.62.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pjtvu-0007ZF-6V
	for barebox@lists.infradead.org; Mon, 31 Jan 2011 13:36:42 +0000
Date: Mon, 31 Jan 2011 14:34:35 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110131133435.GE26656@game.jcrosoft.org>
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
Subject: mci/stm378x warning
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

HI,

	durring some night build I see this on the drivers/mci/stm378x.c

	/opt/work/barebox/drivers/mci/stm378x.c: In function 'mci_request':
	/opt/work/barebox/drivers/mci/stm378x.c:354: warning: 'length' may be used uninitialized in this function
	/opt/work/barebox/drivers/mci/stm378x.c:354: note: 'length' was declared here

	so I guess length will initialized at 0

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
