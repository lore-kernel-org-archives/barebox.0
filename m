Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X58vf-0006gu-Tf
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 07:38:08 +0000
Date: Thu, 10 Jul 2014 09:37:37 +0200 (CEST)
From: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Message-ID: <alpine.DEB.2.10.1407100925060.3269@9VTHT2J-D520>
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
Subject: Re: AM335x MLO images broken
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Hello Sascha,

Sascha Hauer <s.hauer@...> writes:

> Looks like a side effect of:
> 
> | commit d1ec6fb0c9bb66939e85964c2f5214b117c78ecf
> | Author: Sascha Hauer <s.hauer@...>
> | Date:   Mon Jul 7 14:13:14 2014 +0200
> | 
> |     ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS
> |     
> |     The MLO/SPI image options have no effect with OMAP_MULTI_BOARDS
> |     enabled, so do not show them.
> |     
> |     Signed-off-by: Sascha Hauer <s.hauer@...>
> 
> I haven't looked whether there's a better solution than reverting the
> commit.
> 

your patch disables generation of MLO/SPI image, if OMAP_MULTI_BOARDS is 
enabled. But shouldn't it be vice versa? I mean, both boards 
(MACH_BEAGLEBONE and MACH_PCM051), which are dependend on 
OMAP_MULTI_BOARDS, need a working MLO image. From my point of view it 
makes sense to ENable the OMAP_BUILD_IFT along with OMAP_MULTI_BOARDS.

Best regards,
 Rolf

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
