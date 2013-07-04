Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x229.google.com ([2a00:1450:4008:c01::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UuhcV-0005Ai-91
 for barebox@lists.infradead.org; Thu, 04 Jul 2013 11:22:40 +0000
Received: by mail-bk0-f41.google.com with SMTP id jc3so583385bkc.14
 for <barebox@lists.infradead.org>; Thu, 04 Jul 2013 04:22:17 -0700 (PDT)
Message-ID: <51D55AE5.5030105@gmail.com>
Date: Thu, 04 Jul 2013 13:22:13 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1372789849-12194-7-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372936808-728-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372936808-728-2-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/2] spi: add Marvell MVEBU SoC SPI driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 07/04/13 13:20, Sebastian Hesselbarth wrote:
> This adds support for the SPI controller found on Marvell MVEBU SoCs
> (Dove, Kirkwood, Discovery Innovation, and Armada 370/XP). Current driver
> is DT only. Compatible strings are provided for Orion (common denominator),
> Armada 370/XP and Dove SoCs.
>
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Changelog:
> v1->v2:
> - use dev_dbg instead of debug (Suggested by Sascha Hauer)
> - check for valid reg base (Suggested by Sascha Hauer)
> - whitespace fixes (Reported by Sascha Hauer)
>
> v2->v3:
> - use clk_get instead of clk_lookup (Reported by Sascha Hauer)
[...]
> +#if defined(ARCH_ARMADA_370) || defined(ARCH_ARMADA_XP)

Forgot to respect the comment given earlier on those.. will resend v4.
Sorry for that.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
