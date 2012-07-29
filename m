Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvWtv-0004PV-HH
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 17:03:31 +0000
Received: by yenr9 with SMTP id r9so4329471yen.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 10:03:25 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 29 Jul 2012 23:03:25 +0600
Message-ID: <CA+LT+-T+8VD5ONbWyX+OQxk2MX221Z-vstimqpYKh3onY+5K3Q@mail.gmail.com>
From: Alexey Galakhov <agalakhov@gmail.com>
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
Subject: Barebox hangs after boot
To: barebox@lists.infradead.org

Hello,

While debugging S5PV210 code I ran into the following problem. Barebox
starts, the barebox command line appears on the console but does not
react to keypresses. I found no obvious dependence on the config
settings.

What may be the cause of this problem and how do I debug it?

Regards,
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
