Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fptup-00025o-1p
 for barebox@lists.infradead.org; Wed, 15 Aug 2018 11:24:41 +0000
Received: by mail-pf1-x432.google.com with SMTP id a26-v6so403381pfo.4
 for <barebox@lists.infradead.org>; Wed, 15 Aug 2018 04:24:28 -0700 (PDT)
From: marc@cpdesign.com.au
Date: Wed, 15 Aug 2018 21:24:06 +1000
Message-Id: <20180815112409.25725-1-marc@cpdesign.com.au>
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
Subject: ARM: dts: udpates for am335x-bone-common
To: barebox@lists.infradead.org

A short while ago I submitted a patch to add support for the baseboard
eeprom on beaglebones. It was suggested to just update the dts(i)
to use the kernel versions in dts/src/arm, so here is my attempt at
that. I'm a little bit worried that these changes might break
something.. (works for me :) 

The main build issue was the the PBL build uses some variants of .dtsi which
removes some nodes which the kernel dts/dtsi rely on.

Cheers,
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
