Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-f174.google.com ([209.85.213.174])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWOyi-0007wN-Ap
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 14:55:17 +0000
Received: by mail-yb0-f174.google.com with SMTP id w194so114979774ybe.0
 for <barebox@lists.infradead.org>; Wed, 25 Jan 2017 06:54:55 -0800 (PST)
MIME-Version: 1.0
From: Haris Papadopoulos <haris@amberbox.com>
Date: Wed, 25 Jan 2017 14:53:54 +0000
Message-ID: <CACmkAZGnw=pCsaRQ9RRa2kBoUEDbEHzV6QJpii6Q+e25VrW02Q@mail.gmail.com>
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
Subject: How to renew eth0 settings without doing a reset
To: barebox@lists.infradead.org

Hi,

I am trying to configure a static ip address for my barebox.

I edit the file /env/network/eth0 and then I do saveenv.

Then I do ifup eth0. There is no ifdown command in barebox.

I noticed that the only way to make the new ip address effective is to
reset the board. However, I will be doing this process with a script
or maybe remotely.

Therefore, I would like to make the new address effective without a
reset. How is that possible?

Thanks
Haris

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
