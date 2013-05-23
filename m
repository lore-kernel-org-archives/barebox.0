Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfViE-0005Dp-0l
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:37:46 +0000
Received: from mailout-de.gmx.net ([10.1.76.17]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0Lsuw8-1UUBth1CFW-012XRz for
 <barebox@lists.infradead.org>; Thu, 23 May 2013 15:37:23 +0200
Message-ID: <519E1B8E.1000502@rempel-privat.de>
Date: Thu, 23 May 2013 15:37:18 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
MIME-Version: 1.0
References: <1369209220-14529-1-git-send-email-linux@rempel-privat.de>
 <1369209220-14529-3-git-send-email-linux@rempel-privat.de>
 <20130523131341.GN32299@pengutronix.de>
In-Reply-To: <20130523131341.GN32299@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] cfi_flash: size_ratio should not be 0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 23.05.2013 15:13, schrieb Sascha Hauer:
> On Wed, May 22, 2013 at 09:53:40AM +0200, Oleksij Rempel wrote:
>> We will get size = 0 if size_ratio = 0
>>
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> ---
>>   drivers/mtd/nor/cfi_flash.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
>> index 4b4e29d..85e96ce 100644
>> --- a/drivers/mtd/nor/cfi_flash.c
>> +++ b/drivers/mtd/nor/cfi_flash.c
>> @@ -371,7 +371,8 @@ static ulong flash_get_size (struct flash_info *info)
>>   		size_ratio = info->portwidth / info->chipwidth;
>>   		/* if the chip is x8/x16 reduce the ratio by half */
>>   		if ((info->interface == FLASH_CFI_X8X16)
>> -		    && (info->chipwidth == FLASH_CFI_BY8)) {
>> +		    && (info->chipwidth == FLASH_CFI_BY8)
>> +		    && (size_ratio != 1)) {
>>   			size_ratio >>= 1;
>>   		}
>
> Could you elaborate in which constellation this happens?

It happens in my case with MX29LV320MBTC attached to atheros ar2313. 
Both of them support x8 and x16 modes, but attached only in x8. Plus 
this chip enables LSB in 8 bit mode.

-- 
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
