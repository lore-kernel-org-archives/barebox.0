Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x22d.google.com ([2607:f8b0:400d:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XZ3eW-0000xB-5E
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 20:04:04 +0000
Received: by mail-qc0-f173.google.com with SMTP id x13so1999128qcv.4
 for <barebox@lists.infradead.org>; Tue, 30 Sep 2014 13:03:39 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 30 Sep 2014 22:03:39 +0200
Message-ID: <CACSabZ_nSs8L6yHn6Pz3quNvYQSDWiB0FWOYow1vyp9akRp0PA@mail.gmail.com>
From: luigi origa <luigi.origa@gmail.com>
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
Subject: Little bug
To: barebox@lists.infradead.org

I found a little bug in your code.

The structure "fb_videomode" contains a field "display_flags" but
selecting "video svga" or "video a70"  the code initialize the struct
using the field ".flag". Obviously the compiler in this case, exit
with an error.

Luigi

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
