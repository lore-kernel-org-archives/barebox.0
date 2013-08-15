Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x230.google.com ([2a00:1450:4008:c01::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9tXU-0002jz-4V
 for barebox@lists.infradead.org; Thu, 15 Aug 2013 09:08:16 +0000
Received: by mail-bk0-f48.google.com with SMTP id my13so140226bkb.7
 for <barebox@lists.infradead.org>; Thu, 15 Aug 2013 02:07:50 -0700 (PDT)
Message-ID: <520C9A63.3050706@gmail.com>
Date: Thu, 15 Aug 2013 11:07:47 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1376551741-16438-1-git-send-email-s.hauer@pengutronix.de>
 <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376551741-16438-8-git-send-email-s.hauer@pengutronix.de>
Content-Type: multipart/mixed; boundary="------------050302010903050805080708"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 7/8] Set model and hostname at boardlevel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------050302010903050805080708
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/15/13 09:29, Sascha Hauer wrote:
> With multiboard support the compiletime generated BOARDINFO string
> gets more and more meaningless. This removes it from Kconfig and
> replaces it with a variable that can be set at boardlevel.
>
> Also many boards have a standard setting for the hostname in the
> environment. This patch also moves the standard to C code by calling
> barebox_set_hostname().
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
[...]
> diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
> index 24720d5..b1d148d 100644
> --- a/arch/arm/mach-mvebu/armada-370-xp.c
> +++ b/arch/arm/mach-mvebu/armada-370-xp.c
> @@ -100,6 +100,9 @@ static int armada_370_xp_init_soc(void)
>   {
>   	unsigned long phys_base, phys_size;
>
> +	barebox_set_model("Marvell Armada");

Marvell Armada SoC family comprises more than just 370 and XP. I suggest
to name it "Marvell Armada 370/XP" instead. More Armada SoCs may add to
this init, but right now it's only those two.

> +	barebox_set_hostname("armada");

No need to change this though.

> +
>   	armada_370_xp_init_clocks();
>   	clkdev_add_physbase(tclk, (unsigned int)ARMADA_370_XP_TIMER_BASE, NULL);
>   	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
> diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
> index 2ec175a..d114675 100644
> --- a/arch/arm/mach-mvebu/kirkwood.c
> +++ b/arch/arm/mach-mvebu/kirkwood.c
> @@ -85,6 +85,9 @@ static int kirkwood_init_soc(void)
>   {
>   	unsigned long phys_base, phys_size;
>
> +	barebox_set_model("Marvell kirkwood");

typo s/kirk/Kirk/

> +	barebox_set_hostname("kirkwood");
> +
>   	kirkwood_init_clocks();
>   	clkdev_add_physbase(tclk, (unsigned int)KIRKWOOD_TIMER_BASE, NULL);
>   	add_generic_device("orion-timer", DEVICE_ID_SINGLE, NULL,

Also, corresponding changes for Dove are missing (diff below).

Sebastian

--------------050302010903050805080708
Content-Type: text/x-patch;
 name="bb-boardname.dove.diff"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="bb-boardname.dove.diff"

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 16ee116..bb69e64 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -121,6 +121,9 @@ static int dove_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
 
+	barebox_set_model("Marvell Dove");
+	barebox_set_hostname("dove");
+
 	dove_remap_mc_regs();
 	dove_init_clocks();
 	clkdev_add_physbase(tclk, (unsigned int)DOVE_TIMER_BASE, NULL);

--------------050302010903050805080708
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------050302010903050805080708--
