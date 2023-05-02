Delivery-date: Tue, 02 May 2023 12:05:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmso-002CEJ-5D
	for lore@lore.pengutronix.de; Tue, 02 May 2023 12:05:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptmsm-0001J1-86
	for lore@pengutronix.de; Tue, 02 May 2023 12:05:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kw4hV9Qg0QV4sWvVJqoSuo+MkXPnZDa/IRmb4v77YUg=; b=gl3FD4EOcOpj4mINDm0nEb1ec7
	I23GduZw7v+LlYJQ9jGFMyMoXW+SeCaIbu0say/fD3iqVVdCg7FlHfFcTFE2wpPp98R5X2E3X/it7
	yDxsdFx/oWrKr8frc4m49U8rYChcnr73fu2O1pRXI13EfGMMllimcAkAOk7QGMyFzS65YNBRWNedd
	sAthzS/eieYXH7HdYiZtZAVIn5f0OrUYW+lUo1RpXpCFqNApVDi+Y5AaDi+HdFSgxJDiov0CrwNqn
	4ZcTFJSfZyiJWCvUGE1mRQDRdU//3kiWzznZVCmdWvaGcqcq7NRU40vqJaEGj8F4zBzZust6HrLpx
	coA98KTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmri-000rlB-0j;
	Tue, 02 May 2023 10:04:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmre-000rkO-2W
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 10:04:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ptmrd-000126-Ae; Tue, 02 May 2023 12:04:05 +0200
Message-ID: <239f2cda-c2ff-e746-cffb-52760fc03d53@pengutronix.de>
Date: Tue, 2 May 2023 12:04:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20230424115908.115474-1-ahmad@a3f.at>
 <20230424115908.115474-2-ahmad@a3f.at>
 <20230502092247.GV13543@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230502092247.GV13543@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_030406_815629_C2CBA0F1 
X-CRM114-Status: GOOD (  18.24  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] test: self: add basic regulator selftest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 02.05.23 11:22, Sascha Hauer wrote:
> On Mon, Apr 24, 2023 at 01:59:08PM +0200, Ahmad Fatoum wrote:
>> This simple test verifies registration and always-on enabling and disabling
>> work as they should. It may be extended in future to support more
>> complex cases.
>>
>> +static const struct of_device_id test_regulator_of_match[] = {
>> +	{ .compatible = "barebox,regulator-self-test" },
>> +	{ /* sentintel */ },
>> +};
>> +
>> +static struct driver regulator_test_driver = {
>> +	.name = "regulator-test",
>> +	.probe = regulator_probe,
>> +	.of_match_table = test_regulator_of_match,
>> +};
>> +
>> +static struct device_d *dev;
>> +
>> +static void test_regulator(void)
>> +{
>> +	extern char __dtbo_test_regulator_start[];
>> +	struct device_node *overlay;
>> +	int ret;
>> +
>> +	if (!dev) {
>> +		ret = platform_driver_register(&regulator_test_driver);
>> +		if (ret)
>> +			return;
>> +
>> +		overlay = of_unflatten_dtb(__dtbo_test_regulator_start, INT_MAX);
>> +		of_overlay_apply_tree(of_get_root_node(), overlay);
>> +		of_probe();
> 
> This needs CONFIG_OF_OVERLAY_LIVE enabled to work. Should we make sure
> this option is enabled before running this test?

No, it doesn't. The overlay has no phandle references into the barebox
live tree, so it can be applied without symbols. This is similar to the
QEMU overlay, where the QEMU-provided DT also lacks symbols.

Cheers,
Ahmad

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



