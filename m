Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZddc-0006g9-4Z
 for barebox@lists.infradead.org; Tue, 07 May 2013 08:52:44 +0000
Received: by mail-lb0-f181.google.com with SMTP id w10so440482lbi.26
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 01:52:21 -0700 (PDT)
Received: from localhost.localdomain
 (broadband-95-84-154-9.nationalcablenetworks.ru. [95.84.154.9])
 by mx.google.com with ESMTPSA id n5sm5386973lbe.15.2013.05.07.01.52.16
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Tue, 07 May 2013 01:52:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 12:51:24 +0400
Message-Id: <1367916686-12975-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: MIPS: xburst: use common serial code
To: barebox@lists.infradead.org

This commit series moves the UART code for Ingenic SoCs
from board level to machine level. So the code
can be reused for different boards or even
different Ingenic SoCs.

[PATCH 1/2] MIPS: xburst: use common serial code
[PATCH 2/2] MIPS: rzx50: switch to common mach-xburst serial code

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
