Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f48.google.com ([209.85.214.48])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7BPF-0006Dh-Ax
 for barebox@lists.infradead.org; Sun, 17 Feb 2013 21:04:18 +0000
Received: by mail-bk0-f48.google.com with SMTP id jf20so2253548bkc.21
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2013 13:04:15 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 17 Feb 2013 22:04:59 +0100
Message-Id: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC PATCH v2 0/2] fs: add pread and pwrite functions
To: barebox@lists.infradead.org

These Patches fixes the return type of read function and add two new functions,
pread and pwrite in fs layer of barebox.

In my opinion this implementation of pread and pwrite could be better if fs
interface has as read callback:
int (*read)(struct device_d *dev, loff_t pos, ... flags, etc...);

not a "FILE *" as parameter.

instead of:
int (*read)(struct device_d *dev, FILE *f, void *buf, size_t size);

I don't want to screw up the interface, it's only a notice. This would be funny
if we change that. :-/

The current implementation of pread and pwrite saves the current file pos and
restore them after do some file manipulation. Could be optimize if a filesystem
driver doesn't read the pos from FILE pointer and I can give the offset over a
parameter. In case of read it would be "f->pos" and pread it would be "offset".

Another thing is:

We could optimize it (pwrite and pread) and (read and write) looks very similar.
The only different between these functions is a "const void *buf" and "void *buf"

I thinking a about a function with a functionpointer as parameter like

static ssize_t __do_read_or_write(int fd, void *buf, size_t count,
			ssize_t func(int fd, void *buf, size_t count))

Which func is for read = __read and for write = __write, but I got trouble because
the function prototype "void *" and "const void*". I can do more parameters and
decide it as runtime, but I don't like to do that, looks very ugly.

Regards
Alex

v2:
	rewritten pread and pwrite functions

Alexander Aring (2):
  fs: fix return type of read
  fs: add pread and pwrite functions

 fs/fs.c      | 89 ++++++++++++++++++++++++++++++++++++++++++++++++++----------
 include/fs.h |  4 ++-
 2 files changed, 78 insertions(+), 15 deletions(-)

-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
