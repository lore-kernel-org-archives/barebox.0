Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x22a.google.com ([2607:f8b0:4001:c05::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIkXo-0000VD-Fg
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 22:02:33 +0000
Received: by mail-ig0-x22a.google.com with SMTP id mw1so119615610igb.1
 for <barebox@lists.infradead.org>; Mon, 11 Jan 2016 14:02:12 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160112005532.479fce9d@zacate>
References: <20160112005532.479fce9d@zacate>
Date: Mon, 11 Jan 2016 20:02:11 -0200
Message-ID: <CAOMZO5BJMXM+JA9wYxEOJU=1kUAGmAcaM7JFLn6_qxfXnC4smQ@mail.gmail.com>
From: Fabio Estevam <festevam@gmail.com>
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
Subject: Re: [BUG] barebox won't boot from SD card on iMX233-OLinuXino-MAXI
To: Peter Mamonov <pmamonov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 11, 2016 at 7:55 PM, Peter Mamonov <pmamonov@gmail.com> wrote:
> At least nothing is printed to the Debug UART.
>
> git-bisect points to the following patch:
> 4d70da6 ARM: MXS: power-init: Add parameters to mx28_power_init()
>
> Reverting this patch fixes the issue.

Does this help? Haven't tested it:

--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -154,7 +154,7 @@ static noinline void imx23_olinuxino_init(void)

        pr_debug("initializing power...\n");

-       mx23_power_init(0, 1, 0);
+       mx23_power_init(0, 0, 1);

        pr_debug("initializing SDRAM...\n");

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
