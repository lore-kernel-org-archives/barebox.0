Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qw0-f42.google.com ([209.85.216.42])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RQ2zT-0000Fl-Jy
 for barebox@lists.infradead.org; Mon, 14 Nov 2011 20:18:52 +0000
Received: by qadc16 with SMTP id c16so6187261qad.15
 for <barebox@lists.infradead.org>; Mon, 14 Nov 2011 12:18:31 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 14 Nov 2011 21:18:30 +0100
Message-ID: <CAJfOKBx4y+6ViUTeZdktAcyYsNvTRaNxdLH3LcYjrE+qYfsGPw@mail.gmail.com>
From: Franck JULLIEN <franck.jullien@gmail.com>
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
Subject: Problem with long files name in FAT
To: barebox@lists.infradead.org

Hi,

Have you ever had any problem with the long files names option of the
FAT filesystem ?

If I use the long files names, the output of ls command is blank.
However, If I undef the
FS_FAT_LFN section of dir_find in ff.c it works....

I don't know how FAT works and I would like to avoid digging into this
piece of code :) So
if anyone has an idea, please help.

Regards,
Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
