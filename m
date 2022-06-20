Delivery-date: Mon, 20 Jun 2022 10:18:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Cbr-007sx7-PY
	for lore@lore.pengutronix.de; Mon, 20 Jun 2022 10:18:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3Cbr-0001mi-Rm
	for lore@pengutronix.de; Mon, 20 Jun 2022 10:18:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7e6T1uN+dvY6gCVu6LHFpX9bT1VVEJbJpfedyc6k/A=; b=Yb8JA974pCHfPt
	9f1FBODWipwPyNPivG4gr85ZgOXZxHD9w7BKYoHLJLTRh6lJ6z+pyF+jSu4ugc0/kzB1wjeHguD57
	n5AbofjnhN2xl/qwkZDcTCoHJPPp1dPHTA7S+XNPHUjzpNMQlMPB/v6CdST/h9S8ePNCGZFDueD8+
	CnPu+itjBjnr95hRakYruVjm1Dv6nlPDOOAs8L6uLg81eXDJbB6igmXbY541RFke9++K9+imaXRgX
	uJmbRg2Ht8DRARAHyCx7fjf59CnzgzaBCP0EeBxgF4VTImoKRI+/1yAjWbbugtu5MUiqI/MEYg+Le
	ch9y4cwHggwQ6R/EkIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Cac-00GqtA-E4; Mon, 20 Jun 2022 08:16:54 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3CaX-00Gqrv-Af
	for barebox@lists.infradead.org; Mon, 20 Jun 2022 08:16:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=C7e6T1uN+dvY6gCVu6LHFpX9bT1VVEJbJpfedyc6k/A=;
	b=NLFWEWC7HCy+PLxRP5TVsA/6/IKhlkKzZrMoMZsApIdw6DIsACGKwRokZn/n8udNdjBjuKDpbHNL5
	 XeJWQBLjtlEBn2NwJnUbB+DZejIuqMeYkHVkLswfh9DZh1wfuJvOLulKR2ThJ8zZ23eQM1dpW5r2qi
	 deM13ULVP4Y6XliQPys/rGFU1RsnApvIeKWiMML5NXzW/BChmosvl8XEjBybQeTxoHi3f9Q11NFfz7
	 yRBKJjPkk5Q2jg3BfzN3FY0LAidG969iUZfQLGcWxp/CszfxGwb6RbR+WlOZj/qtQGUBDY+Z509Mrq
	 yg2yMZ8vbJPkkdv17hh/P6yjT2YWMFA==
X-MSG-ID: 525e6e5b-f071-11ec-9051-0050569d2c73
MIME-Version: 1.0
Date: Mon, 20 Jun 2022 10:16:44 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Marco Felsch <m.felsch@pengutronix.de>, Sascha Hauer
 <sha@pengutronix.de>, Oleksij Rempel <linux@rempel-privat.de>, Oleksij
 Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org,
 david@protonic.nl
In-Reply-To: <ead464cf-803f-5795-4269-7ff4d15cf9ed@pengutronix.de>
References: <20220616131114.214628-1-robin@protonic.nl>
 <20220616131114.214628-2-robin@protonic.nl>
 <20220616162833.GD28995@pengutronix.de>
 <85d82f53-5290-613f-2214-924dc2135cb6@rempel-privat.de>
 <20220617065757.GC1615@pengutronix.de>
 <20220617084437.fvfwaxaxxediqm3t@pengutronix.de>
 <ead464cf-803f-5795-4269-7ff4d15cf9ed@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <57ffd31813f339c84242f90226e36361@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_011649_974167_AE5489D7 
X-CRM114-Status: GOOD (  18.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/9] ARM: boards: protonic-imx6: prtvt7 hardkey inputs are
 active low
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmand,

On 2022-06-20 09:51, Ahmad Fatoum wrote:
> Hello,
> 
> On 17.06.22 10:44, Marco Felsch wrote:
>> On 22-06-17, Sascha Hauer wrote:
>>>> Or, it is active low and your patch is correct :D
>>> 
>>> If they are, can we add a comment or _N suffix to the names?
>> 
>> Does barebox not have gpiod? The board code just should check if it is
>> active or not. Whatever active means in this case.
> 
> There is gpiod_get(), but there's also gpio-keys support. See
> drivers/input/specialkeys.c for an example on how to register an input
> notifier.

I dont think I can use gpiod_get() due to the device tree format for
gpio-keys. I didn't know about the input_notifier framework. I'll check
if I can get it to work with that as-well.


> Robin, did you test this works with barebox v2022.05.0?
> I'd have assumed this to be broken by f349b662674e ("gpio: allocate dynamic
> gpio numbers top down"). Especially, with deep probe, you can't and 
> shouldn't
> depend on GPIO expanders numbering being fixed. If you use an input 
> notifier,
> you should sidestep this issue altogether.

I just notiched that as well. I was just making some changes including the
feadback from this thread:

diff --git a/arch/arm/boards/protonic-imx6/board.c 
b/arch/arm/boards/protonic-imx6/board.c
index cdbb8debe6..374ec11364 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -635,17 +635,24 @@ static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv 
*priv)
         return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
  }

-#define GPIO_KEY_F6     (0xe0 + 5)
-#define GPIO_KEY_CYCLE  (0xe0 + 2)
-
  static int prt_imx6_init_prtvt7(struct prt_imx6_priv *priv)
  {
-       /* This function relies heavely on the gpio-pca9539 driver */
+       int gpio_f6, gpio_cycle;
+       struct device_d *gpio_expander;
+
+       gpio_expander = get_device_by_name("pca95390");
+       if (!gpio_expander) {
+               dev_err(priv->dev, "Can't find pca9539 gpio expander\n");
+               return -ENODEV;
+       }
+
+       gpio_cycle = gpio_get_num(gpio_expander, 2);
+       gpio_request_one(gpio_cycle, GPIOF_ACTIVE_LOW | GPIOF_DIR_IN, 
"Cycle");

-       gpio_direction_input(GPIO_KEY_F6);
-       gpio_direction_input(GPIO_KEY_CYCLE);
+       gpio_f6 = gpio_get_num(gpio_expander, 5);
+       gpio_request_one(gpio_f6, GPIOF_ACTIVE_LOW | GPIOF_DIR_IN, "F6");

-       if (gpio_get_value(GPIO_KEY_CYCLE) && gpio_get_value(GPIO_KEY_F6))
+       if (!(gpio_is_active(gpio_cycle) && gpio_is_active(gpio_f6)))
                 priv->no_usb_check = 1;

         return 0;

I'll make a proposal with the input_notifier aswell.

- Robin


