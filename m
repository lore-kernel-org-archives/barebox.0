Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f173.google.com ([209.85.217.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgZ7f-0003x1-Vb
 for barebox@lists.infradead.org; Sun, 26 May 2013 11:28:26 +0000
Received: by mail-lb0-f173.google.com with SMTP id t10so5899004lbi.4
 for <barebox@lists.infradead.org>; Sun, 26 May 2013 04:27:59 -0700 (PDT)
Received: from localhost.localdomain (ppp37-190-57-89.pppoe.spdop.ru.
 [37.190.57.89])
 by mx.google.com with ESMTPSA id x3sm9982570lag.6.2013.05.26.04.27.57
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sun, 26 May 2013 04:27:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 26 May 2013 15:26:58 +0400
Message-Id: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: MIPS: XBurst: rzx50: enable pbl support
To: barebox@lists.infradead.org

This patch series enables trivial pbl support for Ritmix RZX-50.

[PATCH 1/3] MIPS: rzx50: add trivial board_pbl_start
[PATCH 2/3] MIPS: XBurst: enable pbl support
[PATCH 3/3] MIPS: rzx50: enable pbl in defconfig

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
