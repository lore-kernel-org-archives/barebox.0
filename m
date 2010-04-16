Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O2ffu-0005ji-8H
	for barebox@lists.infradead.org; Fri, 16 Apr 2010 07:09:14 +0000
From: Luotao Fu <l.fu@pengutronix.de>
Date: Fri, 16 Apr 2010 09:08:48 +0200
Message-Id: <1271401730-30665-1-git-send-email-l.fu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Patches for default environment path handling
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Hi Sascha,

following patches fix handling of default environment path in barebox makefiles.
With them we can now finally use absolute paths for
CONFIG_DEFAULT_ENVRIONMENT_PATH. \o/. Tested with both normal and out-of-tree
building.

cheers
Fu


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
