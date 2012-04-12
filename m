Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp3-g21.free.fr ([2a01:e0c:1:1599::12])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPKn-0003M3-NX
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:05:34 +0000
Received: from eb-e6520 (unknown [82.233.81.124])
 by smtp3-g21.free.fr (Postfix) with ESMTP id 33E40A6176
 for <barebox@lists.infradead.org>; Thu, 12 Apr 2012 21:05:27 +0200 (CEST)
Date: Thu, 12 Apr 2012 21:05:26 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120412210526.326ac54a@eb-e6520>
In-Reply-To: <1334247624-24896-6-git-send-email-shc_work@mail.ru>
References: <1334247624-24896-1-git-send-email-shc_work@mail.ru>
 <1334247624-24896-6-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] i.MX51: Add PAD_CTL_HYS bit to SD_CLK pads
To: barebox@lists.infradead.org

Hi,

Le Thu, 12 Apr 2012 20:20:23 +0400,
Alexander Shiyan <shc_work@mail.ru> a =E9crit :
> -#define MX51_PAD_SD1_CLK__SD1_CLK			IOMUX_PAD(0x7A0, 0x398, 0x10, 0x0, 0=
, MX51_SDHCI_PAD_CTRL)
> +#define MX51_PAD_SD1_CLK__SD1_CLK			IOMUX_PAD(0x7A0, 0x398, 0x10, 0x0, 0=
, MX51_SDHCI_PAD_CTRL | PAD_CTL_HYS)

why is this change needed ?

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
