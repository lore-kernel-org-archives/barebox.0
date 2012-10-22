Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f49.google.com ([209.85.214.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TQCKa-0002Pa-Db
 for barebox@lists.infradead.org; Mon, 22 Oct 2012 07:21:49 +0000
Received: by mail-bk0-f49.google.com with SMTP id j4so641038bkw.36
 for <barebox@lists.infradead.org>; Mon, 22 Oct 2012 00:21:46 -0700 (PDT)
From: Alexander Aring <alex.aring@googlemail.com>
Date: Mon, 22 Oct 2012 09:23:24 +0200
Message-Id: <1350890612-10588-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 0/8] improve nandtest command
To: barebox@lists.infradead.org

Small Summary:
	- The old nandtest do a ecc statistic per eraseblock, it's better to
	  do this per page. I don't know how this works with subpages.
	
	- Add a progressbar instead of prints of current flash offset.

	- Rename command argument 'passes' to 'iterations', which makes more
	  sense.

	- use builtin function 'get_random_bytes' to generate random buffer.

	- use loff_t instead of off_t. To handle flash >4GB.

	- add another constraints check for writesize.

Alexander Aring (8):
  nandtest: stat ecc per page not per eraseblock
  nandtest: add progressbar instead of offset print
  nandtest: rename command argument p to i
  nandtest: change flash length variable type
  nandtest: use get_random_bytes instead of for loop
  nandtest: clean up code
  nandtest: use loff_t instead off_t
  nandtest: add another constraints check

 commands/nandtest.c | 190 ++++++++++++++++++++++++++++------------------------
 1 file changed, 103 insertions(+), 87 deletions(-)

-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
