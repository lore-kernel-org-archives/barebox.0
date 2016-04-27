Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-x229.google.com ([2607:f8b0:4002:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avHZT-0006tz-KZ
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 04:59:32 +0000
Received: by mail-yw0-x229.google.com with SMTP id g133so50093535ywb.2
 for <barebox@lists.infradead.org>; Tue, 26 Apr 2016 21:59:11 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 26 Apr 2016 21:59:10 -0700
Message-ID: <CABx9NuS+pLjNeUrjNCo19zvmLQGoqUiFi8eh7_gxV8P_2hmoUA@mail.gmail.com>
From: Russell Haley <russ.haley@gmail.com>
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
Subject: Building on PC-BSD 10.3
To: barebox@lists.infradead.org

Hello,

Just for a hoot I thought I'd build barebox on PC-BSD 10.3. I followed
these directions:

https://github.com/jcobham/i.MX53-kernel-images/wiki/How-To:-Build-Barebox-for-IMX53

and replaced "make" with "gmake". Here is the output:

http://pastebin.com/AawYq4bR

It seems to be missing endian.h?

Any input would be stellar.

Thanks,

Russ

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
