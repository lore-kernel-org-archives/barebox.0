Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD98T-0003TL-Pw
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:19:22 +0000
Received: by qcsu28 with SMTP id u28so4068647qcs.36
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 00:19:18 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 16 Sep 2012 09:19:18 +0200
Message-ID: <CAJfOKBxhsR6yQ0RSUgxYUayepN46g12fdUmerfS+4rnyvtRD3g@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Patch a file in the next branch
To: barebox <barebox@lists.infradead.org>

Hi,

In order to fix fat detection, I need to patch ff.c and filetype.c.
However, ff.c is already patched in next (I need to modify the version
already in next).
Should I generate my patches against next or master ?

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
