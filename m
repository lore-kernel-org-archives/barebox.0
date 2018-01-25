Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eecE2-0005gV-DO
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:45:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Jan 2018 08:45:12 +0100
Message-Id: <20180125074520.10320-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2 0/8] Make TFTP detection more convenient
To: Barebox List <barebox@lists.infradead.org>

We can't lseek on files provided by TFTP, so some code copies the file
to operate on from TFTP to RAM before continuing. Make this a bit easier
by providing some helper code. We now create /tmp/, provide make_temp()
to create temporary files and also a single function to create a copy
of a file in /tmp/.

Changes since v1:
- Integrated changes suggested by Stefan Lengfeld

Sascha Hauer (8):
  startup: create /tmp
  fs: implement is_tftp_fs()
  libfile: implement make_temp
  libfile: implement a function to cache a file
  uimage: fix memory leak in error path
  uimage: Use is_tftp_fs() and cache_file() to ease TFTP workaround
  fs/uimagefs: Use is_tftp_fs() and cache_file() to ease TFTP workaround
  fs: remove now unused function can_lseek_backward()

 common/startup.c   |  1 +
 common/uimage.c    | 49 ++++++++++++++++++++++++------------------------
 fs/fs.c            | 22 ++++++++++++++++++++++
 fs/uimagefs.c      | 37 +++++++++++++-----------------------
 include/fs.h       | 22 ++++++----------------
 include/image.h    |  1 +
 include/libfile.h  |  4 ++++
 include/uimagefs.h |  2 +-
 lib/libfile.c      | 55 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 127 insertions(+), 66 deletions(-)

-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
