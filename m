Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vnwn9-0000Oj-AC
 for barebox@lists.infradead.org; Tue, 03 Dec 2013 20:42:00 +0000
Received: by mail-la0-f44.google.com with SMTP id ep20so9612068lab.31
 for <barebox@lists.infradead.org>; Tue, 03 Dec 2013 12:41:37 -0800 (PST)
Received: from localhost.localdomain
 (broadband-95-84-154-9.nationalcablenetworks.ru. [95.84.154.9])
 by mx.google.com with ESMTPSA id i8sm37287462lbh.2.2013.12.03.12.41.35
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Dec 2013 12:41:36 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  4 Dec 2013 00:48:53 +0400
Message-Id: <1386103735-30029-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] MIPS: import exception stuff from linux kernel
To: barebox@lists.infradead.org

This patch series imports registers saving code from linux kernel.
Just now it makes possible to dump registers state on exception;
this dump is very valuable for debugging purposes.

[PATCH 1/2] MIPS: add asm-offsets.h generation
[PATCH 2/2] MIPS: import exception registers saving from linux kernel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
