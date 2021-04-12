Delivery-date: Mon, 12 Apr 2021 13:25:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVuhE-00056T-IL
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 13:25:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVuhD-0005wb-Oc
	for lore@pengutronix.de; Mon, 12 Apr 2021 13:25:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rXtn0j7ix265znyF7P1JP/ITMBoKbCXscBR4S7O21r8=; b=JzROdGum5hjTf0OCS/uIMbSyL
	5vhK4QKZ2nw2B6Fv2dYtGinKrYnUSkzhhjo9kpRNZKsTQHrbAIBNbdzG1+FIWoZvuW5sEVGteqctv
	bet+7tHw/OoG1sY6N7KR7Aun4My6vbr44FMkc3Jmv3TKHvH1ZxFIbxnTVLONJlnAifN4mbASupIp7
	RGbsp2koZqCtIHmb8sd2f98lXgFjYig82GtEkBfS9DeEvCcGNRUjrdadxPi4m0LAWoai1wS3Wwtqs
	Snu7fLZ5F3QlxtSKqbO92QLPYKkjqsynh21ZoMP8Z5tnO0bJezCmBRHUf0SLmDAHs7QVCkrK/MTrU
	LnBsMzW9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVug7-006XrP-Ob; Mon, 12 Apr 2021 11:24:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVufz-006Xqv-I9
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 11:24:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=NiSdrw1Ir6dMFGGQ97+qbJ9mspaI4wfWxlM+rGvmylk=; b=w1GKcdqhbi8NZAK8lMYd0ohoCa
 k6v54Ffi/b8Rh+EgycQGHy4Wx89sG9jexLFCIg3bpkwOm5gNESGU3X8RFNP55aDDvxprb+9vjN+BV
 B4STwGxIFLtH6CpO+cm6Wlx911qE2e80D1A1OV0ogwfb9Q2uGCwKEnph4GnqaJEuGSzerpRh4RWBm
 nd5JRXoMwC4f9oPOQ+tO/cEueIK1u87BgjbBSdYm/ZApsh6HdNttV+pdCD2pYHLg2Olp9xhCRO1cN
 q6ppxEBazug7wBEgGzm5X8XNxh8huX36Jh37Iha5LhTiEuCYOWy0iUkgJr04Mt/61iFHxcWtP0g2K
 aEseEerA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVufw-006AgI-PL
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 11:24:18 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVufv-0005oO-DM; Mon, 12 Apr 2021 13:24:15 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>
References: <20210409132035.197739-1-lapeddk@gmail.com>
 <67622809-1252-bfff-d114-ce11f2c7c7dd@pengutronix.de>
 <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <7551e835-6109-2386-6b4b-7224aae675bb@pengutronix.de>
Date: Mon, 12 Apr 2021 13:24:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAKd8=GuJnm0Uz7bXOCoy8YhQ_OL_1nB3Cjq_ERrY3Xo=ynhSjw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_042416_855964_8EB367D9 
X-CRM114-Status: GOOD (  31.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Lars,

On 12.04.21 12:45, Lars Pedersen wrote:
>>> +#define BOARD_RESTART_GPIO IMX_GPIO_NR(7, 12)
>>> +#define TPM_RESET_GPIO IMX_GPIO_NR(3, 8)
>>> +
>>> +static void kamstrup_mx7_tpm_reset(void)
>>> +{
>>> +     imx7_setup_pad(MX7D_PAD_LCD_DATA03__GPIO3_IO8);
>>> +
>>> +     gpio_request(TPM_RESET_GPIO, "tpm-reset");
>>> +     gpio_direction_output(TPM_RESET_GPIO, 1);
>>> +     mdelay(100);
>>> +     gpio_set_value(TPM_RESET_GPIO, 0);
>>> +     mdelay(100);
>>> +     gpio_set_value(TPM_RESET_GPIO, 1);
>>> +     gpio_free(TPM_RESET_GPIO);
>>
>> We are trying to cut down on code that doesn't use the driver model.
>> Couldn't this be represented as a gpio-hog in the device tree or
>> a reset line for the SPI device?
> 
> I can't find anything in the DT binding for the SPI/TPM driver to use
> a reset line.

Proper way would be for this to be added into Linux then,
but that's out of scope for the patch here.

> Can a DT gpio-hog toggle the pin? Don't you need a
> driver for this?

You can't pulse with a gpio-hog. I assumed the TPM is in reset by
default.

> I see the following options:
> 
> 1) gpio-hog with a label and use new gpiolib in board.c.
> 2) gpio-hog and control the pin in a boot script.

If there's no straight-forward way to do it without board code,
it's ok the way it is with one change though: I missed it the first
time, but your board breaks multi-image support because you don't
check whether the initcall is indeed running on your board (See for
example imx_v7_defconfig, which builds over a hundred boards at once).

Easiest way to get this right is to write a board driver.
See arch/arm/boards/lxa-mc1/board.c for an example.

>>> +}
>>> +
>>> +static void __noreturn kamstrup_mx7_board_restart_gpio(struct restart_handler *rst)
>>> +{
>>> +     imx7_setup_pad(MX7D_PAD_ENET1_TX_CLK__GPIO7_IO12);
>>> +
>>> +     gpio_direction_output(BOARD_RESTART_GPIO, 0);
>>> +     mdelay(1);
>>> +     gpio_set_value(BOARD_RESTART_GPIO, 0);
>>
>> I just sent out a patch[1] with a driver implementing the "gpio-restart" device
>> tree binding. Could you test that one and use it here instead?
>>
> 
> I have applied the patches on a master branch (Last patch failed to
> apply but was only watchdog) and the gpio-restart works perfectly.

Thanks for testing! You can add your Tested-By on the patch in question
if you like.

> 
>>> +
>>> +     hang();
>>> +}
>>> +
>>> +static int kamstrup_mx7_concentrator_coredevices_init(void)
>>> +{
>>> +     kamstrup_mx7_tpm_reset();
>>> +     restart_handler_register_fn("board", kamstrup_mx7_board_restart_gpio);
>>> +     barebox_set_model("Kamstrup OMNIA Concentrator");
>>
>> The default model name is "Kamstrup OMNIA Flex Concentrator".
>> If that's too long, you could override /model in the barebox device tree.
>> With the changes suggested above, you could drop board.c then altogether.
>>
> 
> I'll move this into the device tree or delete it entirely.

Great. :-)


Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

