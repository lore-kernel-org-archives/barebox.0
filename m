Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp8mq-0000hl-Kv
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 08:00:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Sep 2017 10:00:19 +0200
Message-Id: <20170905080021.22248-1-s.hauer@pengutronix.de>
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
Subject: Fix tftpd-hpa support
To: Barebox List <barebox@lists.infradead.org>
Cc: Dennis Menschel <menschel-d@posteo.de>

Downloading files from a tftpd-hpa server is broken when the files
are in subdirectories since the introduction of links to directories
in a602bebc ('fs: Implement links to directories'). This series fixes
this.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      fs: avoid pathes with '//' in __canonicalize_path()
      fs: Don't bother filesystems without link support with additional stat() calls

 fs/fs.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
