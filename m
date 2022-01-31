Delivery-date: Mon, 31 Jan 2022 11:30:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nETxB-001aZa-Qu
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 11:30:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nETxA-0000ia-4q
	for lore@pengutronix.de; Mon, 31 Jan 2022 11:30:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAavD32AMeU2UDNrgu64e4Dx72Wy/aF4LSPreCFZoH4=; b=WkfyQ/WKckT/PH
	dnN2BAFJgaPQcVgJ3MLM1LY/cN9zCYb/PKBZ5l2zh+PWvkHVYTnHaUkISPpIVx8KDotCbmGLQIbS+
	ePeCFO5/Nb7InDYpoy5GPYwP/xES+Al9LuCVJt+tHa7w0VVP2iIriC9KYQEUBW9aJFslFVyEA+vth
	ypNrjVQcB8MK5lXGRdLwughJZA7eH30NWx8KfJmxJ2pX8ID/10Dz3ULhseCUFluWHZaiw74m66/ER
	FwRNdkmPRzm+B1LaTBs+ikEGwmgvCqzJZB0zbDuVYqHGyJNNZ689ZLNnor2EuGd+S28v7EoswsP7y
	YpnsfTcqGZv7WlXGy16w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nETvk-008rGq-5L; Mon, 31 Jan 2022 10:29:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nETvd-008rFo-Vv
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 10:28:59 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nETva-0000A2-Fd; Mon, 31 Jan 2022 11:28:54 +0100
Message-ID: <bebf48ce-c243-3052-0abb-f58ef246fa82@pengutronix.de>
Date: Mon, 31 Jan 2022 11:28:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220131080302.1873443-1-a.fatoum@pengutronix.de>
 <20220131080302.1873443-4-a.fatoum@pengutronix.de>
 <20220131102141.GC23490@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220131102141.GC23490@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_022858_093201_B01B0F24 
X-CRM114-Status: GOOD (  22.08  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
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

On 31.01.22 11:21, Sascha Hauer wrote:
> On Mon, Jan 31, 2022 at 09:03:01AM +0100, Ahmad Fatoum wrote:
>> Import the Linux v5.15 state of the driver to allow easy porting of
>> MIPI-DBI displays like the Ilitek 9431 added in a follow-up commit.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  commands/Kconfig             |  19 ++
>>  commands/Makefile            |   1 +
>>  commands/mipi_dbi.c          | 104 ++++++++
>>  drivers/video/Kconfig        |  14 ++
>>  drivers/video/Makefile       |   1 +
>>  drivers/video/mipi_dbi.c     | 467 +++++++++++++++++++++++++++++++++++
>>  include/spi/spi.h            |  20 ++
>>  include/video/mipi_dbi.h     | 105 ++++++++
>>  include/video/mipi_display.h | 150 +++++++++++
>>  9 files changed, 881 insertions(+)
>>  create mode 100644 commands/mipi_dbi.c
>>  create mode 100644 drivers/video/mipi_dbi.c
>>  create mode 100644 include/video/mipi_dbi.h
>>  create mode 100644 include/video/mipi_display.h
>>
>> diff --git a/commands/Kconfig b/commands/Kconfig
>> index ba8ca5cdebce..2e13a4ed90bd 100644
>> --- a/commands/Kconfig
>> +++ b/commands/Kconfig
>> @@ -1969,6 +1969,25 @@ config CMD_SPI
>>  		  -w BIT	bits per word (default 8)
>>  		  -v		verbose
>>  
>> +config CMD_MIPI_DBI
>> +	bool
>> +	depends on DRIVER_VIDEO_MIPI_DBI && SPI
>> +	select PRINTF_HEXSTR
>> +	prompt "mipi_dbi command"
>> +	help
>> +	  Write/read from MIPI DBI device on SPI bus
>> +
>> +	  Usage: mipi_dbi [-brcmfwv] DATA...
>> +
>> +	  Options:
>> +		  -b BUS	SPI bus number (default 0)
>> +		  -r COUNT	bytes to read
>> +		  -c		chip select (default 0)
>> +		  -m MODE	SPI mode (default 0)
>> +		  -f HZ		max speed frequency, in Hz (default 1 MHz)
>> +		  -w BIT	bits per word (default 8)
>> +		  -v		verbose
> 
> This doesn't match the actual command. Copy-paste from CMD_SPI above?
> 
>> +BAREBOX_CMD_HELP_START(mipi_dbi)
>> +BAREBOX_CMD_HELP_TEXT("Options:")
>> +BAREBOX_CMD_HELP_OPT ("-l\t",  "list all MIPI DBI devices")
>> +BAREBOX_CMD_HELP_OPT ("-d DEVICE",  "select specific device (default is first registered)")
>> +BAREBOX_CMD_HELP_OPT ("-w",  "issue write command")
>> +BAREBOX_CMD_HELP_END
>> +
>> +
>>  config DRIVER_VIDEO_BACKLIGHT
>>  	bool "Add backlight support"
>>  	help
>> @@ -178,4 +181,15 @@ config DRIVER_VIDEO_SIMPLE_PANEL
>>  	  Linux Kernel implementation this one is able to understand display-timings
>>  	  nodes so that it's not necessary to keep a list of all known displays
>>  	  with their corresponding timings in barebox.
>> +
>> +config DRIVER_VIDEO_PANEL_ILITEK_ILI9341
>> +	tristate "Ilitek ILI9341 240x320 QVGA panels"
>> +	depends on OFTREE && SPI
>> +	select DRIVER_VIDEO_MIPI_DBI
>> +	select VIDEO_VPL
>> +	help
>> +	  Say Y here if you want to enable support for Ilitek IL9341
>> +	  QVGA (240x320) RGB panels. support serial & parallel rgb
>> +	  interface.
> 
> This hunk should be in 4/4.

Ouch. Will fix both for v2.

Thanks,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

