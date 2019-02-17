Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvRQK-0006hl-4x
 for barebox@lists.infradead.org; Sun, 17 Feb 2019 18:44:21 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id E47EB80426
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2019 19:44:16 +0100 (CET)
Date: Sun, 17 Feb 2019 19:44:15 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190217184415.GA12478@ravnborg.org>
References: <20190217161609.11305-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190217161609.11305-1-sam@ravnborg.org>
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
Subject: Re: [PATCH v2 0/9] at91: Support PMC clock bindings
To: Barebox List <barebox@lists.infradead.org>

Hi all.

> Sam Ravnborg (9):
>       clocksource: Do not mix depends and select for ATMEL_PIT
>       arm: at91: fix at91_configure_usart6 warning
>       arm: at91: add SOC_SAMA5{D3,D4}
>       clk: at91: add at91sam9260
>       clk: at91: add at91sam9rl
>       clk: at91: add at91sam9x5
>       clk: at91: add sama5d2

>       clk: at91: add sama5d4
This patch is bogus, fails to build.

>       clk: at91: update to new bindings
Likewise, at least part of it.

Both issues discovered while working on adding DT support
to sama5d4 xplained board.

Will repost an updated series when I have it fixed.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
