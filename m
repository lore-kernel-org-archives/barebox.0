Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifksT-0003hn-Ja
 for barebox@lists.infradead.org; Fri, 13 Dec 2019 13:21:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Dec 2019 14:20:51 +0100
Message-Id: <20191213132055.7461-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] add discard_range to improve write speed on block devices
To: Barebox List <barebox@lists.infradead.org>

This implements an idea Lucas came up with: Our block layer is quite
stupid. It works on chunks from which one is currently 16KiB in size.
Whenever such a chunk is written to we must write the whole chunk which
also means we have to read it from the device first in order to keep
unaffected data. This series adds a discard_range() function which
can be used to tell the block layer that a certain range of the device
will be overwritten and the current content is no longer needed and
thus doesn't have to be read. With this I saw a speed gain of around
30% when writing to a SD card.

This series still needs a closer look before I want to merge it, but
it's already worth being looked at ;)

Sascha

Sascha Hauer (4):
  fs: Introduce discard_range()
  cdev: Add discard_range hook
  block: Implement discard_range
  copy_file: call discard_range on destination file

 common/block.c   | 21 +++++++++++++++++++++
 fs/devfs.c       | 21 +++++++++++++++++++++
 fs/fs.c          | 25 +++++++++++++++++++++++++
 include/block.h  |  3 +++
 include/driver.h |  1 +
 include/fs.h     |  3 +++
 lib/libfile.c    |  2 ++
 7 files changed, 76 insertions(+)

-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
