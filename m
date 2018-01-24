Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeFkr-0005Th-TC
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 07:46:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Jan 2018 08:45:27 +0100
Message-Id: <20180124074534.7966-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/7] Make TFTP detection more convenient
To: Barebox List <barebox@lists.infradead.org>

We can't lseek on files provided by TFTP, so some code copies the file
to operate on from TFTP to RAM before continuing. Make this a bit easier
by providing some helper code. We now create /tmp/, provide make_temp()
to create temporary files and also a single function to create a copy
of a file in /tmp/.

Sascha Hauer (7):
  startup: create /tmp
  fs: implement is_tftp_fs()
  libfile: implement make_temp
  libfile: implement a function to cache a file
  uimage: Use is_tftp_fs() and cache_file() to ease TFTP workaround
  fs/uimagefs: Use is_tftp_fs() and cache_file() to ease TFTP workaround
  fs: remove now unused function can_lseek_backward()

 common/startup.c   |  1 +
 common/uimage.c    | 47 ++++++++++++++++++++++-------------------------
 fs/fs.c            | 22 ++++++++++++++++++++++
 fs/uimagefs.c      | 33 ++++++++++-----------------------
 include/fs.h       | 20 +++++---------------
 include/image.h    |  1 +
 include/libfile.h  |  4 ++++
 include/uimagefs.h |  2 +-
 lib/libfile.c      | 54 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 120 insertions(+), 64 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
