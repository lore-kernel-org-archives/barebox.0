Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJI8J-0001XZ-6Q
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 07:45:23 +0000
Received: by mail-ea0-f180.google.com with SMTP id m10so2411870eaj.39
 for <barebox@lists.infradead.org>; Thu, 27 Feb 2014 23:45:01 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Fri, 28 Feb 2014 08:44:25 +0100
Message-Id: <1393573468-31105-1-git-send-email-alex.aring@gmail.com>
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
Subject: [RFC 0/3] current read implementation and POSIX
To: barebox@lists.infradead.org

Hi all,

first I want to say "Sascha, please don't apply this patch serie!". I suppose I
detected some incompatible POSIX read call behaviour.

History:

I am thinking about to add a procfs into barebox and I begun to hack this while
I sitting in the train. I don't want to talk about the procfs idea right now,
maybe we don't need something like this. But while I hacked it I detected some
misbehaviour of read(2).

Issue:

read returns the number of bytes which are readed if there are no bytes it should
return 0;

But if the file is zero read will return nothing, this is fixed in Patch 2/3 (please
review carefully, I did this fix fast and check only if it working)

Some commands/functions check if the file is zero and then these functions calls no read
but this is wrong. When a file is zero, read can read some bytes of course. A zero file
not indicate that the file has no content. Maybe I should reference the ugly POSIX opengroup
documentation, but you can see it yourself in linux:

ls -l /proc/version:
-r--r--r-- 1 root root 0 Feb 28 08:30 /proc/version

is a zero file and contains information with "cat /proc/version".

Patch 3/3 fix this issue for commands like edit which use the read_full function which
should read contents with the return value of read and not with size value.


To test the behaviour I advice you this steps:

1. Apply patch 1/3 which adds a simple ugly hacked foofs.

2. Compile a sandbox and start it.

3. in barebox run: "mkdir /bar;mount none foofs /bar"

4. run "cat /bar/foobar" and "edit /bar/foobar" -> nothing will be displayed

5. Apply patch 2/3 and 3/3 and rerun steps 2-4



So why I don't fix this issue? Because I can't test everything and I think some filesystem
and other commands can't deal with it and maybe we don't want to fix this issue and accept the
current behaviour. :-(

Another hint:

Sascha had some problems with zero files in tftpfs maybe there is some relationship between
this issue and the zero file tftpfs files... because the read of zero files is currently some
kind of broken. :-)

- Alex

Alexander Aring (3):
  ramfs: add foofs for testing
  fs: read: handle zero files
  libbb: read_full: use read return instead size

 fs/fs.c     |  3 ---
 fs/ramfs.c  | 69 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/libbb.c |  2 +-
 3 files changed, 70 insertions(+), 4 deletions(-)

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
