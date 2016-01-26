Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qg0-x232.google.com ([2607:f8b0:400d:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aO0V3-0005av-Ur
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 10:05:26 +0000
Received: by mail-qg0-x232.google.com with SMTP id b35so132180884qge.0
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 02:05:05 -0800 (PST)
MIME-Version: 1.0
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 26 Jan 2016 11:04:45 +0100
Message-ID: <CAGm1_kv9-A_HrydZRODtzf-00deEoakxY7r8nSEmO6DcnjGZag@mail.gmail.com>
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
Subject: scripts/remote: make clean leftovers
To: barebox <barebox@lists.infradead.org>

After performing make distclean I've discovered following files being removed:

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

        deleted:    scripts/remote/__init__.py
        deleted:    scripts/serial/tools/__init__.py
        deleted:    scripts/serial/urlhandler/__init__.py

What should actually happen to these files?

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
