Delivery-date: Sat, 17 Sep 2022 12:15:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZUrK-007auu-0p
	for lore@lore.pengutronix.de; Sat, 17 Sep 2022 12:15:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oZUrI-00084m-Aj
	for lore@pengutronix.de; Sat, 17 Sep 2022 12:15:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kkpQwtzMrCoUG3UjJ/IH+adh7LJw9U4LPT7RPJEd+3Y=; b=aLtEGtpkORkIH/Rvr5H7plk5N4
	S4l8xN/ECrlu5ZLIaX2l6ayKtc5363joGNyPBBQwnkEGec/M7GCFNvycUbYTJhb+3yrdc9n5LOOxS
	EbOnmqUFYGQRc9u9yEjShb/N4HVIM1kO2qYyGbcAFx+WD4xvJZFrwSvmylk/3zAoCP6tuhCrKnUFD
	XbOsALyF8IxJ7R2mWvJdYHCPvbDa98gmA5/jXv5/biKBxyvpgcevvpvnkZdaxRW/68PFlCBEOm7y0
	4255Tcs2BdM6NJY2PYOn7IYq1DNbuMliE4aoPqBp70lQ+d0YVyyLEegDqQ5MTp0Wc7mj5H59o+z10
	kEhzP8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZUp1-0055M9-Pz; Sat, 17 Sep 2022 10:13:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZUox-0055Iw-4t
	for barebox@lists.infradead.org; Sat, 17 Sep 2022 10:13:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oZUoq-0007x2-9X; Sat, 17 Sep 2022 12:13:04 +0200
Message-ID: <4bb50cb7-d7a0-9562-b990-24231358aa1c@pengutronix.de>
Date: Sat, 17 Sep 2022 11:13:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: =?UTF-8?Q?Hans_Christian_L=c3=b8nstad?= <hcl@datarespons.no>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
 Lucas Stach <lst@pengutronix.de>
References: <EC219BAA-D034-4B47-8377-286110B1329C@datarespons.no>
 <89dbfa91-7d49-bd56-4728-42ad4d33dd6a@pengutronix.de>
 <F1338C87-37DC-4F61-8E4B-9E1E4B7E8CC0@datarespons.no>
Content-Language: en-US
In-Reply-To: <F1338C87-37DC-4F61-8E4B-9E1E4B7E8CC0@datarespons.no>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_031311_213691_1F9A25C2 
X-CRM114-Status: GOOD (  27.94  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: fitimage: Allow match against config node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Hans,

On 17.09.22 07:51, Hans Christian Lønstad wrote:
> Thank you for pointing out the existing option, it resolves the issue.

:)

> Regarding patch submissions:
> Are GitHub pull requests an option? Actually have one pending that is needed on USB for IMX8MP.

Mailing list is the usual contribution method, but Sascha has accepted
Github PRs in the past.

Regarding your existing DWC3 PR, you will need to reword the commit message
to make this acceptable for barebox inclusion:

1) All contributions must have a Signed-off-by certifying origin, see
   https://developercertificate.org/

2) Commit message needs to be useful on its own. The Github issue can
   be referenced, but should not be the only documentation

3) Commit title needs to be adapted to convention for the driver.


Here's my suggestion:

  usb: dwc3: support snps,dis-u2-freeclk-exists-quirk for i.MX8MP

  The driver currently configures the Synopsis USB 2.0 PHY to
  unconditionally provide a free-running PHY clock. This must
  be disabled on the i.MX8MP as well as RK3328 and RK3399 SoC,
  because the clock control input is inactive.

  The upstream Linux binding specifies a boolean DT property
  snps,dis-u2-freeclk-exists-quirk to disable the free-running
  PHY clock and the property is already used in the i.MX8MP
  DT, that barebox imports from upstream. Thus implement the
  binding for barebox. This fixes barebox USB host support on the
  i.MX8MP, which previously triggered a BUG() when enumerating[1].

  Link: https://github.com/saschahauer/barebox/issues/13 [1]
  Fixes: e213627bbe1d ("usb: dwc3: of-simple: add i.MX8MP compatible")
  Signed-off-by: Author Name <author.email@example.com> 


If you squash this commit message into your PR, feel free to
append my

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Also Cc'ing Lucas, as I am wondering why you ran into the issue, but Lucas
apparently didn't.

Cheers,
Ahmad

> Hans Christian
> 
>> 16. sep. 2022 kl. 19:26 skrev Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> Hello Hans,
>>
>> On 16.09.22 15:36, Hans Christian Lønstad wrote:
>>> Support fitimage configuration nodes without populated compatible fields
>>>
>>> Yocto fit image recipe does not populate the compatible field
>>> in the generated ITS file configuration nodes.
>>> Barebox is thus only able to load the default configuration
>>> preventing the use of variant based bootloader update bundles.
>>>
>>> If the compatible match fails, fall through using a global
>>> variable boot.fitnode allowing a match against the configuration
>>> node name.
>>>
>>> This allows variant boards to pick the correct configuration.
>>
>> Thanks for your patch.
>>
>>>
>>> ---
>>> common/image-fit.c | 18 ++++++++++++++++++
>>> 1 file changed, 18 insertions(+)
>>>
>>> diff --git a/common/image-fit.c b/common/image-fit.c
>>> index a410632d70..f92e813a8b 100644
>>> --- a/common/image-fit.c
>>> +++ b/common/image-fit.c
>>> @@ -7,6 +7,7 @@
>>>
>>> #define pr_fmt(fmt) "FIT: " fmt
>>> #include <common.h>
>>> +#include <environment.h>
>>> #include <init.h>
>>> #include <bootm.h>
>>> #include <libfile.h>
>>> @@ -663,6 +664,7 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
>>> struct device_node *barebox_root;
>>> const char *machine;
>>> int ret;
>>> + const char *config_node;
>>>
>>> barebox_root = of_get_root_node();
>>> if (!barebox_root)
>>> @@ -680,6 +682,22 @@ static int fit_find_compatible_unit(struct device_node *conf_node,
>>> }
>>> }
>>>
>>> + /*
>>> + * If the match against compatible in config node does not match
>>> + * (or is missing as in Yocto fitimage recipe)
>>> + * check for matching node name using global.boot.fitnode
>>> + */
>>> + config_node = getenv("global.boot.fitnode");
>>> + if (config_node) {
>>> + for_each_child_of_node (conf_node, child) {
>>> + if (strcmp(child->name, config_node) == 0) {
>>> + *unit = child->name;
>>> + pr_info("matching node name unit '%s' found\n", *unit);
>>> + return 0;
>>> + }
>>> + }
>>> + }
>>
>> Whitespace is broken (git send-email normally does the correct thing).
>>
>> But are you aware that you can have your boot-target like:
>>
>> bootm /dev/mmc0.fit@configuration1
>>
>> and that configuration1 will be chosen? Does this already cover
>> your use case? If it does, a documentation patch adding this
>> information at the place where you didn't find it is surely
>> a welcome alternate contribution. ;)
>>
>> (also generally speaking magicvars need to be documented with
>> BAREBOX_MAGICVAR).
>>
>> Cheers,
>> Ahmad
>>
>>
>>> +
>>> default_unit:
>>> pr_info("No match found. Trying default.\n");
>>> if (of_property_read_string(conf_node, "default", unit) == 0)
>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


