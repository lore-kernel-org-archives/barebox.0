Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-f172.google.com ([209.85.220.172])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VBqQB-00043E-0j
 for barebox@lists.infradead.org; Tue, 20 Aug 2013 18:12:47 +0000
Received: by mail-vc0-f172.google.com with SMTP id m17so571360vca.3
 for <barebox@lists.infradead.org>; Tue, 20 Aug 2013 11:12:20 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 20 Aug 2013 14:12:20 -0400
Message-ID: <CAJyuEef9RA1PnNX3XPKecAbkBiftXydjaOzT0sOphp4A4arRLw@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: barebox@lists.infradead.org

Thank you Sascha for the additional information in your earlier post!

Your comments on the imx-image method got me looking at the menuconfig
options and I located a simple mistake I had made when changing other
options (while manually editing some files, I had somehow managed to
inadvertently disable the "support internal boot" option).

After fixing this, everything now works as I would expect.

So, I now have the Variscite iMX6 SOM booted directly from SD to the
BareBox shell on UART1.

Now I just have to start pulling in all the other devices and getting
them configured properly!

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
