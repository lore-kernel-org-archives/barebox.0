Delivery-date: Fri, 26 Sep 2025 14:58:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v281g-001KsO-1d
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 14:58:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v281f-00076m-Pu
	for lore@pengutronix.de; Fri, 26 Sep 2025 14:58:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=crfparRuziwT+V9aMkvrCZIr5mR62zX8P5xN2Fs/Nig=; b=K1ALe4c0h93n767fPnS92R8Q9i
	p/ymCuzL24+lR4FKdCB60hNyXVxERoy/FfjPyavV/v3obdual0N5tigue08xZBi1gAg9ix8yDWRSd
	Do338RiM2bwKlAxJUPVhonqB4iRBB9F30lUB7DKrlDu4Yvfr29PSSiulzg+dXLmy47COU4BZS0lJY
	AmXCkKWDqra6bdcnSZ7q4qKcHNeaWai8GSfrYiCbHOZYvofQ8e2lW91oJuIsEsuXuiNE9F8apBU5f
	kYYeNF+MeSxarcLwFHJ5WHC/0MhJpUW89LAitcC+wRqmBBWNUTOqF0BE+HmMaU6wcHnXRJDdTkXMy
	7wp8V+1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v281D-00000001MOr-4ApT;
	Fri, 26 Sep 2025 12:57:47 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v281A-00000001ML7-2G1m
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 12:57:47 +0000
Received: from [10.65.159.245] ([185.213.154.213])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58QCvdEY014415
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Fri, 26 Sep 2025 14:57:40 +0200
Message-ID: <355fb5db-8a18-4448-86bb-ef3739a28778@clermont.in2p3.fr>
Date: Fri, 26 Sep 2025 14:57:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250925-boards-enclustra-sa2-add-support-v2-0-6820ad6c6256@clermont.in2p3.fr>
 <20250925-boards-enclustra-sa2-add-support-v2-5-6820ad6c6256@clermont.in2p3.fr>
 <aNaJxjkW5Yuz9Ckt@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <aNaJxjkW5Yuz9Ckt@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_055744_854361_0B9793AE 
X-CRM114-Status: GOOD (  24.34  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/10] boards: enclustra-sa2: read MAC address from
 EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The SoM manual states, p46, bottom:
"The Ethernet MAC address is stored using big-endian byte order (MSB on 
the lowest address). Each module
is assigned two sequential MAC addresses; only the lower one is stored 
in the EEPROM."
https://filesender.renater.fr/?s=download&token=c553d226-7c90-41e3-8c74-96393f1f1edd 


What's the problem with fallback addresses? At least, the board will 
look like an Enclustra product.


Le 26/09/2025 à 14:40, Sascha Hauer a écrit :
> On Thu, Sep 25, 2025 at 01:59:12PM +0200, David Picard wrote:
>> Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
>>
>> ---
>> v1 --> v2:
>>    - Use the atsha204a driver to read the MAC address instead of
>>      board-specific code.
>> ---
>> ---
>>   arch/arm/boards/enclustra-sa2/board.c          | 74 +++++++++++++++++++++++++-
>>   arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi | 16 +++++-
>>   2 files changed, 87 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm/boards/enclustra-sa2/board.c b/arch/arm/boards/enclustra-sa2/board.c
>> index d3117e9a1058738ea541f45b28c6a95184331554..4c2b44252d84c78ed8de5754051d0bf194ce8d02 100644
>> --- a/arch/arm/boards/enclustra-sa2/board.c
>> +++ b/arch/arm/boards/enclustra-sa2/board.c
>> @@ -12,6 +12,12 @@
>>   #include <fcntl.h>
>>   #include <fs.h>
>>   #include <mach/socfpga/cyclone5-regs.h>
>> +#include <net.h>
>> +#include <linux/nvmem-consumer.h>
>> +
>> +/** Enclustra's MAC address vendor prefix is 20:B0:F7 */
>> +#define ENCLUSTRA_PREFIX            (0x20b0f7)
>> +#define MAC_ADDR_NUM_BYTES          (6)
>>   
>>   /*
>>    * Ethernet PHY: Microchip/Micrel KSZ9031RNX
>> @@ -21,14 +27,78 @@ static int phy_fixup(struct phy_device *dev)
>>   	return 0;
>>   }
>>   
>> +/*
>> + * Read the MAC address via the atsha204a driver.
>> + *
>> + * Set two consecutive MAC addresses, as specified by the manufacturer.
>> + */
>> +static void set_mac_addr(void)
>> +{
>> +	uint8_t hwaddr[MAC_ADDR_NUM_BYTES] = { 0, 0, 0, 0, 0, 0 };
>> +	uint32_t hwaddr_prefix;
>> +	u8 *data = NULL;
>> +	static const char * const aliases[] = { "ethernet0" };
>> +	struct device_node *np, *root;
>> +	/* Fallback MAC addresses, used if we can't read from EEPROM: */
>> +	const uint8_t enclustra_ethaddr_fallback1[] = { 0x20, 0xB0, 0xF7, 0x01,
>> +													0x02, 0x03 };
>> +	const uint8_t enclustra_ethaddr_fallback2[] = { 0x20, 0xB0, 0xF7, 0x01,
>> +													0x02, 0x04 };
> Please no fallback addresses. Just skip setting these and barebox will
> use a random MAC.
>
>> +
>> +	root = of_get_root_node();
>> +
>> +	for (int i = 0; i < ARRAY_SIZE(aliases); i++) {
>> +		const char *alias = aliases[i];
>> +		np = of_find_node_by_alias(root, alias);
>> +		if (!np) {
>> +			pr_warn("%s() >> ERROR: can't find alias %s\n", __func__, alias);
>> +			continue;
>> +		}
>> +		data = nvmem_cell_get_and_read(np, "mac-address", MAC_ADDR_NUM_BYTES);
>> +		if (IS_ERR(data)) {
>> +			pr_warn("%s() >> ERROR: can't read NVMEM cell\n", __func__);
>> +			data = NULL;
>> +		}
>> +	}
> You shouldn't need this. of_get_mac_addr_nvmem() called by the net layer
> during startup should handle this for you.
>
>> +	if (!data)
>> +		goto fallback_addr;
>> +
>> +	memcpy(hwaddr, data, MAC_ADDR_NUM_BYTES);
>> +
>> +	debug("MAC address: %02x:%02x:%02x:%02x:%02x:%02x\n",
>> +		  hwaddr[0], hwaddr[1], hwaddr[2],
>> +		  hwaddr[3], hwaddr[4], hwaddr[5]);
>> +
>> +	/* check vendor prefix and set the environment variable */
>> +	hwaddr_prefix = (hwaddr[0] << 16) | (hwaddr[1] << 8) | (hwaddr[2]);
>> +	if (hwaddr_prefix == ENCLUSTRA_PREFIX) {
>> +		eth_register_ethaddr(0, hwaddr);
>> +		hwaddr[5]++;    /* calculate 2nd, consecutive MAC address */
>> +		eth_register_ethaddr(1, hwaddr);
>> +	} else {
>> +		printf("%s() >> ERROR: invalid MAC address vendor prefix,"
>> +			   "using fallback addresses\n", __func__);
>> +		goto fallback_addr;
>> +	}
> Not sure what to do about the consecutive MAC address. There seems to be
> beginning support for this in fixed-cell.yaml, but I can't find an
> implementation for it.
>
>> diff --git a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
>> index fa80b7c63d28d17a24d63ac3ee87531ad320ddb1..55d54d289c81fa4a6d46123bcb93c5fc483485e4 100644
>> --- a/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
>> +++ b/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
>> @@ -76,6 +76,19 @@ atsha204a: atsha204a@64 {
>>   		status = "okay";
>>   		compatible = "atmel,atsha204a";
>>   		reg = <0x64>;
>> +
>> +		nvmem-layout {
>> +		compatible = "fixed-layout";
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
> Indentation wrong here.
>
>> +
>> +			mac_address_0: mac@10 {
>> +				compatible = "mac-base";
>> +				reg = <0x10 0x6>;
>> +				nvmem-cell-cells = <1>;
> must be #nvmem-cell-cells#
>
> Sascha
>



