Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOINb-0004Q5-8X
 for barebox@lists.infradead.org; Sat, 26 Oct 2019 09:29:04 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 11so4620887wmk.0
 for <barebox@lists.infradead.org>; Sat, 26 Oct 2019 02:29:02 -0700 (PDT)
Received: from ?IPv6:2001:470:26:ba5:652b:2255:3415:9336?
 ([2001:470:26:ba5:652b:2255:3415:9336])
 by smtp.gmail.com with ESMTPSA id o25sm5605585wro.21.2019.10.26.02.29.00
 for <barebox@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 26 Oct 2019 02:29:00 -0700 (PDT)
From: "aanno.trash" <aanno.trash@gmail.com>
Message-ID: <180b0932-d2ab-7142-d76a-8937eb76d99c@gmail.com>
Date: Sat, 26 Oct 2019 11:28:59 +0200
MIME-Version: 1.0
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
Subject: Uefi version with 'bare metal' drivers?
To: barebox@lists.infradead.org

Well,

I tried the uefi version of barebox on my lenovo miix 320. It is
working, but it has the same problem like all the boot loaders I tried
before: it does not recognize a SDCard that can be inserted into the
display. On a running linux, it is recognized as 2nd eMMC (**not** as a
USB device).

The uefi included with the device has the problem as well. So this is my
question: When using the uefi version of barebox, is it possible to to
include a 'bare metal' eMMC driver? If it is, how to do that?

Kind regards,

aanno2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
