Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22b.google.com ([2a00:1450:400c:c09::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYcYh-0006Cf-Or
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 16:45:04 +0000
Received: by mail-wm0-x22b.google.com with SMTP id c200so278740517wme.0
 for <barebox@lists.infradead.org>; Wed, 24 Feb 2016 08:44:43 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 24 Feb 2016 17:44:42 +0100
Message-ID: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: mount fat regression
To: barebox@lists.infradead.org

Hi,

It seems that there is a regression in the mount command for fat
filesystem: if I try to mount a partition that is formatted with
fatfs, I got this error:

mount /dev/mmc2.netcom
mount: No such file or directory

I do not have the problem with a fat formatted with Windows or Linux.

Do you have an idea?

Best regards,

--
Philippe LEDUC
ledphilippe@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
