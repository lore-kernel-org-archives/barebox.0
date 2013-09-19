Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f182.google.com ([209.85.217.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMXoS-0005w7-Nz
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 06:34:05 +0000
Received: by mail-lb0-f182.google.com with SMTP id c11so7432637lbj.41
 for <barebox@lists.infradead.org>; Wed, 18 Sep 2013 23:33:26 -0700 (PDT)
Date: Thu, 19 Sep 2013 10:30:52 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20130919103052.556af05778b3c5c8ca2ebc63@gmail.com>
In-Reply-To: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
References: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: Re: [PATCH 0/3] Enable devicetree for Ritmix RZX-50 board
To: Dmitry Smagin <dmitry.s.smagin@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 18 Sep 2013 09:20:30 +0400
Dmitry Smagin <dmitry.s.smagin@gmail.com> wrote:

Acked-by: Antony Pavlov <antonynpavlov@gmail.com>

>   This series of patches enables devicetree using for mips-based
> Ritmix RZX-50 board. Besides that it fixes missing dependency
> and linking error when enabling OF_BAREBOX_DRIVER which actually
> needs ENV_HANDLING to be activated.
> =

> [PATCH 1/3] Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER
> [PATCH 2/3] MIPS: rxz50: add initial devicetree support
> [PATCH 3/3] MIPS: rzx50_defconfig: enable devicetree
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
