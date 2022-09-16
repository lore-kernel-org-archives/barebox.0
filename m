Delivery-date: Fri, 16 Sep 2022 19:28:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZF8e-006tMc-9W
	for lore@lore.pengutronix.de; Fri, 16 Sep 2022 19:28:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZF8c-00020d-PF
	for lore@pengutronix.de; Fri, 16 Sep 2022 19:28:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XYix0IF4D9hpZZEMb14BC2sD+IJDtm1QmNLp1D6zNqk=; b=3yYu+y7PVDeAqRX5numtuMXDjK
	6WFZXS2JSgAtcLarmtpq7XP05ZYr0jrJzeegfQqhK61jnIL5rEvpDB9mjrehvllv7X0zHFN4bmORa
	QKFcRxJFxv08dUoN8m9Jeuv+ULDufiookqJ4uFQ56v4IPeSUQYs4ncE/bC0CtJvOM9JuESO4Rjatr
	xMqfr/eHW/XqGL0wI3dyoWNVXkONmUQeEayXXcUFd8VWADIp3krpzOuyGAtwo0drIiCeuk0myTMPW
	YfUwbyaaATHXcmoJf+BZhzBCpgD84IhaTI8iQ79ZlswHkN3kcni9NxTOeoGcOU+oP7Do0KUWD24wk
	oaB+tYUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZF6U-00FPzD-M2; Fri, 16 Sep 2022 17:26:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZF6P-00FPxF-QQ
	for barebox@lists.infradead.org; Fri, 16 Sep 2022 17:26:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oZF6L-0001qH-Fz; Fri, 16 Sep 2022 19:26:05 +0200
Message-ID: <89dbfa91-7d49-bd56-4728-42ad4d33dd6a@pengutronix.de>
Date: Fri, 16 Sep 2022 18:26:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_102609_873504_DB6C687E 
X-CRM114-Status: GOOD (  27.35  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: fitimage: Allow match against config node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Hans,

On 16.09.22 15:36, Hans Christian Lønstad wrote:
> Support fitimage configuration nodes without populated compatible fields
> 
> Yocto fit image recipe does not populate the compatible field
> in the generated ITS file configuration nodes.
> Barebox is thus only able to load the default configuration
> preventing the use of variant based bootloader update bundles.
> 
> If the compatible match fails, fall through using a global
> variable boot.fitnode allowing a match against the configuration
> node name.
> 
> This allows variant boards to pick the correct configuration.

Thanks for your patch.

> 
> ---
> common/image-fit.c | 18 ++++++++++++++++++
> 1 file changed, 18 insertions(+)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index a410632d70..f92e813a8b 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -7,6 +7,7 @@
> 
> #define pr_fmt(fmt) "FIT: " fmt
> #include <common.h>
> +#include <environment.h>
> #include <init.h>
> #include <bootm.h>
> #include <libfile.h>
> @@ -663,6 +664,7 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
> struct device_node *barebox_root;
> const char *machine;
> int ret;
> + const char *config_node;
> 
> barebox_root = of_get_root_node();
> if (!barebox_root)
> @@ -680,6 +682,22 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
> }
> }
> 
> + /*
> + * If the match against compatible in config node does not match
> + * (or is missing as in Yocto fitimage recipe)
> + * check for matching node name using global.boot.fitnode
> + */
> + config_node = getenv("global.boot.fitnode");
> + if (config_node) {
> + for_each_child_of_node (conf_node, child) {
> + if (strcmp(child->name, config_node) == 0) {
> + *unit = child->name;
> + pr_info("matching node name unit '%s' found\n", *unit);
> + return 0;
> + }
> + }
> + }

Whitespace is broken (git send-email normally does the correct thing).

But are you aware that you can have your boot-target like:

bootm /dev/mmc0.fit@configuration1

and that configuration1 will be chosen? Does this already cover
your use case? If it does, a documentation patch adding this
information at the place where you didn't find it is surely
a welcome alternate contribution. ;)

(also generally speaking magicvars need to be documented with
 BAREBOX_MAGICVAR).

Cheers,
Ahmad


> +
> default_unit:
> pr_info("No match found. Trying default.\n");
> if (of_property_read_string(conf_node, "default", unit) == 0)


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


