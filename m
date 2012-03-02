Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay03.ispgateway.de ([80.67.29.7])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S3UH2-0002BJ-MJ
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 15:20:02 +0000
Message-ID: <4F50E556.3040600@ronetix.at>
Date: Fri, 02 Mar 2012 17:20:54 +0200
From: RONETIX - Asen Dimov <dimov@ronetix.at>
MIME-Version: 1.0
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
 <1330618889-11482-3-git-send-email-dimov@ronetix.at>
 <20120301171243.GU12248@game.jcrosoft.org>
In-Reply-To: <20120301171243.GU12248@game.jcrosoft.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] pm9g45: enable USB OHCI host and USB mass storage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On 03/01/2012 07:12 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
...
> diff --git a/arch/arm/configs/pm9g45_defconfig 
> b/arch/arm/configs/pm9g45_defconfig
>> index 5132ea4..1f3c780 100644
>> --- a/arch/arm/configs/pm9g45_defconfig
>> +++ b/arch/arm/configs/pm9g45_defconfig
>> @@ -197,7 +197,7 @@ CONFIG_CMD_CRC_CMP=y
>>   #
>>   # flash
>>   #
>> -CONFIG_CMD_FLASH=y
>> +# CONFIG_CMD_FLASH is not set
> why this?
>
there is no NOR flash on the pm9g45 board.
> Best Regards,
> J.
Regards,
Asen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
