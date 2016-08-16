Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua0-x230.google.com ([2607:f8b0:400c:c08::230])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZZxW-0005ge-JW
 for barebox@lists.infradead.org; Tue, 16 Aug 2016 08:42:55 +0000
Received: by mail-ua0-x230.google.com with SMTP id 74so111021129uau.0
 for <barebox@lists.infradead.org>; Tue, 16 Aug 2016 01:42:34 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
References: <CABDcavbrkt2q3cQ5Tzi3d0pU+Pm3v4S3OGzFo_aG_SNgmEgOnA@mail.gmail.com>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Date: Tue, 16 Aug 2016 10:42:32 +0200
Message-ID: <CABDcavYP7m5BvVk1Ki=uZe7GdSp8RGwMu_kCV-SQO2+0kb5_NQ@mail.gmail.com>
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
Subject: Fwd: Shouldn't boot_board be called from boot instead of init?
To: barebox@lists.infradead.org

Hello all,

Currently, for defaultenv v1, the /env/bin/boot_board script is called
from /env/bin/init.

However this means boot_board will not be run if booting manually (by
running 'boot' from the barebox console).

Shouldn't this script be called from /env/bin/boot instead? If a board
needs any specific stuff to be done when booting, this probably
applies both when autobooting and when booting manually (otherwise,
anything that only applies only when autobooting could also be done
from init_board instead of boot_board).

Opinions?

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
