Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpbhS-000868-Lx
 for barebox@lists.infradead.org; Tue, 05 May 2015 12:11:47 +0000
Received: by lbbuc2 with SMTP id uc2so126465572lbb.2
 for <barebox@lists.infradead.org>; Tue, 05 May 2015 05:11:22 -0700 (PDT)
Date: Tue, 5 May 2015 15:16:35 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150505151635.dcf30490fbe737e024aa83f6@gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: #define dma_alloc dma_alloc
To: Marc Kleine-Budde <mkl@pengutronix.de>, Lucas Stach <dev@lynxeye.de>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, All!

Just out of curiosity, why we need "#define dma_alloc dma_alloc" in dma-rel=
ated header files?

E.g.
  =

  barebox$ git grep "#define dma_alloc dma_alloc"
  arch/arm/include/asm/dma.h:#define dma_alloc dma_alloc
  arch/nios2/include/asm/dma-mapping.h:#define dma_alloc dma_alloc

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
