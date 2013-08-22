Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ve0-x229.google.com ([2607:f8b0:400c:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCaOz-0008MT-BH
 for barebox@lists.infradead.org; Thu, 22 Aug 2013 19:18:38 +0000
Received: by mail-ve0-f169.google.com with SMTP id db10so1911467veb.14
 for <barebox@lists.infradead.org>; Thu, 22 Aug 2013 12:18:13 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20130822065552.GU31036@pengutronix.de>
References: <CAJyuEedsHb0h84AKDq_Mttxu_ZG1u+gG94BpzioHyO=JdHiD=A@mail.gmail.com>
 <20130822065552.GU31036@pengutronix.de>
Date: Thu, 22 Aug 2013 15:18:13 -0400
Message-ID: <CAJyuEedyP-VXLieP5hZgTv5Tiihq9h8fecEpuGV4YdYur=Kq8g@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Sascha,

Based on a fairly thorough perusal of the current HEAD from the git, I
am thinking I will implement the Variscite SOM in the following file
structure:

(FYI - the Variscite development kit includes their own carrier board
which is simply referred to in their published schematics as
"MX6CustomBoard", so I am thinking of segmenting things by SOM and
carrier board, much as you have the PhyFlex and its carrier board.)

/arch/arm/configs/variscite_mx6_custom_defconfig
/arch/arm/boards/variscite-mx6-custom/board.c
/arch/arm/boards/variscite-mx6-custom/flash-header.imxcfg
/arch/arm/boards/variscite-mx6-custom/lowlevel.c
/arch/arm/boards/variscite-mx6-custom/Makefile
/arch/arm/boards/variscite-mx6-custom/env/(To Be Determined)
/arch/arm/dts/imx6q-var-custom.dts
/arch/arm/dts/imx6q-var-som.dtsi

Does this fit into your current methodology pretty well?

Thanks!
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
