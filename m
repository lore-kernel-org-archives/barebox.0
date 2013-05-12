Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f182.google.com ([209.85.217.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbcMi-0007O6-1Z
 for barebox@lists.infradead.org; Sun, 12 May 2013 19:55:29 +0000
Received: by mail-lb0-f182.google.com with SMTP id r11so5740997lbv.13
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 12:55:06 -0700 (PDT)
Received: from localhost.localdomain (ppp37-190-57-51.pppoe.spdop.ru.
 [37.190.57.51])
 by mx.google.com with ESMTPSA id jr19sm4527648lab.0.2013.05.12.12.55.01
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sun, 12 May 2013 12:55:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 12 May 2013 23:54:02 +0400
Message-Id: <1368388446-31669-1-git-send-email-antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/4] MIPS: add initial device tree support
To: barebox@lists.infradead.org

v2: fix PPC compilation

[PATCH v2 1/4] of: separate out "generic" memory bank adding
[PATCH v2 2/4] MIPS: add initial device tree support
[PATCH v2 3/4] MIPS: qemu-malta: add device tree support
[PATCH v2 4/4] MIPS: qemu-malta_defconfig: enable OF support

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
