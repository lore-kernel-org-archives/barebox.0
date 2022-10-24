Delivery-date: Mon, 24 Oct 2022 11:58:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omuEV-000WAB-Sb
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 11:58:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omuET-0001yq-RY
	for lore@pengutronix.de; Mon, 24 Oct 2022 11:58:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x4yfVg3o2eLa94TSm0jG7VmNTFcnzd/VkC8b5C+T/s8=; b=TmS3+gJiiaO4meTYSQhW6murix
	dOGkBpKdZpJpEobfEjTYHl/Oy6/IPUNJlFhBK4S/oR9w6zL0LP9TjpArYo9quug/0AQFZ2TVFDZ/0
	znn12/eYG4Uw7CvK1hzjvWQ1ku2ypQVAsNM3uX33fukrazNWLSbTMz9rrZx0W7/xaiZguuDl5rqwq
	1sKSczBR1OTT+TR+vCQg1XmSe+66SyC9JNYM4mEMQHAFoYm1yDkHjF/LCkTxyYdrsbYctDPkSLCTC
	MSQVyTLyBU388u1SdiXw3qUdbsRPPyb0o2n5f3Ph+1LJQWgTVdOQPlkBHSJ5N1PuX+wqV2t9Hn8LY
	/hYt/c+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuCq-000YKS-FT; Mon, 24 Oct 2022 09:57:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omuBx-000Y4c-C5
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 09:56:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1omuBw-0001jQ-16; Mon, 24 Oct 2022 11:56:20 +0200
Message-ID: <ec96966a-1e59-9da3-103f-a8e023e590dc@pengutronix.de>
Date: Mon, 24 Oct 2022 11:56:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, jzi@pengutronix.de
References: <20221020152853.3021713-1-a.fatoum@pengutronix.de>
 <20221024081242.GG6702@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221024081242.GG6702@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_025621_624143_130BF65F 
X-CRM114-Status: GOOD (  29.81  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] aiodev: port Linux imx7d-adc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 24.10.22 10:12, Sascha Hauer wrote:
>> +/* ADC register */
>> +#define IMX7D_REG_ADC_CH_A_CFG1			0x00
>> +#define IMX7D_REG_ADC_CH_A_CFG2			0x10
>> +#define IMX7D_REG_ADC_CH_B_CFG1			0x20
>> +#define IMX7D_REG_ADC_CH_B_CFG2			0x30
>> +#define IMX7D_REG_ADC_CH_C_CFG1			0x40
>> +#define IMX7D_REG_ADC_CH_C_CFG2			0x50
>> +#define IMX7D_REG_ADC_CH_D_CFG1			0x60
>> +#define IMX7D_REG_ADC_CH_D_CFG2			0x70
> 
> These defines are unused.

I know. I just copied them from the kernel driver. Will drop
for v2.

>> +#define IMX7D_REG_ADC_CH_SW_CFG			0x80
>> +#define IMX7D_REG_ADC_TIMER_UNIT		0x90
>> +#define IMX7D_REG_ADC_DMA_FIFO			0xa0
>> +#define IMX7D_REG_ADC_FIFO_STATUS		0xb0
>> +#define IMX7D_REG_ADC_INT_SIG_EN		0xc0
>> +#define IMX7D_REG_ADC_INT_EN			0xd0
>> +#define IMX7D_REG_ADC_INT_STATUS		0xe0
>> +#define IMX7D_REG_ADC_CHA_B_CNV_RSLT		0xf0
>> +#define IMX7D_REG_ADC_CHC_D_CNV_RSLT		0x100
>> +#define IMX7D_REG_ADC_CH_SW_CNV_RSLT		0x110
>> +#define IMX7D_REG_ADC_DMA_FIFO_DAT		0x120
>> +#define IMX7D_REG_ADC_ADC_CFG			0x130
>> +
>> +#define IMX7D_REG_ADC_CHANNEL_CFG2_BASE		0x10
>> +#define IMX7D_EACH_CHANNEL_REG_OFFSET		0x20
> 
> Better something like:
> 
> #define IMX7D_REG_ADC_CFG1(ch)          ((ch) * 0x20)
> #define IMX7D_REG_ADC_CFG2(ch)		((ch) * 0x20 + 0x10)

Done.

>> +	struct imx7d_adc_analogue_core_clk adc_analogure_clk;
> 
> s/adc_analogure_clk/adc_analogue_clk/
> 
>> +	u32 i;
> 
> unsigned int?

Done.

>> +	status = readl(info->regs + IMX7D_REG_ADC_INT_STATUS);
>> +	if (status & IMX7D_REG_ADC_INT_STATUS_CHANNEL_INT_STATUS) {
>> +		ret = imx7d_adc_read_data(info, channel);
> 
> Returning the adc data from a function named _isr in conjunction with
> using a variable named 'ret' for both error codes and adc data makes the
> code unnecessarily hard to follow. Could you refactor a bit to make this
> more readable?

I will rename imx7d_adc_read_data to __imx7d_adc_read_data and
imx7d_adc_isr to imx7d_adc_read_data.

>> +static int imx7d_adc_read_raw(struct aiochannel *chan, int *data)
>> +{
>> +	struct imx7d_adc *info = container_of(chan->aiodev, struct imx7d_adc, aiodev);
>> +	u64 raw64, start;
>> +	u32 channel;
>> +	int ret;
>> +
>> +	channel = chan->index & 0x03;
> 
> You are registering 16 channels, but here you limit to a maximum of four
> channels.

I am looking at the Linux driver and I don't see how channels
4-15 could possibly do something 0-3 don't already do.

The hardware has 16 input channels, which can be routed to one
of the 4 logical channels, but the driver always muxes only
the first 4 input channels. I'll reduce the number of channels to 4.

> 
>> +	imx7d_adc_channel_set(info, channel);
>> +
>> +	start = get_time_ns();
>> +	do {
>> +		if (is_timeout(start, IMX7D_ADC_TIMEOUT_NSEC)) {
>> +			ret = -ETIMEDOUT;
>> +			break;
>> +		}
>> +
>> +		ret = imx7d_adc_isr(info, channel);
>> +	} while (ret == -EAGAIN);
>> +
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	raw64 = ret;
>> +	raw64 *= info->vref_uv;
>> +	raw64 = div_u64(raw64, 1000);
>> +	*data = div_u64(raw64, (1 << 12));
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct of_device_id imx7d_adc_match[] = {
>> +	{ .compatible = "fsl,imx7d-adc", },
>> +	{ /* sentinel */ }
>> +};
>> +
>> +static void imx7d_adc_power_down(struct imx7d_adc *info)
>> +{
>> +	u32 adc_cfg;
>> +
>> +	adc_cfg = readl(info->regs + IMX7D_REG_ADC_ADC_CFG);
>> +	adc_cfg |= IMX7D_REG_ADC_ADC_CFG_ADC_CLK_DOWN |
>> +		   IMX7D_REG_ADC_ADC_CFG_ADC_POWER_DOWN;
>> +	adc_cfg &= ~IMX7D_REG_ADC_ADC_CFG_ADC_EN;
>> +	writel(adc_cfg, info->regs + IMX7D_REG_ADC_ADC_CFG);
>> +}
>> +
>> +static int imx7d_adc_enable(struct imx7d_adc *info)
>> +{
>> +	struct device_d *dev = info->dev;
>> +	int ret;
>> +
>> +	ret = regulator_enable(info->vref);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret,
>> +				     "Can't enable adc reference top voltage\n");
>> +
>> +	ret = clk_enable(info->clk);
>> +	if (ret) {
>> +		regulator_disable(info->vref);
>> +		return dev_err_probe(dev, ret, "Could not enable clock.\n");
>> +	}
>> +
>> +	imx7d_adc_hw_init(info);
>> +
>> +	ret = regulator_get_voltage(info->vref);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "can't get vref-supply value\n");
>> +
>> +	info->vref_uv = ret;
>> +	return 0;
>> +}
>> +
>> +static u32 imx7d_adc_get_sample_rate(struct imx7d_adc *info)
>> +{
>> +	u32 analogue_core_clk;
>> +	u32 core_time_unit = info->adc_feature.core_time_unit;
>> +	u32 tmp;
>> +
>> +	analogue_core_clk = IMX7D_ADC_INPUT_CLK / info->pre_div_num;
>> +	tmp = (core_time_unit + 1) * 6;
>> +
>> +	return analogue_core_clk / tmp;
>> +}
>> +
>> +static void imx7d_adc_devinfo(struct device_d *dev)
>> +{
>> +	struct imx7d_adc *info = dev->priv;
>> +
>> +	if (info->aiodev_info)
>> +		info->aiodev_info(dev);
>> +
>> +	printf("Sample Rate: %u\n", imx7d_adc_get_sample_rate(info));
>> +}
>> +
>> +static int imx7d_adc_probe(struct device_d *dev)
>> +{
>> +	struct aiodevice *aiodev;
>> +	struct imx7d_adc *info;
>> +	int ret, i;
>> +
>> +	info = xzalloc(sizeof(*info));
>> +
>> +	info->dev = dev;
>> +
>> +	info->clk = clk_get(dev, "adc");
>> +	if (IS_ERR(info->clk))
>> +		return dev_err_probe(dev, PTR_ERR(info->clk), "Failed getting clock\n");
>> +
>> +	info->vref = regulator_get(dev, "vref");
>> +	if (IS_ERR(info->vref))
>> +		return dev_err_probe(dev, PTR_ERR(info->vref),
>> +				     "Failed getting reference voltage\n");
>> +
>> +	info->regs = dev_request_mem_region(dev, 0);
>> +	if (IS_ERR(info->regs))
>> +		return dev_err_probe(dev, PTR_ERR(info->regs),
>> +				     "Failed to get memory region\n");
>> +
>> +	dev->priv = aiodev = &info->aiodev;
>> +
>> +	aiodev->num_channels = 16;
>> +	aiodev->hwdev = dev;
>> +	aiodev->read = imx7d_adc_read_raw;
>> +	aiodev->channels = xmalloc(aiodev->num_channels * sizeof(aiodev->channels[0]));;
> 
> Use xzalloc to make sure all fields are initialized.
> 
> One semicolon too much at the end of this line.

Ok.

> 
>> +
>> +	for (i = 0; i < aiodev->num_channels; i++) {
>> +		aiodev->channels[i] = &info->aiochan[i];
>> +		info->aiochan[i].unit = "mV";
>> +	}
>> +
>> +	imx7d_adc_feature_config(info);
>> +
>> +	ret = imx7d_adc_enable(info);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = aiodevice_register(aiodev);
>> +	if (ret < 0)
>> +		return dev_err_probe(dev, ret, "Failed to register aiodev\n");
>> +
>> +	info->aiodev_info = aiodev->dev.info;
>> +	aiodev->dev.info = imx7d_adc_devinfo;
>> +
>> +	return 0;
>> +}
>> +
>> +static void imx7d_adc_disable(struct device_d *dev)
>> +{
>> +	struct imx7d_adc *info = dev->priv;
> 
> dev->priv is set to &info->aiodev above.

Yes. I changed that in the fixup. Will squash.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


