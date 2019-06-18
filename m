Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAZd-0007dT-Vy
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 09:38:44 +0000
Received: by mail-lf1-x12b.google.com with SMTP id b11so8745947lfa.5
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 02:38:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Jun 2019 12:38:31 +0300
Message-Id: <20190618093833.2005-1-antonynpavlov@gmail.com>
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
Subject: [RFC 0/2] MIPS: fix code relocation routine
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

At the moment MIPS relocation code routine has at least two problems:

1. the first problem is fixed in the 'MIPS: relocate_code: fix barebox image size'
   patch from this patchseries.

2. relocate_code() calls flush_cache_all().
   flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data fields.
   These data fields are initialized in r4k_cache_init().

   However in the current implementation the r4k_cache_init() function
   is called __AFTER__ relocate_code().

   This cache problem can't be discovered via qemu.

Antony Pavlov (2):
  MIPS: lib/Makefile: fix whitespaces
  MIPS: relocate_code: fix barebox image memcpy() size

 arch/mips/lib/Makefile |  4 ++--
 arch/mips/lib/reloc.c  | 11 +++++------
 2 files changed, 7 insertions(+), 8 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
