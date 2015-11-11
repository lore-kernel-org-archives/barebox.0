Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQfw-0001YZ-Ej
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 08:22:41 +0000
Received: by lbbcs9 with SMTP id cs9so12702254lbb.1
 for <barebox@lists.infradead.org>; Wed, 11 Nov 2015 00:22:18 -0800 (PST)
Date: Wed, 11 Nov 2015 11:45:44 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151111114544.919f53a3ab3b37305c83363f@gmail.com>
In-Reply-To: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
References: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/3] MIPS: ath79: skip pbl lowlevel init if running from
 RAM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 11 Nov 2015 04:09:12 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Hi Sascha!

Please don't apply this patchseries.

I'm working on cosmetic fixes.
I'll send the v2 in a few hours.


> Antony Pavlov (2):
>   MIPS: black-swift: skip pbl lowlevel init if running from RAM
>   MIPS: tplink-mr3020: skip pbl lowlevel init if running from RAM
> =

> Oleksij Rempel (1):
>   MIPS: pbl: add pbl_blt macro
> =

>  arch/mips/boards/black-swift/include/board/board_pbl_start.h |  3 +++
>  .../boards/tplink-mr3020/include/board/board_pbl_start.h     |  3 +++
>  arch/mips/include/asm/pbl_macros.h                           | 12 ++++++=
++++++
>  3 files changed, 18 insertions(+)
> =

> -- =

> 2.6.2
> =



-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
