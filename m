Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.29.23])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1YHf-00044q-0o
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 09:21:43 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Fri, 10 Jan 2014 10:29:48 +0100
Message-Id: <1389346191-15851-1-git-send-email-list-09_barebox@tqsc.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] mci: add DSR support
To: barebox@lists.infradead.org

This is an example to add DSR support to barebox. Why this feature is
considered as useful is described in the first patch. Second patch shows
how to pass values and third patch shows how this can be supported for
a board.

Tested with TQMa53 and a 4.41 Micron eMMC with DSR support.

[PATCH 1/3] mci: add DSR support
[PATCH 2/3] mci: imx-esdhc: add DSR support
[PATCH 3/3] boards: tqma53: add DSR support for eMMC

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
