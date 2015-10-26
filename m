Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x229.google.com ([2607:f8b0:400e:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZqiRH-0001vM-NR
 for barebox@lists.infradead.org; Mon, 26 Oct 2015 14:07:58 +0000
Received: by pasz6 with SMTP id z6so189646300pas.2
 for <barebox@lists.infradead.org>; Mon, 26 Oct 2015 07:07:34 -0700 (PDT)
References: <1445629784-2024-1-git-send-email-eric@nelint.com>
 <20151026065331.GS14476@pengutronix.de>
From: Eric Nelson <eric@nelint.com>
Message-ID: <562E33A4.8070802@nelint.com>
Date: Mon, 26 Oct 2015 07:07:32 -0700
MIME-Version: 1.0
In-Reply-To: <20151026065331.GS14476@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx6-mmdc: fix automatic power down enable in write level
 calibration
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 10/25/2015 11:53 PM, Sascha Hauer wrote:
> Hi Eric,
> 
> On Fri, Oct 23, 2015 at 12:49:44PM -0700, Eric Nelson wrote:
>> Bit 0 of the MAPSR register controls auto power down.
>>
>> Explicitly clear this bit instead of reserved bit when
>> exiting from mmdc_do_write_level_calibration().
>>
>> Signed-off-by: Eric Nelson <eric@nelint.com>
> 
> Looks good, applied. Did this bug have any practical impacts?
> 

I found the mistake when reviewing the code and didn't run it.
From the manual, bit 3 is listed as reserved with a default
value of zero, so that should have no effect.

Not clearing bit zero should only prevent the MMDC from
invoking self-refresh.

From the RM:
	Automatic Power Saving Disable. When the value of PSD is
	"0" (i.e automatic power saving is enabled) then the PST is
	activated and MMDC will enter automatically to self-refresh
	while the number of idle cycle reached.

I'm reviewing this code for possible inclusion into a U-Boot
SPL-based DDR calibration routine and haven't run it.

> Sascha
> 
>> ---
>>  arch/arm/mach-imx/imx6-mmdc.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
>> index 64fb624..40fe0cf 100644
>> --- a/arch/arm/mach-imx/imx6-mmdc.c
>> +++ b/arch/arm/mach-imx/imx6-mmdc.c
>> @@ -103,9 +103,9 @@ int mmdc_do_write_level_calibration(void)
>>  	val |= 0x00005500;
>>  	writel(val, (P0_IPS + MDPDC));
>>  
>> -	/* enable Adopt power down timer: */
>> +	/* enable auto power down timer: */
>>  	val = readl(P0_IPS + MAPSR);
>> -	val &= 0xfffffff7;
>> +	val &= ~1;
>>  	writel(val, (P0_IPS + MAPSR));
>>  
>>  	/* clear CON_REQ */
>> -- 
>> 2.6.2
>>
>>
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
