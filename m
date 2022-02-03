Delivery-date: Thu, 03 Feb 2022 15:36:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdDS-004jw9-C5
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 15:36:06 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFdDQ-00083F-QS
	for lore@pengutronix.de; Thu, 03 Feb 2022 15:36:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QYMq7zq1hsm4id6uKuPYqv/n/tU9peEIbxQ0dBkJFbk=; b=Mj+ySJlEAIenvJ
	WL4SUHrDybvhOnzI8rYWjj8tVMklB+eP2Or0ezNNY4FUXtxabsaKxgN5YC+M6tKDYFFqnNa0Pet6o
	ez37lQzUpXio6Jo2rfiwDhM4ijd3DclBqg6U6sWzaipikUu37Lj4hT6DNbDXfJriCmorhHOmeZ4QR
	iUhFk+jh5TsP2VSGa7LtBqi5jDwSNbmTKTdHoS6c9WKD+wWsxsaL9aNUYiD/jl0DfrYyLFngyWwTj
	mQMYy8gKIBR6qYZPKBr335ZB/I2oeEQ4s4J4MG3L8DAiUxEbdqRRPif260G926YoQtLj0R7SiAu0U
	uFiZ7a9uYMelxtTL68uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFdCE-001dI6-NP; Thu, 03 Feb 2022 14:34:50 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFdC8-001dG6-Uc
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 14:34:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nFdC6-0007hz-Pp; Thu, 03 Feb 2022 15:34:42 +0100
Message-ID: <38b06d28-3c74-cb54-afe2-dc643f369d1f@pengutronix.de>
Date: Thu, 3 Feb 2022 15:34:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Thorsten Scherer <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org
References: <20220202095554.1103016-1-a.fatoum@pengutronix.de>
 <20220202095554.1103016-4-a.fatoum@pengutronix.de>
 <20220203143052.m2rsapgqzoxelip2@NB142.eckelmann.group>
Content-Language: en-US
In-Reply-To: <20220203143052.m2rsapgqzoxelip2@NB142.eckelmann.group>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_063445_025603_560ABFB8 
X-CRM114-Status: GOOD (  12.98  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] video: add MIPI DBI Type C Option 3 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Thorsten,

On 03.02.22 15:30, Thorsten Scherer wrote:
> Hi Ahmad,
> 
> applying this patch makes menuconfig fail.

Yes.

>> +config CMD_MIPI_DBI
>> +	bool
>> +	depends on DRIVER_VIDEO_MIPI_DBI && SPI
>> +	select PRINTF_HEXSTR
>> +	prompt "mipi_dbi command"
>> +	help
>> +	  write/read from MIPI DBI SPI device
>> +
>> +	  Usage: mipi_dbi [-wld] [REG] [DATA...]
>> +
>> +	  Options:
>> +		  -l		list all MIPI DBI devices
>> +		  -d DEVICE	select specific device (default is first registered)
>> +		  -w		issue write command
>> +
>> +BAREBOX_CMD_START(mipi_dbi)
>> +	.cmd		= do_mipi_dbi,
>> +	BAREBOX_CMD_DESC("write/read from MIPI DBI SPI device")
>> +	BAREBOX_CMD_OPTS("[-wld] [REG] [DATA...]")
>> +	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
>> +	BAREBOX_CMD_HELP(cmd_mipi_dbi_help)
>> +BAREBOX_CMD_END
> 
> Copy and paste error?

Ack. I thought the change is so trivial, I don't need to build test..

I sent out a v3 yesteday with this revised, see
https://lore.barebox.org/barebox/20220202223023.341817-1-a.fatoum@pengutronix.de/

Thanks,
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

