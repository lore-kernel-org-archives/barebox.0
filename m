Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8kGF-00020D-OQ
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 13:05:44 +0000
Received: by mail-pl1-x641.google.com with SMTP id y6so1017653plt.3
 for <barebox@lists.infradead.org>; Thu, 20 Aug 2020 06:05:41 -0700 (PDT)
Date: Thu, 20 Aug 2020 21:05:25 +0800
From: Du Huanpeng <u74147@gmail.com>
Message-ID: <20200820130523.GA11870@tkernel.org>
References: <1597818799-11414-1-git-send-email-u74147@gmail.com>
 <20200820071319.GW13023@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820071319.GW13023@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: update for loongson1 board
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,
> 
> I already applied this version before you sent v2, but as far as I can
> see only the commit message has changed, right?
Hi, only commit message changed. :)

by the way, what happen to these targets:
  zbarebox.bin
  zbarebox

are all broken with these defconfigs
  ath79_defconfig
  xburst_defconfig
  loongson-ls1b_defconfig

--8<----
  LDS     arch/mips/pbl/zbarebox.lds
  LZO     arch/mips/pbl/piggy.lzo
  AS      arch/mips/pbl/piggy.lzo.o
  LD      arch/mips/pbl/zbarebox
arch/mips/pbl/zbarebox.lds:5: undefined symbol `MALLOC_BASE' referenced in expression
/home/du/o/barebox/arch/mips/pbl/Makefile:38: recipe for target 'arch/mips/pbl/zbarebox' failed
make[1]: *** [arch/mips/pbl/zbarebox] Error 1
/home/du/o/barebox/arch/mips/Makefile:114: recipe for target 'zbarebox' failed
make: *** [zbarebox] Error 2
--8<---

Du Huanpeng


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
