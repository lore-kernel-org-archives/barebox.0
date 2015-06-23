Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7NDm-0003DZ-J4
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 12:22:35 +0000
Received: by wguu7 with SMTP id u7so8040330wgu.3
 for <barebox@lists.infradead.org>; Tue, 23 Jun 2015 05:22:11 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55894326.5000107@teledigit.eu>
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de>
 <55894326.5000107@teledigit.eu>
Date: Tue, 23 Jun 2015 14:22:11 +0200
Message-ID: <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: =?UTF-8?B?R3nDtnJneSBLw7Z2ZXNkaQ==?= <kgy@teledigit.eu>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

You better ask in some Yocto-specific mailing list, this isn't really
the problem of Barebox anymore. :-)   The soft-float option might come
from one of your inherited configuration files.

Soft-Float is definitely not optimal for the i.MX6, because this one
has FPU commands.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
