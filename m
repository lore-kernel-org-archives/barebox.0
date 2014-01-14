Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay01.ispgateway.de ([80.67.31.39])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W2z9i-0003qY-4j
 for barebox@lists.infradead.org; Tue, 14 Jan 2014 08:15:27 +0000
From: Markus Niebel <list-09_barebox@tqsc.de>
Date: Tue, 14 Jan 2014 09:23:33 +0100
Message-Id: <1389687817-30882-1-git-send-email-list-09_barebox@tqsc.de>
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
Subject: [PATCH v2 0/4] mmc: add setdsr support
To: barebox@lists.infradead.org

This is an example to add DSR support to barebox. Why this feature is
considered as useful is described in the first patch. Second and third
patch show how to pass values via device tree or platform data and 
last patch shows how this can be supported for a board using platform 
data.

Tested with TQMa53 and a 4.41 Micron eMMC with DSR support.

Changelog v1 (RFC) -> v2
- add device tree support
- fix possible null pointer access

[PATCH 1/4] mci: add DSR support
[PATCH 2/4] mci: add device tree support for DSR
[PATCH 3/4] mci: imx-esdhc: add DSR support
[PATCH 4/4] boards: tqma53: add DSR support for eMMC

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
